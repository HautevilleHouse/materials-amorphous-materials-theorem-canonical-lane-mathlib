import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure RadialDistributionFunction where
  r : ℝ → ℝ
  g_r : ℝ → ℝ
  firstPeakPosition : ℝ
  firstPeakHeight : ℝ
  coordinationNumber : ℕ
  amorphousSignature : Prop

structure RadialDistributionFunctionEvidence (R : RadialDistributionFunction) where
  firstPeakPositionClosed : R.firstPeakPosition > 0
  firstPeakHeightClosed : R.firstPeakHeight > 0
  coordinationNumberClosed : R.coordinationNumber > 0
  amorphousSignatureClosed : R.amorphousSignature

def RadialDistributionFunctionClosed (R : RadialDistributionFunction) : Prop :=
  R.firstPeakPosition > 0 ∧ R.firstPeakHeight > 0 ∧ R.coordinationNumber > 0 ∧ R.amorphousSignature

theorem radial_distribution_function_closed_from_evidence
    (R : RadialDistributionFunction) (E : RadialDistributionFunctionEvidence R) :
    RadialDistributionFunctionClosed R := by
  exact And.intro E.firstPeakPositionClosed
    (And.intro E.firstPeakHeightClosed
      (And.intro E.coordinationNumberClosed E.amorphousSignatureClosed))

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse