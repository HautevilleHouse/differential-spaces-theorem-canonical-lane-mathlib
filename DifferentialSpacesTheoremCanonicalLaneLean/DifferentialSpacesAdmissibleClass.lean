import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesTheorem

structure DifferentialSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  sheaf : Type
  smoothFunctions : Type
  smoothCompatibility : Prop

structure DifferentialAdmittedObject where
  space : DifferentialSpace
  secondCountable : Prop
  hausdorff : Prop
  locallyEuclidean : Prop
  differentiableStructure : Prop
  conclusion : differentiableStructure

structure AdmissibleClass where
  object : DifferentialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialSpacesTheorem
end HautevilleHouse
