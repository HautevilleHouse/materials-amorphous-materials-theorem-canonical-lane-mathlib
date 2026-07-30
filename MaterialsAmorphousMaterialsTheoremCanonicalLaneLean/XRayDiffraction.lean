import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure XRayDiffractionPattern where
  scatteringVector : ℝ
  intensity : ℝ → ℝ
  structureFactor : ℂ
  pairDistributionFunction : ℝ → ℝ
  reducedRadialDistribution : ℝ → ℝ

def AmorphousDiffractionEvidence (p : XRayDiffractionPattern) : Prop :=
  (∃ q, p.scatteringVector = q) ∧ (∀ r, p.pairDistributionFunction r ≥ 0)

structure XRayDiffractionPackage where
  pattern : XRayDiffractionPattern
  diffractionClosed : AmorphousDiffractionEvidence pattern
  qRangeCovered : ℝ × ℝ
  resolutionSufficient : Prop

structure XRayDiffractionEvidence (X : XRayDiffractionPackage) where
  diffractionClosedClosed : X.diffractionClosed
  resolutionSufficientClosed : X.resolutionSufficient

def XRayDiffractionClosed (X : XRayDiffractionPackage) : Prop :=
  X.diffractionClosed ∧ X.resolutionSufficient

theorem xray_diffraction_closed_from_evidence (X : XRayDiffractionPackage)
    (E : XRayDiffractionEvidence X) : XRayDiffractionClosed X := by
  exact And.intro E.diffractionClosedClosed E.resolutionSufficientClosed

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse