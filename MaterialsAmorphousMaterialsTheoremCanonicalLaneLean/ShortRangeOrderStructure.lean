import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure ShortRangeOrderPackage where
  pairDistributionFunction : Prop
  coordinationNumber : Prop
  bondAngleDistribution : Prop
  chemicalShortRangeOrder : Prop
  topologicalShortRangeOrder : Prop

structure ShortRangeOrderEvidence (S : ShortRangeOrderPackage) where
  pairDistributionFunctionClosed : S.pairDistributionFunction
  coordinationNumberClosed : S.coordinationNumber
  bondAngleDistributionClosed : S.bondAngleDistribution
  chemicalShortRangeOrderClosed : S.chemicalShortRangeOrder
  topologicalShortRangeOrderClosed : S.topologicalShortRangeOrder

def ShortRangeOrderClosed (S : ShortRangeOrderPackage) : Prop :=
  S.pairDistributionFunction ∧ S.coordinationNumber ∧
  S.bondAngleDistribution ∧ S.chemicalShortRangeOrder ∧
  S.topologicalShortRangeOrder

theorem short_range_order_closed_from_evidence (S : ShortRangeOrderPackage)
    (E : ShortRangeOrderEvidence S) : ShortRangeOrderClosed S := by
  exact And.intro E.pairDistributionFunctionClosed
    (And.intro E.coordinationNumberClosed
      (And.intro E.bondAngleDistributionClosed
        (And.intro E.chemicalShortRangeOrderClosed
          E.topologicalShortRangeOrderClosed)))

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
