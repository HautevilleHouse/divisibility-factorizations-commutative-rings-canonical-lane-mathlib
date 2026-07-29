import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RingFactorizationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse