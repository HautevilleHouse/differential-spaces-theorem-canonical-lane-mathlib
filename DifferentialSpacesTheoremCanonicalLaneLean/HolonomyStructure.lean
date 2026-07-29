import DifferentialSpacesTheoremCanonicalLaneLean.IndexTheorem

namespace HautevilleHouse
namespace DifferentialSpacesTheoremCanonicalLaneLean

structure HolonomyStructurePackage {G : RiemannianCurvaturePackage}
    {C : CurvatureInvariantsPackage G} {T : ConnectionTheoryPackage C}
    {I : IndexTheoremPackage T} where
  holonomyGroupReductive : Prop
  holonomyInvariantsPreserved : Prop
  structureGroupReduction : Prop
  ambigFlatConnectionDerived : Prop

structure HolonomyStructureEvidence {G : RiemannianCurvaturePackage}
    {C : CurvatureInvariantsPackage G} {T : ConnectionTheoryPackage C}
    {I : IndexTheoremPackage T} (H : HolonomyStructurePackage I) where
  holonomyGroupReductiveClosed : H.holonomyGroupReductive
  holonomyInvariantsPreservedClosed : H.holonomyInvariantsPreserved
  structureGroupReductionClosed : H.structureGroupReduction
  ambigFlatConnectionDerivedClosed : H.ambigFlatConnectionDerived

def HolonomyStructureClosed {G : RiemannianCurvaturePackage}
    {C : CurvatureInvariantsPackage G} {T : ConnectionTheoryPackage C}
    {I : IndexTheoremPackage T} (H : HolonomyStructurePackage I) : Prop :=
  H.holonomyGroupReductive ∧ H.holonomyInvariantsPreserved ∧
  H.structureGroupReduction ∧ H.ambigFlatConnectionDerived

theorem holonomy_structure_closed_from_evidence
    {G : RiemannianCurvaturePackage} {C : CurvatureInvariantsPackage G}
    {T : ConnectionTheoryPackage C} {I : IndexTheoremPackage T}
    (H : HolonomyStructurePackage I) (E : HolonomyStructureEvidence H) :
    HolonomyStructureClosed H := by
  exact And.intro E.holonomyGroupReductiveClosed
    (And.intro E.holonomyInvariantsPreservedClosed
      (And.intro E.structureGroupReductionClosed
        E.ambigFlatConnectionDerivedClosed))

end DifferentialSpacesTheoremCanonicalLaneLean
end HautevilleHouse
