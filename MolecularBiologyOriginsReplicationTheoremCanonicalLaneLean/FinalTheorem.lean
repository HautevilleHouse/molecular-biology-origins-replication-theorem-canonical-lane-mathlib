import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean.AdmissibleClass
import MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean.BridgeLemmas
import MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

def ConstrainedReplicationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_replication_endgame (A : AdmissibleClass) :
    ConstrainedReplicationClosure A := by
  refine And.intro ?_ ?_
  · exact bridge_from_admissible_class A
  · exact gate_from_admissible_class A

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse