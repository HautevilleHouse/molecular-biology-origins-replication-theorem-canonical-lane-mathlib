import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure ReplicationOriginsPackage where
  originSequence : Type u
  replicationTiming : Type v
  initiatorBinding : Prop
  originActivationFidelity : Prop
  cellCycleControl : Prop

structure ReplicationOriginsEvidence (P : ReplicationOriginsPackage) where
  initiatorBindingClosed : P.initiatorBinding
  originActivationFidelityClosed : P.originActivationFidelity
  cellCycleControlClosed : P.cellCycleControl

def ReplicationOriginsClosed (P : ReplicationOriginsPackage) : Prop :=
  P.initiatorBinding ∧ P.originActivationFidelity ∧ P.cellCycleControl

theorem replication_origins_closed_from_evidence (P : ReplicationOriginsPackage)
    (E : ReplicationOriginsEvidence P) : ReplicationOriginsClosed P := by
  exact And.intro E.initiatorBindingClosed
    (And.intro E.originActivationFidelityClosed E.cellCycleControlClosed)

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse