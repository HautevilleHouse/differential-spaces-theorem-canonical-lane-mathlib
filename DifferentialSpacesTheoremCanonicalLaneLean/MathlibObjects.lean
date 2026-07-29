import DifferentialSpacesTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace DifferentialSpacesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DifferentialSpacesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DifferentialSpacesAdmittedObject where
  space : DifferentialSpacesSpace
  smoothStructure : Prop
  curvatureInvariantsSatisfied : Prop
  connectionFlat : Prop
  indexTheoremHolds : Prop
  holonomyStructure : Prop
  conclusion : smoothStructure ∧ curvatureInvariantsSatisfied ∧ connectionFlat ∧ indexTheoremHolds ∧ holonomyStructure

structure DifferentialSpacesEndgameState where
  object : DifferentialSpacesAdmittedObject

def DifferentialSpacesWitnessClosed (O : DifferentialSpacesAdmittedObject) : Prop :=
  O.conclusion

end DifferentialSpacesTheoremCanonicalLaneLean
end HautevilleHouse
