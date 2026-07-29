import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (A.object : DifferentialSpaceAdmittedObject).conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact (A.object : DifferentialSpaceAdmittedObject).conclusion

end DifferentialSpacesTheoremCanonicalLaneLean
end HautevilleHouse
