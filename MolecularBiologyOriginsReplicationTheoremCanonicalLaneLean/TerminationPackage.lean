import MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean.ElongationProofreadingPackage

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure TerminationPackage {S : ReplicatingSystem} {I : InitiationPackage S} {E : ElongationPackage I} where
  replicationForkConvergence : Prop
  topoisomeraseResolution : Prop
  decatenation : Prop
  telomereMaintenance : Prop

structure TerminationEvidence {S : ReplicatingSystem} {I : InitiationPackage S} {E : ElongationPackage I} (T : TerminationPackage E) where
  replicationForkConvergenceClosed : T.replicationForkConvergence
  topoisomeraseResolutionClosed : T.topoisomeraseResolution
  decatenationClosed : T.decatenation
  telomereMaintenanceClosed : T.telomereMaintenance

def TerminationClosed {S : ReplicatingSystem} {I : InitiationPackage S} {E : ElongationPackage I} (T : TerminationPackage E) : Prop :=
  T.replicationForkConvergence ∧ T.topoisomeraseResolution ∧ T.decatenation ∧ T.telomereMaintenance

theorem termination_closed_from_evidence {S : ReplicatingSystem} {I : InitiationPackage S} {E : ElongationPackage I} (T : TerminationPackage E) (Ev : TerminationEvidence T) : TerminationClosed T := by
  exact And.intro Ev.replicationForkConvergenceClosed (And.intro Ev.topoisomeraseResolutionClosed (And.intro Ev.decatenationClosed Ev.telomereMaintenanceClosed))

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse