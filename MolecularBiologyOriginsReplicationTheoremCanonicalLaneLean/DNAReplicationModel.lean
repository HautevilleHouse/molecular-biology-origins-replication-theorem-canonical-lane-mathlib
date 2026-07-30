import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure DNAReplicationModelPackage where
  polymeraseActivity : Prop
  leadingLaggingStrandCoordination : Prop
  okazakiFragmentMaturation : Prop
  proofreadingMechanism : Prop

structure DNAReplicationModelEvidence (P : DNAReplicationModelPackage) where
  polymeraseActivityClosed : P.polymeraseActivity
  leadingLaggingStrandCoordinationClosed : P.leadingLaggingStrandCoordination
  okazakiFragmentMaturationClosed : P.okazakiFragmentMaturation
  proofreadingMechanismClosed : P.proofreadingMechanism

def DNAReplicationModelClosed (P : DNAReplicationModelPackage) : Prop :=
  P.polymeraseActivity ∧ P.leadingLaggingStrandCoordination ∧
  P.okazakiFragmentMaturation ∧ P.proofreadingMechanism

theorem dna_replication_model_closed_from_evidence (P : DNAReplicationModelPackage)
    (E : DNAReplicationModelEvidence P) : DNAReplicationModelClosed P := by
  exact And.intro E.polymeraseActivityClosed
    (And.intro E.leadingLaggingStrandCoordinationClosed
      (And.intro E.okazakiFragmentMaturationClosed E.proofreadingMechanismClosed))

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse