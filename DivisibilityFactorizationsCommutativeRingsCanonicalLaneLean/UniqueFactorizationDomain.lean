import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure UniqueFactorizationPackage (A : AdmissibleClass) where
  irreducibleFactorizationExists : Prop
  uniquenessUpToUnits : Prop
  atomIrreducible : Prop
  primeIrreducible : Prop

structure UniqueFactorizationEvidence {A : AdmissibleClass} (U : UniqueFactorizationPackage A) where
  irreducibleFactorizationExistsClosed : U.irreducibleFactorizationExists
  uniquenessUpToUnitsClosed : U.uniquenessUpToUnits
  atomIrreducibleClosed : U.atomIrreducible
  primeIrreducibleClosed : U.primeIrreducible

def UniqueFactorizationClosed {A : AdmissibleClass} (U : UniqueFactorizationPackage A) : Prop :=
  U.irreducibleFactorizationExists ∧ U.uniquenessUpToUnits ∧
  U.atomIrreducible ∧ U.primeIrreducible

theorem uniqueFactorization_closed_from_evidence
    {A : AdmissibleClass} (U : UniqueFactorizationPackage A)
    (E : UniqueFactorizationEvidence U) : UniqueFactorizationClosed U := by
  exact And.intro E.irreducibleFactorizationExistsClosed
    (And.intro E.uniquenessUpToUnitsClosed
      (And.intro E.atomIrreducibleClosed E.primeIrreducibleClosed))

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse