import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DiffSpacesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiffSpacesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialSpacesTheoremCanonicalLaneLean
end HautevilleHouse