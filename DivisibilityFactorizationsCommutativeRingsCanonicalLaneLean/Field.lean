import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean.IntegralDomain
import HautevilleHouse.DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean.EuclideanDomain

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure Field (R : IntegralDomain) where
  inverse : R → R
  multiplicativeInverse : ∀ a, a ≠ 0 → a * inverse a = 1
  multiplicativeInverseTerm : multiplicativeInverse
  euclideanDomain : EuclideanDomain R

structure FieldEvidence {R : IntegralDomain} (F : Field R) where
  multiplicativeInverseClosed : F.multiplicativeInverse
  euclideanDomainClosed : EuclideanDomainClosed F.euclideanDomain

def FieldClosed {R : IntegralDomain} (F : Field R) : Prop :=
  F.multiplicativeInverse ∧ EuclideanDomainClosed F.euclideanDomain

theorem field_closed_from_evidence {R : IntegralDomain} (F : Field R)
    (E : FieldEvidence F) : FieldClosed F := by
  exact And.intro E.multiplicativeInverseClosed E.euclideanDomainClosed

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
