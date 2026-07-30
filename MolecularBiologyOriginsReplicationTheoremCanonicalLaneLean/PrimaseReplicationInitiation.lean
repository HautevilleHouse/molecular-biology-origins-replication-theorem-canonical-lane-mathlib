import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure PrimaseInitiationPackage where
  primaseEnzyme : Type
  rnaPrimerSynthesized : Prop
  leadingStrandBound : Prop
  okazakiFragmentResolution : Prop
  rnaPrimerSynthesizedTerm : rnaPrimerSynthesized
  leadingStrandBoundTerm : leadingStrandBound
  okazakiFragmentResolutionTerm : okazakiFragmentResolution

structure PrimaseInitiationEvidence (P : PrimaseInitiationPackage) where
  rnaPrimerSynthesizedClosed : P.rnaPrimerSynthesized
  leadingStrandBoundClosed : P.leadingStrandBound
  okazakiFragmentResolutionClosed : P.okazakiFragmentResolution

def PrimaseInitiationClosed (P : PrimaseInitiationPackage) : Prop :=
  P.rnaPrimerSynthesized ∧ P.leadingStrandBound ∧ P.okazakiFragmentResolution

theorem primase_initiation_closed_from_evidence (P : PrimaseInitiationPackage)
    (E : PrimaseInitiationEvidence P) : PrimaseInitiationClosed P :=
  And.intro E.rnaPrimerSynthesizedClosed
    (And.intro E.leadingStrandBoundClosed E.okazakiFragmentResolutionClosed)

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse
