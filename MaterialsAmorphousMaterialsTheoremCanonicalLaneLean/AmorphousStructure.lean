import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure AmorphousStructure where
  atoms : Type u
  positions : atoms → Vector ℝ 3
  connectivity : atoms → atoms → Prop
  isAmorphous : Prop
  coordinationNumber : ℕ
  shortRangeOrder : Prop
  mediumRangeOrder : Prop

structure AmorphousStructureEvidence (S : AmorphousStructure) where
  isAmorphousClosed : S.isAmorphous
  coordinationNumberClosed : S.coordinationNumber > 0
  shortRangeOrderClosed : S.shortRangeOrder
  mediumRangeOrderClosed : S.mediumRangeOrder

def AmorphousStructureClosed (S : AmorphousStructure) : Prop :=
  S.isAmorphous ∧ S.shortRangeOrder ∧ S.mediumRangeOrder

theorem amorphous_structure_closed_from_evidence (S : AmorphousStructure)
    (E : AmorphousStructureEvidence S) : AmorphousStructureClosed S := by
  exact And.intro E.isAmorphousClosed
    (And.intro E.shortRangeOrderClosed E.mediumRangeOrderClosed)

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse