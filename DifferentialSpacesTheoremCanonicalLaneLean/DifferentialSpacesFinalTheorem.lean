import DifferentialSpacesTheorem.DifferentialSpacesGateLemmas

namespace HautevilleHouse
namespace DifferentialSpacesTheorem

def ConstrainedDifferentialSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_differential_spaces_endgame (A : AdmissibleClass) :
    ConstrainedDifferentialSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialSpacesTheorem
end HautevilleHouse
