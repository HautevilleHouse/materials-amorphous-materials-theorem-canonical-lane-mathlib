import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  crackPropagationCriteriaFormulated : Prop
  stressIntensityFactorComputed : Prop
  fractureToughnessDetermined : Prop
  failureEnvelopeDefined : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackPropagationCriteriaFormulatedClosed : F.crackPropagationCriteriaFormulated
  stressIntensityFactorComputedClosed : F.stressIntensityFactorComputed
  fractureToughnessDeterminedClosed : F.fractureToughnessDetermined
  failureEnvelopeDefinedClosed : F.failureEnvelopeDefined

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackPropagationCriteriaFormulated ∧ F.stressIntensityFactorComputed ∧
  F.fractureToughnessDetermined ∧ F.failureEnvelopeDefined

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.crackPropagationCriteriaFormulatedClosed
    (And.intro E.stressIntensityFactorComputedClosed
      (And.intro E.fractureToughnessDeterminedClosed E.failureEnvelopeDefinedClosed))

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse