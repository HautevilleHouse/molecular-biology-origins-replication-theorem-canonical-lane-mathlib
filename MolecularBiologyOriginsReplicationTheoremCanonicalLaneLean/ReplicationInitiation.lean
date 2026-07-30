import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure ReplicationInitiationPackage where
  originRecognitionProteins : Prop
  dnaUnwinding : Prop
  primaseLoading : Prop
  rnaPrimerSynthesis : Prop
  polymeraseRecruitment : Prop

structure ReplicationInitiationEvidence (P : ReplicationInitiationPackage) where
  originRecognitionProteinsClosed : P.originRecognitionProteins
  dnaUnwindingClosed : P.dnaUnwinding
  primaseLoadingClosed : P.primaseLoading
  rnaPrimerSynthesisClosed : P.rnaPrimerSynthesis
  polymeraseRecruitmentClosed : P.polymeraseRecruitment

def ReplicationInitiationClosed (P : ReplicationInitiationPackage) : Prop := 
  P.originRecognitionProteins ∧ P.dnaUnwinding ∧ P.primaseLoading ∧ P.rnaPrimerSynthesis ∧ P.polymeraseRecruitment

theorem replication_initiation_closed_from_evidence (P : ReplicationInitiationPackage) (E : ReplicationInitiationEvidence P) :
    ReplicationInitiationClosed P := by
  exact And.intro E.originRecognitionProteinsClosed (And.intro E.dnaUnwindingClosed (And.intro E.primaseLoadingClosed (And.intro E.rnaPrimerSynthesisClosed E.polymeraseRecruitmentClosed)))

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse