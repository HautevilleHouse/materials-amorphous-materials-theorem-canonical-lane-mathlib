import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure ThermodynamicStabilityPackage where
  enthalpyDifference : ℝ
  configurationalEntropy : ℝ
  glassTransitionTemperature : ℝ
  crystallizationBarrier : ℝ
  stabilityCriterion : Prop

structure ThermodynamicStabilityEvidence (T : ThermodynamicStabilityPackage) where
  enthalpyDifferenceClosed : T.enthalpyDifference = 0.0
  configurationalEntropyClosed : T.configurationalEntropy > 0.0
  glassTransitionTemperatureClosed : T.glassTransitionTemperature > 0.0
  crystallizationBarrierClosed : T.crystallizationBarrier > 0.0
  stabilityCriterionClosed : T.stabilityCriterion

def ThermodynamicStabilityClosed (T : ThermodynamicStabilityPackage) : Prop :=
  T.enthalpyDifference = 0.0 ∧ T.configurationalEntropy > 0.0 ∧
  T.glassTransitionTemperature > 0.0 ∧ T.crystallizationBarrier > 0.0 ∧
  T.stabilityCriterion

theorem thermodynamic_stability_closed_from_evidence (T : ThermodynamicStabilityPackage) (E : ThermodynamicStabilityEvidence T) : ThermodynamicStabilityClosed T := by
  exact And.intro E.enthalpyDifferenceClosed
    (And.intro E.configurationalEntropyClosed
      (And.intro E.glassTransitionTemperatureClosed
        (And.intro E.crystallizationBarrierClosed E.stabilityCriterionClosed)))

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse