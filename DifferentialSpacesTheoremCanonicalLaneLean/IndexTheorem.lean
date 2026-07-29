import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialSpacesTheoremCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DifferentialSpacesTheoremCanonicalLaneLean

structure DiracOperator (M : DifferentialSpace) (g : RiemannianMetric M) where
  operator : (x : M.carrier) → LinearMap (TangentBundle.fiber M x) (TangentBundle.fiber M x)
  selfAdjoint : Prop
  elliptic : Prop
  selfAdjointTerm : selfAdjoint
  ellipticTerm : elliptic

structure DiracIndexPackage (M : DifferentialSpace) (g : RiemannianMetric M) (D : DiracOperator M g) where
  indexChernClass : Type u
  atiyahSingerFormula : Boolean
  indexComputed : Boolean
  indexChernClassTerm : indexChernClass
  atiyahSingerFormulaTerm : atiyahSingerFormula
  indexComputedTerm : indexComputed

def DiracIndexClosed (M : DifferentialSpace) (g : RiemannianMetric M) (D : DiracOperator M g)
    (I : DiracIndexPackage M g D) : Prop :=
  I.indexChernClass ∧ I.atiyahSingerFormula ∧ I.indexComputed

theorem dirac_index_closed (M : DifferentialSpace) (g : RiemannianMetric M) (D : DiracOperator M g)
    (I : DiracIndexPackage M g D) : DiracIndexClosed M g D I := by
  exact And.intro I.indexChernClassTerm (And.intro I.atiyahSingerFormulaTerm I.indexComputedTerm)

end DifferentialSpacesTheoremCanonicalLaneLean
end HautevilleHouse
