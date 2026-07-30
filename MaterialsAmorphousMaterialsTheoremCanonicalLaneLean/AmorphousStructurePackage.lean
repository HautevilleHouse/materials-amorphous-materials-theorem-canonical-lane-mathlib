import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure AmorphousStructurePackage where
  shortRangeOrderCharacterized : Prop
  mediumRangeOrderAnalyzed : Prop
  pairDistributionFunctionComputed : Prop
  structuralRelaxationModeled : Prop

structure AmorphousStructureEvidence (A : AmorphousStructurePackage) where
  shortRangeOrderCharacterizedClosed : A.shortRangeOrderCharacterized
  mediumRangeOrderAnalyzedClosed : A.mediumRangeOrderAnalyzed
  pairDistributionFunctionComputedClosed : A.pairDistributionFunctionComputed
  structuralRelaxationModeledClosed : A.structuralRelaxationModeled

def AmorphousStructureClosed (A : AmorphousStructurePackage) : Prop :=
  A.shortRangeOrderCharacterized ∧ A.mediumRangeOrderAnalyzed ∧
  A.pairDistributionFunctionComputed ∧ A.structuralRelaxationModeled

theorem amorphous_structure_closed_from_evidence (A : AmorphousStructurePackage) (E : AmorphousStructureEvidence A) :
    AmorphousStructureClosed A := by
  exact And.intro E.shortRangeOrderCharacterizedClosed
    (And.intro E.mediumRangeOrderAnalyzedClosed
      (And.intro E.pairDistributionFunctionComputedClosed E.structuralRelaxationModeledClosed))

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse