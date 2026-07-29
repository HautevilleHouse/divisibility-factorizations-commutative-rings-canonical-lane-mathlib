import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure GaussLemmaPackage where
  integralDomain : Type u
  domainStructure : CommRing integralDomain
  polynomialRing : CommRing (Polynomial integralDomain)
  primitivePolynomial : Polynomial integralDomain → Prop
  content : Polynomial integralDomain → integralDomain
  gaussLemma : ∀ f g : Polynomial integralDomain,
    primitivePolynomial f → primitivePolynomial g → primitivePolynomial (f * g)
  contentMultiplicative : ∀ f g : Polynomial integralDomain,
    content (f * g) = content f * content g

structure GaussLemmaEvidence (P : GaussLemmaPackage) where
  gaussLemmaClosed : P.gaussLemma
  contentMultiplicativeClosed : P.contentMultiplicative

def GaussLemmaClosed (P : GaussLemmaPackage) : Prop :=
  P.gaussLemma ∧ P.contentMultiplicative

theorem gauss_lemma_closed_from_evidence
    (P : GaussLemmaPackage) (E : GaussLemmaEvidence P) :
    GaussLemmaClosed P := by
  exact And.intro E.gaussLemmaClosed E.contentMultiplicativeClosed

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
