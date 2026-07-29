import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure IntegralDomain where
  carrier : Type u
  zero : carrier
  one : carrier
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  ringAxioms : Prop
  noZeroDivisors : Prop
  ringAxiomsTerm : ringAxioms
  noZeroDivisorsTerm : noZeroDivisors

structure IntegralDomainEvidence (R : IntegralDomain) where
  ringAxiomsClosed : R.ringAxioms
  noZeroDivisorsClosed : R.noZeroDivisors

def IntegralDomainClosed (R : IntegralDomain) : Prop :=
  R.ringAxioms ∧ R.noZeroDivisors

theorem integral_domain_closed_from_evidence (R : IntegralDomain)
    (E : IntegralDomainEvidence R) : IntegralDomainClosed R := by
  exact And.intro E.ringAxiomsClosed E.noZeroDivisorsClosed

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
