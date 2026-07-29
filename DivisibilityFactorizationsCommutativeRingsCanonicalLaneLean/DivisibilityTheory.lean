import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure DivisibilityTheoryPackage where
  ring : Type u
  ringStructure : CommRing ring
  dividesRelation : ring → ring → Prop
  gcdDefined : ring → ring → ring
  lcmDefined : ring → ring → ring
  gcdProperties : ∀ a b, gcdDefined a b ∣ a ∧ gcdDefined a b ∣ b ∧
    ∀ c, c ∣ a → c ∣ b → c ∣ gcdDefined a b
  lcmProperties : ∀ a b, a ∣ lcmDefined a b ∧ b ∣ lcmDefined a b ∧
    ∀ c, a ∣ c → b ∣ c → lcmDefined a b ∣ c

structure DivisibilityTheoryEvidence (P : DivisibilityTheoryPackage) where
  gcdPropertiesClosed : P.gcdProperties
  lcmPropertiesClosed : P.lcmProperties

def DivisibilityTheoryClosed (P : DivisibilityTheoryPackage) : Prop :=
  P.gcdProperties ∧ P.lcmProperties

theorem divisibility_theory_closed_from_evidence
    (P : DivisibilityTheoryPackage) (E : DivisibilityTheoryEvidence P) :
    DivisibilityTheoryClosed P := by
  exact And.intro E.gcdPropertiesClosed E.lcmPropertiesClosed

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
