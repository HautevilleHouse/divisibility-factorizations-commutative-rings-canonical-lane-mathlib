namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure FactorizationRing where
  carrier : Type
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier

structure FactorizationWitnessClosed (R : FactorizationRing) : Prop where
  uniqueFactorization : Prop
  remainderRecorded : Prop

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse