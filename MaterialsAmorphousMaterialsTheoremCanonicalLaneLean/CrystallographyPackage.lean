import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLatticeClassified : Prop
  spaceGroupDetermined : Prop
  diffractionPatternPredicted : Prop
  longRangeOrderPresent : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  spaceGroupDeterminedClosed : C.spaceGroupDetermined
  diffractionPatternPredictedClosed : C.diffractionPatternPredicted
  longRangeOrderPresentClosed : C.longRangeOrderPresent

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeClassified ∧ C.spaceGroupDetermined ∧
  C.diffractionPatternPredicted ∧ C.longRangeOrderPresent

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClassifiedClosed
    (And.intro E.spaceGroupDeterminedClosed
      (And.intro E.diffractionPatternPredictedClosed E.longRangeOrderPresentClosed))

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse