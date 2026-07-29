import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean.IntegralDomain

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure PrimeElement (R : IntegralDomain) where
  element : R
  notUnit : ¬ (∃ u : R, element * u = 1)
  primeProperty : ∀ a b : R, element ∣ a * b → element ∣ a ∨ element ∣ b
  notUnitTerm : notUnit
  primePropertyTerm : primeProperty

structure PrimeElementEvidence {R : IntegralDomain} (P : PrimeElement R) where
  notUnitClosed : P.notUnit
  primePropertyClosed : P.primeProperty

def PrimeElementClosed {R : IntegralDomain} (P : PrimeElement R) : Prop :=
  P.notUnit ∧ P.primeProperty

theorem prime_element_closed_from_evidence {R : IntegralDomain} (P : PrimeElement R)
    (E : PrimeElementEvidence P) : PrimeElementClosed P := by
  exact And.intro E.notUnitClosed E.primePropertyClosed

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
