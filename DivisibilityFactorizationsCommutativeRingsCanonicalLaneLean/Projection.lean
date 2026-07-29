import HautevilleHouse.DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def divisorFactorProjection : Projection DivisorFactorEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem divisor_factor_projection_idempotent (x : DivisorFactorEndgameState) :
    divisorFactorProjection.toFun (divisorFactorProjection.toFun x) = divisorFactorProjection.toFun x := by
  exact divisorFactorProjection.idempotent x

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse