import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure PolynomialFactorizationPackage where
  baseRing : Type u
  baseRingStructure : CommRing baseRing
  polynomialRing : CommRing (Polynomial baseRing)
  factorizationOverField : If baseRing is a field then polynomialRing is a UFD
  factorizationOverUFD : If baseRing is a UFD then polynomialRing is a UFD
  eisensteinCriterion : Prop
  rationalRootTest : Prop

structure PolynomialFactorizationEvidence (P : PolynomialFactorizationPackage) where
  factorizationOverFieldClosed : P.factorizationOverField
  factorizationOverUFDClosed : P.factorizationOverUFD
  eisensteinCriterionClosed : P.eisensteinCriterion
  rationalRootTestClosed : P.rationalRootTest

def PolynomialFactorizationClosed (P : PolynomialFactorizationPackage) : Prop :=
  P.factorizationOverField ∧ P.factorizationOverUFD ∧
  P.eisensteinCriterion ∧ P.rationalRootTest

theorem polynomial_factorization_closed_from_evidence
    (P : PolynomialFactorizationPackage) (E : PolynomialFactorizationEvidence P) :
    PolynomialFactorizationClosed P := by
  exact And.intro E.factorizationOverFieldClosed
    (And.intro E.factorizationOverUFDClosed
      (And.intro E.eisensteinCriterionClosed E.rationalRootTestClosed))

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
