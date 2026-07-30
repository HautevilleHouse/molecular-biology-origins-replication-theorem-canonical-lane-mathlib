import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure DNAReplicationInitiationPackage where
  originRecognitionComplex : Prop
  helicaseLoading : Prop
  preRCFormation : Prop
  cdc6Cdt1Dependent : Prop

structure DNAReplicationInitiationEvidence (P : DNAReplicationInitiationPackage) where
  originRecognitionComplexClosed : P.originRecognitionComplex
  helicaseLoadingClosed : P.helicaseLoading
  preRCFormationClosed : P.preRCFormation
  cdc6Cdt1DependentClosed : P.cdc6Cdt1Dependent

def DNAReplicationInitiationClosed (P : DNAReplicationInitiationPackage) : Prop :=
  P.originRecognitionComplex ∧ P.helicaseLoading ∧
  P.preRCFormation ∧ P.cdc6Cdt1Dependent

theorem dna_replication_initiation_closed_from_evidence
    (P : DNAReplicationInitiationPackage) (E : DNAReplicationInitiationEvidence P) :
    DNAReplicationInitiationClosed P := by
  exact And.intro E.originRecognitionComplexClosed
    (And.intro E.helicaseLoadingClosed
      (And.intro E.preRCFormationClosed E.cdc6Cdt1DependentClosed))

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse