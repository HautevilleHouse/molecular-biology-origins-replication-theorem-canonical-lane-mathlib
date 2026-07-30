import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

structure DnaABindingSite where
  dnaAProtein : Type
  origin : Type
  atRichRegionAdenineThymine : Prop
  affinityBound : Prop
  atRichRegionAdenineThymineTerm : atRichRegionAdenineThymine
  affinityBoundTerm : affinityBound

def DnaABindingClosed (D : DnaABindingSite) : Prop :=
  D.atRichRegionAdenineThymine ∧ D.affinityBound

theorem dnaA_binding_closed_from_evidence (D : DnaABindingSite) : DnaABindingClosed D :=
  And.intro D.atRichRegionAdenineThymineTerm D.affinityBoundTerm

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse
