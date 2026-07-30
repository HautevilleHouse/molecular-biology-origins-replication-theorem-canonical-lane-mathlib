import MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean.InitiationElongationTermination

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure ElongationPackage {S : ReplicatingSystem} {I : InitiationPackage S} where
  leadingStrandSynthesis : Prop
  laggingStrandOkazaki : Prop
  clampLoading : Prop
  processivityFactor : Prop

structure ElongationEvidence {S : ReplicatingSystem} {I : InitiationPackage S} (E : ElongationPackage I) where
  leadingStrandSynthesisClosed : E.leadingStrandSynthesis
  laggingStrandOkazakiClosed : E.laggingStrandOkazaki
  clampLoadingClosed : E.clampLoading
  processivityFactorClosed : E.processivityFactor

def ElongationClosed {S : ReplicatingSystem} {I : InitiationPackage S} (E : ElongationPackage I) : Prop :=
  E.leadingStrandSynthesis ∧ E.laggingStrandOkazaki ∧ E.clampLoading ∧ E.processivityFactor

theorem elongation_closed_from_evidence {S : ReplicatingSystem} {I : InitiationPackage S} (E : ElongationPackage I) (Ev : ElongationEvidence E) : ElongationClosed E := by
  exact And.intro Ev.leadingStrandSynthesisClosed (And.intro Ev.laggingStrandOkazakiClosed (And.intro Ev.clampLoadingClosed Ev.processivityFactorClosed))

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse