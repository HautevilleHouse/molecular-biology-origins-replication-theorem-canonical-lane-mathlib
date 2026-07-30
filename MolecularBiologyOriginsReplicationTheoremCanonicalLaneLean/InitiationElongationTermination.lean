import MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean.MolecularBiologyObjects

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure InitiationPackage {S : ReplicatingSystem} where
  originRecognition : Prop
  helicaseActivation : Prop
  primaseActivity : Prop
  initiationCompleted : Prop

structure InitiationEvidence {S : ReplicatingSystem} (I : InitiationPackage S) where
  originRecognitionClosed : I.originRecognition
  helicaseActivationClosed : I.helicaseActivation
  primaseActivityClosed : I.primaseActivity
  initiationCompletedClosed : I.initiationCompleted

def InitiationClosed {S : ReplicatingSystem} (I : InitiationPackage S) : Prop :=
  I.originRecognition ∧ I.helicaseActivation ∧ I.primaseActivity ∧ I.initiationCompleted

theorem initiation_closed_from_evidence {S : ReplicatingSystem} (I : InitiationPackage S) (E : InitiationEvidence I) : InitiationClosed I := by
  exact And.intro E.originRecognitionClosed (And.intro E.helicaseActivationClosed (And.intro E.primaseActivityClosed E.initiationCompletedClosed))

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse