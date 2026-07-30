import MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean.MolecularBiologyObjects

namespace HautevilleHouse
namespace MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ReplicationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyOriginsReplicationTheoremCanonicalLaneLean
end HautevilleHouse