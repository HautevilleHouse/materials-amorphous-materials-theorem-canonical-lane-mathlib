import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure MechanicalProperties where
  elasticModulus : ℝ
  yieldStrength : ℝ
  fractureToughness : ℝ
  ductility : Prop
  amorphousCharacteristic : Prop

structure MechanicalPropertiesEvidence (M : MechanicalProperties) where
  elasticModulusClosed : M.elasticModulus > 0
  yieldStrengthClosed : M.yieldStrength > 0
  fractureToughnessClosed : M.fractureToughness > 0
  ductilityClosed : M.ductility
  amorphousCharacteristicClosed : M.amorphousCharacteristic

def MechanicalPropertiesClosed (M : MechanicalProperties) : Prop :=
  M.elasticModulus > 0 ∧ M.yieldStrength > 0 ∧ M.fractureToughness > 0 ∧ M.ductility ∧ M.amorphousCharacteristic

theorem mechanical_properties_closed_from_evidence (M : MechanicalProperties)
    (E : MechanicalPropertiesEvidence M) : MechanicalPropertiesClosed M := by
  exact And.intro E.elasticModulusClosed
    (And.intro E.yieldStrengthClosed
      (And.intro E.fractureToughnessClosed
        (And.intro E.ductilityClosed E.amorphousCharacteristicClosed)))

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse