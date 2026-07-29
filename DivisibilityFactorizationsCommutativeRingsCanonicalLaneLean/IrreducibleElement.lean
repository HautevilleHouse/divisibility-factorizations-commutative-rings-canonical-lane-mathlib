import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean.IntegralDomain

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure IrreducibleElement (R : IntegralDomain) where
  element : R
  notUnit : ¬ (∃ u : R, element * u = 1)
  irreducibleProperty : ∀ a b : R, element = a * b → (∃ u : R, a * u = 1) ∨ (∃ u : R, b * u = 1)
  notUnitTerm : notUnit
  irreduciblePropertyTerm : irreducibleProperty

structure IrreducibleElementEvidence {R : IntegralDomain} (I : IrreducibleElement R) where
  notUnitClosed : I.notUnit
  irreduciblePropertyClosed : I.irreducibleProperty

def IrreducibleElementClosed {R : IntegralDomain} (I : IrreducibleElement R) : Prop :=
  I.notUnit ∧ I.irreducibleProperty

theorem irreducible_element_closed_from_evidence {R : IntegralDomain} (I : IrreducibleElement R)
    (E : IrreducibleElementEvidence I) : IrreducibleElementClosed I := by
  exact And.intro E.notUnitClosed E.irreduciblePropertyClosed

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
