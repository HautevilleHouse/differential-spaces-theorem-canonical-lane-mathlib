import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesTheoremCanonicalLaneLean

structure DifferentialSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Type v
  charts : Type w
  smoothCompatibility : Prop
  hausdorffSecondCountable : Prop
  smoothCompatibilityTerm : smoothCompatibility
  hausdorffSecondCountableTerm : hausdorffSecondCountable

structure TangentBundle (M : DifferentialSpace) where
  fiber : M.carrier → Type u
  smoothSections : Type v
  vectorSpaceStructure : ∀ x : M.carrier, AddCommGroup (fiber x)
  smoothStructureCompatible : Prop
  smoothStructureCompatibleTerm : smoothStructureCompatible

structure DifferentialForm (M : DifferentialSpace) (k : ℕ) where
  form : (x : M.carrier) → (ExteriorPower (TangentBundle.fiber M x) k)
  smoothness : Prop
  smoothnessTerm : smoothness

end DifferentialSpacesTheoremCanonicalLaneLean
end HautevilleHouse
