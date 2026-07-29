import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean.IntegralDomain
import HautevilleHouse.DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean.PID

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure EuclideanDomain (R : IntegralDomain) where
  euclideanFunction : R → ℕ
  divisionAlgorithm : ∀ a b, b ≠ 0 → ∃ q r, a = b * q + r ∧ (r = 0 ∨ euclideanFunction r < euclideanFunction b)
  divisionAlgorithmTerm : divisionAlgorithm
  pid : PID R

structure EuclideanDomainEvidence {R : IntegralDomain} (E : EuclideanDomain R) where
  divisionAlgorithmClosed : E.divisionAlgorithm
  pidClosed : PIDClosed E.pid

def EuclideanDomainClosed {R : IntegralDomain} (E : EuclideanDomain R) : Prop :=
  E.divisionAlgorithm ∧ PIDClosed E.pid

theorem euclidean_domain_closed_from_evidence {R : IntegralDomain} (E : EuclideanDomain R)
    (E' : EuclideanDomainEvidence E) : EuclideanDomainClosed E := by
  exact And.intro E'.divisionAlgorithmClosed E'.pidClosed

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
