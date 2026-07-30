import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure CellCycleRegulationPackage where
  cyclinDependentKinases : Prop
  checkpointControl : Prop
  dnaDamageResponse : Prop
  replicationLicensing : Prop
  mitosisCytokinesisCoordination : Prop

structure CellCycleRegulationEvidence (P : CellCycleRegulationPackage) where
  cyclinDependentKinasesClosed : P.cyclinDependentKinases
  checkpointControlClosed : P.checkpointControl
  dnaDamageResponseClosed : P.dnaDamageResponse
  replicationLicensingClosed : P.replicationLicensing
  mitosisCytokinesisCoordinationClosed : P.mitosisCytokinesisCoordination

def CellCycleRegulationClosed (P : CellCycleRegulationPackage) : Prop :=
  P.cyclinDependentKinases ∧ P.checkpointControl ∧ P.dnaDamageResponse ∧
  P.replicationLicensing ∧ P.mitosisCytokinesisCoordination

theorem cell_cycle_regulation_closed_from_evidence (P : CellCycleRegulationPackage)
    (E : CellCycleRegulationEvidence P) : CellCycleRegulationClosed P := by
  exact And.intro E.cyclinDependentKinasesClosed
    (And.intro E.checkpointControlClosed
      (And.intro E.dnaDamageResponseClosed
        (And.intro E.replicationLicensingClosed E.mitosisCytokinesisCoordinationClosed)))

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse