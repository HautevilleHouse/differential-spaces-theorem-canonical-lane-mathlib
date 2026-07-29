import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesTheorem

structure DifferentialSpace (M : Type u) [TopologicalSpace M] where
  atlas : Set (Set M)
  chartAtlas : Set (M → ℝ)
  compatibilityCondition : Prop
  dimensionCondition : Prop

structure DifferentialSpaceEvidence (D : DifferentialSpace M) where
  atlasCovering : Prop
  chartAtlasNonempty : Prop
  compatibility : D.compatibilityCondition
  dimension : D.dimensionCondition

end DifferentialSpacesTheorem
end HautevilleHouse