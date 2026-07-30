import MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

def ConstrainedReplicationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_replication_endgame (A : AdmissibleClass) :
    ConstrainedReplicationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse