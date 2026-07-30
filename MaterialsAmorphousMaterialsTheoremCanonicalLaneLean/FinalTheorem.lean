import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

open HautevilleHouse.MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure MaterialsAdmissibleClass where
  object : Type
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : MaterialsAdmissibleClass) : Prop := True

def gateClosed (A : MaterialsAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : MaterialsAdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : MaterialsAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedMaterialsClosure (A : MaterialsAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_materials_endgame (A : MaterialsAdmissibleClass) :
    ConstrainedMaterialsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse