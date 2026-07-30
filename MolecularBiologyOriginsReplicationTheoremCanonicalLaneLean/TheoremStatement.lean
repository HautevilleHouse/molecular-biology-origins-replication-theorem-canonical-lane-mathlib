import HautevilleHouse.MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure OriginsReplicationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure OriginsReplicationAdmittedObject where
  space : OriginsReplicationSpace
  replicationInitiated : Prop
  originRecognized : Prop
  replicationFork : Type
  forkTopology : TopologicalSpace replicationFork
  bidirectionalReplication : Prop
  conclusion : bidirectionalReplication

def OriginsReplicationWitnessClosed (O : OriginsReplicationAdmittedObject) : Prop :=
  O.bidirectionalReplication

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse