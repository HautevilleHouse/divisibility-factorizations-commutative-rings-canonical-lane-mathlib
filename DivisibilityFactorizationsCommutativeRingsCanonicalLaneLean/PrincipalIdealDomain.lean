import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure PrincipalIdealDomainPackage where
  ring : Type u
  ringStructure : CommRing ring
  everyIdealPrincipal : ∀ I : Ideal ring, I ≠ ⊥ → ∃ a : ring, a ≠ 0 ∧ I = Ideal.span {a}
  accOnPrincipalIdeals : Prop
  maximalIdealGeneratedByIrreducible : Prop

structure PrincipalIdealDomainEvidence (P : PrincipalIdealDomainPackage) where
  everyIdealPrincipalClosed : P.everyIdealPrincipal
  accOnPrincipalIdealsClosed : P.accOnPrincipalIdeals
  maximalIdealGeneratedByIrreducibleClosed : P.maximalIdealGeneratedByIrreducible

def PrincipalIdealDomainClosed (P : PrincipalIdealDomainPackage) : Prop :=
  P.everyIdealPrincipal ∧ P.accOnPrincipalIdeals ∧ P.maximalIdealGeneratedByIrreducible

theorem principal_ideal_domain_closed_from_evidence
    (P : PrincipalIdealDomainPackage) (E : PrincipalIdealDomainEvidence P) :
    PrincipalIdealDomainClosed P := by
  exact And.intro E.everyIdealPrincipalClosed
    (And.intro E.accOnPrincipalIdealsClosed E.maximalIdealGeneratedByIrreducibleClosed)

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
