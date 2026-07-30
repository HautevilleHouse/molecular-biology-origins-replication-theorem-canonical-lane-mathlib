import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure ErrorCorrectionFidelityPackage where
  polymeraseProofreading : Prop
  mismatchRepair : Prop
  replicationAccuracy : Prop
  mutationRateControl : Prop

structure ErrorCorrectionFidelityEvidence (P : ErrorCorrectionFidelityPackage) where
  polymeraseProofreadingClosed : P.polymeraseProofreading
  mismatchRepairClosed : P.mismatchRepair
  replicationAccuracyClosed : P.replicationAccuracy
  mutationRateControlClosed : P.mutationRateControl

def ErrorCorrectionFidelityClosed (P : ErrorCorrectionFidelityPackage) : Prop :=
  P.polymeraseProofreading ∧ P.mismatchRepair ∧
  P.replicationAccuracy ∧ P.mutationRateControl

theorem error_correction_fidelity_closed_from_evidence (P : ErrorCorrectionFidelityPackage)
    (E : ErrorCorrectionFidelityEvidence P) : ErrorCorrectionFidelityClosed P := by
  exact And.intro E.polymeraseProofreadingClosed
    (And.intro E.mismatchRepairClosed
      (And.intro E.replicationAccuracyClosed E.mutationRateControlClosed))

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse