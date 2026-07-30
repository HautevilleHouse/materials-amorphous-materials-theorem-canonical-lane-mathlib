import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure AmorphousAdmissibleClass where
  object : AmorphousAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AmorphousAdmissibleClass) : Prop :=
  AmorphousWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
