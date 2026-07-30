import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean.ReplicationInitiation

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure ElongationAndTerminationPackage {G : ReplicationInitiationPackage} where
  leadingStrandSynthesis : Prop
  laggingStrandSynthesis : Prop
  okazakiFragmentMaturation : Prop
  terminationSignal : Prop

structure ElongationAndTerminationEvidence {G : ReplicationInitiationPackage} (E : ElongationAndTerminationPackage G) where
  leadingStrandSynthesisClosed : E.leadingStrandSynthesis
  laggingStrandSynthesisClosed : E.laggingStrandSynthesis
  okazakiFragmentMaturationClosed : E.okazakiFragmentMaturation
  terminationSignalClosed : E.terminationSignal

def ElongationAndTerminationClosed {G : ReplicationInitiationPackage} (E : ElongationAndTerminationPackage G) : Prop :=
  E.leadingStrandSynthesis ∧ E.laggingStrandSynthesis ∧ E.okazakiFragmentMaturation ∧ E.terminationSignal

theorem elongation_and_termination_closed_from_evidence {G : ReplicationInitiationPackage} (E : ElongationAndTerminationPackage G) (Ev : ElongationAndTerminationEvidence E) :
    ElongationAndTerminationClosed E := by
  exact And.intro Ev.leadingStrandSynthesisClosed (And.intro Ev.laggingStrandSynthesisClosed (And.intro Ev.okazakiFragmentMaturationClosed Ev.terminationSignalClosed))

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse