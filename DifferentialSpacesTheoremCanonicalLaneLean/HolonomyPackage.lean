import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesTheoremCanonicalLaneLean

structure HolonomyPackage where
  holonomyGroup : Prop
  holonomyAlgebra : Prop
  curvatureHolonomyRelation : Prop
  parallelTransport : Prop
  holonomyReduction : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  holonomyGroupClosed : H.holonomyGroup
  holonomyAlgebraClosed : H.holonomyAlgebra
  curvatureHolonomyRelationClosed : H.curvatureHolonomyRelation
  parallelTransportClosed : H.parallelTransport
  holonomyReductionClosed : H.holonomyReduction

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.holonomyGroup ∧ H.holonomyAlgebra ∧ H.curvatureHolonomyRelation ∧ H.parallelTransport ∧ H.holonomyReduction

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.holonomyGroupClosed
    (And.intro E.holonomyAlgebraClosed
      (And.intro E.curvatureHolonomyRelationClosed
        (And.intro E.parallelTransportClosed E.holonomyReductionClosed)))

end DifferentialSpacesTheoremCanonicalLaneLean
end HautevilleHouse
