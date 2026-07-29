import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialSpacesTheoremCanonicalLaneLean

structure ConnectionPackage where
  connection : Prop
  torsion : Prop
  curvature : Prop
  metricCompatibility : Prop
  leviCivitaConnection : Prop

structure ConnectionEvidence (C : ConnectionPackage) where
  connectionClosed : C.connection
  torsionClosed : C.torsion
  curvatureClosed : C.curvature
  metricCompatibilityClosed : C.metricCompatibility
  leviCivitaConnectionClosed : C.leviCivitaConnection

def ConnectionClosed (C : ConnectionPackage) : Prop :=
  C.connection ∧ C.torsion ∧ C.curvature ∧ C.metricCompatibility ∧ C.leviCivitaConnection

theorem connection_closed_from_evidence (C : ConnectionPackage) (E : ConnectionEvidence C) :
    ConnectionClosed C := by
  exact And.intro E.connectionClosed
    (And.intro E.torsionClosed
      (And.intro E.curvatureClosed
        (And.intro E.metricCompatibilityClosed E.leviCivitaConnectionClosed)))

end DifferentialSpacesTheoremCanonicalLaneLean
end HautevilleHouse
