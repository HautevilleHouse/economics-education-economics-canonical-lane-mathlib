import canonicalLaneMathlib.AdmissibleClass
import EconomicsEducationEconomicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EconomicsEducationEconomicsCanonicalLaneLean

structure AdmissibleClass where
  object : EconomicsEducationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EconomicsEducationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsEducationEconomicsCanonicalLaneLean
end HautevilleHouse