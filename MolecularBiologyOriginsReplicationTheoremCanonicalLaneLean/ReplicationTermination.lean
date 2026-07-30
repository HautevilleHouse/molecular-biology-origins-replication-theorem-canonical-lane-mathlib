import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure ReplicationTerminationPackage where
  replicationForkConvergence : Prop
  topoisomeraseIIActivity : Prop
  decatenation : Prop
  sisterChromatidDisjunction : Prop

structure ReplicationTerminationEvidence (T : ReplicationTerminationPackage) where
  replicationForkConvergenceClosed : T.replicationForkConvergence
  topoisomeraseIIActivityClosed : T.topoisomeraseIIActivity
  decatenationClosed : T.decatenation
  sisterChromatidDisjunctionClosed : T.sisterChromatidDisjunction

def ReplicationTerminationClosed (T : ReplicationTerminationPackage) : Prop :=
  T.replicationForkConvergence ∧ T.topoisomeraseIIActivity ∧
  T.decatenation ∧ T.sisterChromatidDisjunction

theorem replication_termination_closed_from_evidence
    (T : ReplicationTerminationPackage) (E : ReplicationTerminationEvidence T) :
    ReplicationTerminationClosed T := by
  exact And.intro E.replicationForkConvergenceClosed
    (And.intro E.topoisomeraseIIActivityClosed
      (And.intro E.decatenationClosed E.sisterChromatidDisjunctionClosed))

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse