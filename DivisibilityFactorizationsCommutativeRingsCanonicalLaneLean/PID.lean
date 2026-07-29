import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean.IntegralDomain
import HautevilleHouse.DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean.UFD

namespace HautevilleHouse
namespace DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean

structure PID (R : IntegralDomain) where
  idealIsPrincipal : Prop
  idealIsPrincipalTerm : idealIsPrincipal
  uFD : UFD R

structure PIDEevidence {R : IntegralDomain} (P : PID R) where
  idealIsPrincipalClosed : P.idealIsPrincipal
  uFDClosed : UFDClosed P.uFD

def PIDClosed {R : IntegralDomain} (P : PID R) : Prop :=
  P.idealIsPrincipal ∧ UFDClosed P.uFD

theorem pid_closed_from_evidence {R : IntegralDomain} (P : PID R)
    (E : PIDEevidence P) : PIDClosed P := by
  exact And.intro E.idealIsPrincipalClosed E.uFDClosed

end DivisibilityFactorizationsCommutativeRingsCanonicalLaneLean
end HautevilleHouse
