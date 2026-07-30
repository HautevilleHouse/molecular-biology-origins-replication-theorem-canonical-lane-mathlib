import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure ReplicationForkDynamicsPackage where
  leadingStrandSynthesis : Prop
  laggingStrandSynthesis : Prop
  okazakiFragmentProcessing : Prop
  clampLoading : Prop

structure ReplicationForkDynamicsEvidence (F : ReplicationForkDynamicsPackage) where
  leadingStrandSynthesisClosed : F.leadingStrandSynthesis
  laggingStrandSynthesisClosed : F.laggingStrandSynthesis
  okazakiFragmentProcessingClosed : F.okazakiFragmentProcessing
  clampLoadingClosed : F.clampLoading

def ReplicationForkDynamicsClosed (F : ReplicationForkDynamicsPackage) : Prop :=
  F.leadingStrandSynthesis ∧ F.laggingStrandSynthesis ∧
  F.okazakiFragmentProcessing ∧ F.clampLoading

theorem replication_fork_dynamics_closed_from_evidence
    (F : ReplicationForkDynamicsPackage) (E : ReplicationForkDynamicsEvidence F) :
    ReplicationForkDynamicsClosed F := by
  exact And.intro E.leadingStrandSynthesisClosed
    (And.intro E.laggingStrandSynthesisClosed
      (And.intro E.okazakiFragmentProcessingClosed E.clampLoadingClosed))

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse