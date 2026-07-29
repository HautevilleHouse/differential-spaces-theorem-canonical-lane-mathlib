import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesTheoremCanonicalLaneLean

structure DifferentialSpace where
  carrier : Type
  structureSheaf : carrier → Type
  smoothnessCondition : Prop
  tangentSpace : Type
  differentialStructure : Prop

structure DifferentialSpaceAdmittedObject where
  space : DifferentialSpace
  chartCompatible : Prop
  differentialStructureClosed : Prop
  conclusion : differentialStructureClosed

end DifferentialSpacesTheoremCanonicalLaneLean
end HautevilleHouse
