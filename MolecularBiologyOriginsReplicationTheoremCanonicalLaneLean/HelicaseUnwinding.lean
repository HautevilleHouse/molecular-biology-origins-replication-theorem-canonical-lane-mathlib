import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure HelicaseUnwindingPackage where
  helicaseLoading : Prop
  atpDependentUnwinding : Prop
  singleStrandBindingProteins : Prop
  replicationForkStability : Prop
  topologicalStressRelief : Prop

structure HelicaseUnwindingEvidence (P : HelicaseUnwindingPackage) where
  helicaseLoadingClosed : P.helicaseLoading
  atpDependentUnwindingClosed : P.atpDependentUnwinding
  singleStrandBindingProteinsClosed : P.singleStrandBindingProteins
  replicationForkStabilityClosed : P.replicationForkStability
  topologicalStressReliefClosed : P.topologicalStressRelief

def HelicaseUnwindingClosed (P : HelicaseUnwindingPackage) : Prop :=
  P.helicaseLoading ∧ P.atpDependentUnwinding ∧ P.singleStrandBindingProteins ∧
  P.replicationForkStability ∧ P.topologicalStressRelief

theorem helicase_unwinding_closed_from_evidence (P : HelicaseUnwindingPackage)
    (E : HelicaseUnwindingEvidence P) : HelicaseUnwindingClosed P := by
  exact And.intro E.helicaseLoadingClosed
    (And.intro E.atpDependentUnwindingClosed
      (And.intro E.singleStrandBindingProteinsClosed
        (And.intro E.replicationForkStabilityClosed E.topologicalStressReliefClosed)))

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse