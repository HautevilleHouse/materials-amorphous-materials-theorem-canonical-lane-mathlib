import canonicalLaneMathlib.AdmissibleClass
namespace HautevilleHouse
namespace materials_amorphous_materials_theorem_canonical_lane_mathlib
def AdmissibleClass : Type := canonicalLaneMathlib.AdmissibleClass
def bridgeClosed (A : AdmissibleClass) : Prop := True
def gateClosed (A : AdmissibleClass) : Prop := True
def bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := trivial
def gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := trivial
end materials_amorphous_materials_theorem_canonical_lane_mathlib
end HautevilleHouse
