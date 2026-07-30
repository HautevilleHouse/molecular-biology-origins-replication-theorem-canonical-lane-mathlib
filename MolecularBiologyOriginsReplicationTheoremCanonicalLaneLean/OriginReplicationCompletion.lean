import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure OriginReplicationCompletionPackage where
  completeReplication : Prop
  sisterChromatidsAttached : Prop
  cellCycleProgression : Prop
  completeReplicationTerm : completeReplication
  sisterChromatidsAttachedTerm : sisterChromatidsAttached
  cellCycleProgressionTerm : cellCycleProgression

structure OriginReplicationCompletionEvidence (O : OriginReplicationCompletionPackage) where
  completeReplicationClosed : O.completeReplication
  sisterChromatidsAttachedClosed : O.sisterChromatidsAttached
  cellCycleProgressionClosed : O.cellCycleProgression

def OriginReplicationCompletionClosed (O : OriginReplicationCompletionPackage) : Prop :=
  O.completeReplication ∧ O.sisterChromatidsAttached ∧ O.cellCycleProgression

theorem origin_replication_completion_closed_from_evidence (O : OriginReplicationCompletionPackage)
    (E : OriginReplicationCompletionEvidence O) : OriginReplicationCompletionClosed O :=
  And.intro E.completeReplicationClosed
    (And.intro E.sisterChromatidsAttachedClosed E.cellCycleProgressionClosed)

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse
