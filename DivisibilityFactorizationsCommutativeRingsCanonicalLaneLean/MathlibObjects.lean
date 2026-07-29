import HautevilleHouse.DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DivisorFactorSpace where
  carrier : Type
  ringStructure : Ring carrier

structure DivisorFactorAdmittedObject where
  space : DivisorFactorSpace
  integralDomain : Prop
  uniqueFactorization : Prop
  principalIdealDomain : Type
  pidStructure : Ring principalIdealDomain
  factorIntoPrimes : Prop
  conclusion : factorIntoPrimes

structure DivisorFactorEndgameState where
  object : DivisorFactorAdmittedObject

def DivisorFactorWitnessClosed (O : DivisorFactorAdmittedObject) : Prop :=
  O.factorIntoPrimes

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse