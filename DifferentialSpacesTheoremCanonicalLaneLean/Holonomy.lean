import DifferentialSpacesTheoremCanonicalLaneLean.IndexTheorem

namespace HautevilleHouse
namespace DifferentialSpacesTheoremCanonicalLaneLean

structure HolonomyPackage {C : CurvatureInvariantsPackage} {Con : ConnectionTheoryPackage C}
    (I : IndexTheoremPackage Con) where
  holonomyGroup : Type u
  monodromyRepresentation : Type v
  restrictedHolonomy : Prop
  curvatureHolonomyRelation : Prop
  ambonlosTheorem : Prop
  holonomyGroupComputed : Prop

structure HolonomyEvidence {C : CurvatureInvariantsPackage} {Con : ConnectionTheoryPackage C}
    {I : IndexTheoremPackage Con} (H : HolonomyPackage I) where
  restrictedHolonomyClosed : H.restrictedHolonomy
  curvatureHolonomyRelationClosed : H.curvatureHolonomyRelation
  ambonlosTheoremClosed : H.ambonlosTheorem
  holonomyGroupComputedClosed : H.holonomyGroupComputed

def HolonomyClosed {C : CurvatureInvariantsPackage} {Con : ConnectionTheoryPackage C}
    {I : IndexTheoremPackage Con} (H : HolonomyPackage I) : Prop :=
  H.restrictedHolonomy ∧ H.curvatureHolonomyRelation ∧ H.ambonlosTheorem ∧ H.holonomyGroupComputed

theorem holonomy_closed_from_evidence
    {C : CurvatureInvariantsPackage} {Con : ConnectionTheoryPackage C}
    {I : IndexTheoremPackage Con} (H : HolonomyPackage I) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.restrictedHolonomyClosed (And.intro E.curvatureHolonomyRelationClosed
    (And.intro E.ambonlosTheoremClosed E.holonomyGroupComputedClosed))

end DifferentialSpacesTheoremCanonicalLaneLean
end HautevilleHouse