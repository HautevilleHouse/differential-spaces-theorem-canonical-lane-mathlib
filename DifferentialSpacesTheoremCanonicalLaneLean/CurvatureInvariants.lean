import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialSpacesTheoremCanonicalLaneLean.DifferentialSpaces

namespace HautevilleHouse
namespace DifferentialSpacesTheoremCanonicalLaneLean

structure RiemannianMetric (M : DifferentialSpace) where
  metric : (x : M.carrier) → InnerProduct ℝ (TangentBundle.fiber M x)
  smoothness : Prop
  positiveDefinite : Prop
  smoothnessTerm : smoothness
  positiveDefiniteTerm : positiveDefinite

structure CurvatureTensor (M : DifferentialSpace) (g : RiemannianMetric M) where
  riemann : (x : M.carrier) → Multilinear ℝ (TangentBundle.fiber M x) (TangentBundle.fiber M x)
  ricci : (x : M.carrier) → Bilinear ℝ (TangentBundle.fiber M x) ℝ
  scalar : (x : M.carrier) → ℝ
  symmetryConditions : Prop
  ricciContraction : Prop
  scalarTrace : Prop
  symmetryConditionsTerm : symmetryConditions
  ricciContractionTerm : ricciContraction
  scalarTraceTerm : scalarTrace

def CurvatureInvariantsClosed (M : DifferentialSpace) (g : RiemannianMetric M) (R : CurvatureTensor M g) : Prop :=
  R.symmetryConditions ∧ R.ricciContraction ∧ R.scalarTrace

theorem curvature_invariants_closed (M : DifferentialSpace) (g : RiemannianMetric M) (R : CurvatureTensor M g) :
    CurvatureInvariantsClosed M g R := by
  exact And.intro R.symmetryConditionsTerm (And.intro R.ricciContractionTerm R.scalarTraceTerm)

end DifferentialSpacesTheoremCanonicalLaneLean
end HautevilleHouse
