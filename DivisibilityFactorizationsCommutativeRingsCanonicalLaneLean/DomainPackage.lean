import HautevilleHouse.DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean.SingularityModels

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure DomainPackage {U : UniqueFactorizationPackage} where
  factorizationExistence : Prop
  irreducibilityClassification : Prop
  primeDivisorControl : Prop
  noetherianRingCondition : Prop

structure DomainEvidence {U : UniqueFactorizationPackage} (D : DomainPackage U) where
  factorizationExistenceClosed : D.factorizationExistence
  irreducibilityClassificationClosed : D.irreducibilityClassification
  primeDivisorControlClosed : D.primeDivisorControl
  noetherianRingConditionClosed : D.noetherianRingCondition

def DomainClosed {U : UniqueFactorizationPackage} (D : DomainPackage U) : Prop :=
  D.factorizationExistence ∧ D.irreducibilityClassification ∧ D.primeDivisorControl ∧ D.noetherianRingCondition

theorem domain_closed_from_evidence {U : UniqueFactorizationPackage} (D : DomainPackage U) (E : DomainEvidence D) : DomainClosed D := by
  exact And.intro E.factorizationExistenceClosed (And.intro E.irreducibilityClassificationClosed (And.intro E.primeDivisorControlClosed E.noetherianRingConditionClosed))

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse