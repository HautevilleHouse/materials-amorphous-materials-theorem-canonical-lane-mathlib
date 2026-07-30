import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure AtomicStructurePackage where
  positions : Type u
  connectivity : Type v
  coordinationDistribution : Prop
  bondAngleDistribution : Prop
  pairCorrelationFunction : Prop

structure AtomicStructureEvidence (A : AtomicStructurePackage) where
  coordinationDistributionClosed : A.coordinationDistribution
  bondAngleDistributionClosed : A.bondAngleDistribution
  pairCorrelationFunctionClosed : A.pairCorrelationFunction

def AtomicStructureClosed (A : AtomicStructurePackage) : Prop :=
  A.coordinationDistribution ∧ A.bondAngleDistribution ∧ A.pairCorrelationFunction

theorem atomic_structure_closed_from_evidence (A : AtomicStructurePackage) (E : AtomicStructureEvidence A) : AtomicStructureClosed A := by
  exact And.intro E.coordinationDistributionClosed
    (And.intro E.bondAngleDistributionClosed E.pairCorrelationFunctionClosed)

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse