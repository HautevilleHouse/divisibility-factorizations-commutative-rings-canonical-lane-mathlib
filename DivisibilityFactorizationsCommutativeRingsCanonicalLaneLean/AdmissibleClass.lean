import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure AdmittedRing where
  carrier : Type
  ringStructure : Ring carrier
  integralDomain : Prop
  factorialDomain : Prop

structure AdmissibleClass where
  object : AdmittedRing
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RingFactorizationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse