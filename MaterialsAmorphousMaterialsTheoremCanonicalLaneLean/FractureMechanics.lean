import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  fractureToughness : ℝ
  stressIntensityFactor : ℝ
  crackGrowthResistance : ℝ
  fatigueThreshold : ℝ
  fractureCriterion : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureToughnessClosed : F.fractureToughness > 0.0
  stressIntensityFactorClosed : F.stressIntensityFactor > 0.0
  crackGrowthResistanceClosed : F.crackGrowthResistance ≥ 0.0
  fatigueThresholdClosed : F.fatigueThreshold > 0.0
  fractureCriterionClosed : F.fractureCriterion

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureToughness > 0.0 ∧ F.stressIntensityFactor > 0.0 ∧
  F.crackGrowthResistance ≥ 0.0 ∧ F.fatigueThreshold > 0.0 ∧
  F.fractureCriterion

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.fractureToughnessClosed
    (And.intro E.stressIntensityFactorClosed
      (And.intro E.crackGrowthResistanceClosed
        (And.intro E.fatigueThresholdClosed E.fractureCriterionClosed)))

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse