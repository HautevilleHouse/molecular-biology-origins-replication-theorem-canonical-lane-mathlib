import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ReplicatingSystem where
  carrier : Type
  topology : TopologicalSpace carrier

structure ReplicationAdmittedObject where
  system : ReplicatingSystem
  templateDirectedSynthesis : Prop
  errorCorrectionProofreading : Prop
  originRecognitionComplex : Type
  helicaseLoading : Type
  replicationInitiation : Prop
  terminationSignal : Prop
  conclusion : replicationInitiation ∧ terminationSignal

structure ReplicationEndgameState where
  object : ReplicationAdmittedObject

def ReplicationWitnessClosed (O : ReplicationAdmittedObject) : Prop :=
  O.conclusion

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse