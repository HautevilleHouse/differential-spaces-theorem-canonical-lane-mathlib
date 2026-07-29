import DifferentialSpacesTheoremCanonicalLaneLean.FinalTheorem
import DifferentialSpacesTheoremCanonicalLaneLean.HolonomyStructure

namespace HautevilleHouse
namespace DifferentialSpacesTheoremCanonicalLaneLean

structure DifferentialSpacesFoundation where
  curvature : RiemannianCurvaturePackage
  curvatureEvidence : RiemannianCurvatureEvidence curvature
  invariants : CurvatureInvariantsPackage curvature
  invariantsEvidence : CurvatureInvariantsEvidence invariants
  connection : ConnectionTheoryPackage invariants
  connectionEvidence : ConnectionTheoryEvidence connection
  index : IndexTheoremPackage connection
  indexEvidence : IndexTheoremEvidence index
  holonomy : HolonomyStructurePackage index
  holonomyEvidence : HolonomyStructureEvidence holonomy

def DifferentialSpacesFoundationClosed (A : DifferentialSpacesFoundation) : Prop :=
  RiemannianCurvatureClosed A.curvature ∧
  CurvatureInvariantsClosed A.invariants ∧
  ConnectionTheoryClosed A.connection ∧
  IndexTheoremClosed A.index ∧
  HolonomyStructureClosed A.holonomy

theorem differential_spaces_foundation_closed_from_evidence
    (A : DifferentialSpacesFoundation) :
    DifferentialSpacesFoundationClosed A := by
  exact And.intro (riemannian_curvature_closed_from_evidence A.curvature A.curvatureEvidence)
    (And.intro (curvature_invariants_closed_from_evidence A.invariants A.invariantsEvidence)
      (And.intro (connection_theory_closed_from_evidence A.connection A.connectionEvidence)
        (And.intro (index_theorem_closed_from_evidence A.index A.indexEvidence)
          (holonomy_structure_closed_from_evidence A.holonomy A.holonomyEvidence))))

structure DifferentialSpacesRouteObligations where
  curvatureInvariants : Prop
  connectionTheory : Prop
  indexTheorem : Prop
  holonomyStructure : Prop

structure DifferentialSpacesRouteEvidence (R : DifferentialSpacesRouteObligations) where
  curvatureInvariantsClosed : R.curvatureInvariants
  connectionTheoryClosed : R.connectionTheory
  indexTheoremClosed : R.indexTheorem
  holonomyStructureClosed : R.holonomyStructure

def DifferentialSpacesRouteClosed (R : DifferentialSpacesRouteObligations) : Prop :=
  R.curvatureInvariants ∧ R.connectionTheory ∧
  R.indexTheorem ∧ R.holonomyStructure

theorem differential_spaces_route_closed_from_evidence
    (R : DifferentialSpacesRouteObligations) (E : DifferentialSpacesRouteEvidence R) :
    DifferentialSpacesRouteClosed R := by
  exact And.intro E.curvatureInvariantsClosed
    (And.intro E.connectionTheoryClosed
      (And.intro E.indexTheoremClosed E.holonomyStructureClosed))

end DifferentialSpacesTheoremCanonicalLaneLean
end HautevilleHouse
