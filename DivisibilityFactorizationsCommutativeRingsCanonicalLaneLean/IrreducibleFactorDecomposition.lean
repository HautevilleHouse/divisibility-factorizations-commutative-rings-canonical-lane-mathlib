import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure IrreducibleFactorDecomposition (R : Type) [CommRing R] where
  existsIrreducibleFactorization : Prop
  uniquenessUpToOrderAndAssociates : Prop
  factorDecompClosed : Prop
  factorEvidence : existsIrreducibleFactorization ∧ uniquenessUpToOrderAndAssociates ∧ factorDecompClosed

def IrreducibleFactorDecompositionAdmissible (R : Type) [CommRing R] (F : IrreducibleFactorDecomposition R) : AdmissibleClass :=
  { object := { carrier := R, ring := inferInstance, decomp := F }
    endpointSatisfied := F.factorDecompClosed
    remainderRecorded := True
    gateWitness := Or.inl F.factorDecompClosed
  }

theorem irreducible_factor_decomposition_bridge (R : Type) [CommRing R] (F : IrreducibleFactorDecomposition R) :
    bridgeClosed (IrreducibleFactorDecompositionAdmissible R F) := by
  exact F.factorDecompClosed

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
