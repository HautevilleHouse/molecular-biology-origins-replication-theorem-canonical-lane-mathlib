import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure HelicaseLoaderPackage where
  loaderProtein : Type
  helicaseEnzyme : Type
  doubleStrandBound : Prop
  atpHydrolysisDriven : Prop
  unwindingRate : ℕ
  doubleStrandBoundTerm : doubleStrandBound
  atpHydrolysisDrivenTerm : atpHydrolysisDriven

structure HelicaseLoadingEvidence (H : HelicaseLoaderPackage) where
  doubleStrandBoundClosed : H.doubleStrandBound
  atpHydrolysisDrivenClosed : H.atpHydrolysisDriven

def HelicaseLoadingClosed (H : HelicaseLoaderPackage) : Prop :=
  H.doubleStrandBound ∧ H.atpHydrolysisDriven

theorem helicase_loading_closed_from_evidence (H : HelicaseLoaderPackage)
    (E : HelicaseLoadingEvidence H) : HelicaseLoadingClosed H :=
  And.intro E.doubleStrandBoundClosed E.atpHydrolysisDrivenClosed

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse
