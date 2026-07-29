import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean.IntegralDomain

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure UFD (R : IntegralDomain) where
  irreducibleFactorization : Prop
  uniquenessUpToUnits : Prop
  irreducibleFactorizationTerm : irreducibleFactorization
  uniquenessUpToUnitsTerm : uniquenessUpToUnits

structure UFDEvidence {R : IntegralDomain} (U : UFD R) where
  irreducibleFactorizationClosed : U.irreducibleFactorization
  uniquenessUpToUnitsClosed : U.uniquenessUpToUnits

def UFDClosed {R : IntegralDomain} (U : UFD R) : Prop :=
  U.irreducibleFactorization ∧ U.uniquenessUpToUnits

theorem ufd_closed_from_evidence {R : IntegralDomain} (U : UFD R)
    (E : UFDEvidence U) : UFDClosed U := by
  exact And.intro E.irreducibleFactorizationClosed E.uniquenessUpToUnitsClosed

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
