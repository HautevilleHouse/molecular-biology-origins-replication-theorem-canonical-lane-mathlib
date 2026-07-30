import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure OriginActivationControlPackage where
  cdkPhosphorylation : Prop
  preICFormation : Prop
  originFiringTiming : Prop
  replicationStressCheckpoint : Prop

structure OriginActivationControlEvidence (A : OriginActivationControlPackage) where
  cdkPhosphorylationClosed : A.cdkPhosphorylation
  preICFormationClosed : A.preICFormation
  originFiringTimingClosed : A.originFiringTiming
  replicationStressCheckpointClosed : A.replicationStressCheckpoint

def OriginActivationControlClosed (A : OriginActivationControlPackage) : Prop :=
  A.cdkPhosphorylation ∧ A.preICFormation ∧
  A.originFiringTiming ∧ A.replicationStressCheckpoint

theorem origin_activation_control_closed_from_evidence
    (A : OriginActivationControlPackage) (E : OriginActivationControlEvidence A) :
    OriginActivationControlClosed A := by
  exact And.intro E.cdkPhosphorylationClosed
    (And.intro E.preICFormationClosed
      (And.intro E.originFiringTimingClosed E.replicationStressCheckpointClosed))

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse