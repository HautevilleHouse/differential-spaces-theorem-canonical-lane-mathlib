import DifferentialSpacesTheorem.DifferentialSpacesBridgeLemmas

namespace HautevilleHouse
namespace DifferentialSpacesTheorem

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DifferentialSpacesTheorem
end HautevilleHouse
