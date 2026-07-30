import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure AmorphousMaterialPackage where
  atomicConfiguration : Type u
  pairCorrelationFunction : Type v
  densityOfStates : Type w
  structuralDisorder : Prop
  shortRangeOrder : Prop
  mediumRangeOrder : Prop

structure AmorphousMaterialEvidence (P : AmorphousMaterialPackage) where
  structuralDisorderClosed : P.structuralDisorder
  shortRangeOrderClosed : P.shortRangeOrder
  mediumRangeOrderClosed : P.mediumRangeOrder

def AmorphousMaterialClosed (P : AmorphousMaterialPackage) : Prop :=
  P.structuralDisorder ∧ P.shortRangeOrder ∧ P.mediumRangeOrder

theorem amorphous_material_closed_from_evidence
    (P : AmorphousMaterialPackage) (E : AmorphousMaterialEvidence P) :
    AmorphousMaterialClosed P := by
  exact And.intro E.structuralDisorderClosed
    (And.intro E.shortRangeOrderClosed E.mediumRangeOrderClosed)

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse