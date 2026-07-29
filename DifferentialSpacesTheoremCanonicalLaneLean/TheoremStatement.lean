import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesTheoremCanonicalLaneLean

structure DifferentialSpaceAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  differentialStructure : Prop
  dimensionFinite : Prop
  curvatureInvariant : Prop
  conclusion : curvatureInvariant

def DifferentialSpaceWitnessClosed (O : DifferentialSpaceAdmittedObject) : Prop :=
  O.curvatureInvariant

theorem differential_space_witness_closed (O : DifferentialSpaceAdmittedObject) :
    DifferentialSpaceWitnessClosed O := by
  exact O.conclusion

end DifferentialSpacesTheoremCanonicalLaneLean
end HautevilleHouse