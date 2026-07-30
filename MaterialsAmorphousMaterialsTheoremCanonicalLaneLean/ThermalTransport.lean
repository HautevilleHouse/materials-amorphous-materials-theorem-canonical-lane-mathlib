import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure ThermalTransportPackage where
  thermalConductivity : Type u
  specificHeat : Type v
  phononMeanFreePath : Type w
  thermalDiffusivity : Prop
  heatCapacityJump : Prop
  temperatureDependence : Prop

structure ThermalTransportEvidence (T : ThermalTransportPackage) where
  thermalDiffusivityClosed : T.thermalDiffusivity
  heatCapacityJumpClosed : T.heatCapacityJump
  temperatureDependenceClosed : T.temperatureDependence

def ThermalTransportClosed (T : ThermalTransportPackage) : Prop :=
  T.thermalDiffusivity ∧ T.heatCapacityJump ∧ T.temperatureDependence

theorem thermal_transport_closed_from_evidence
    (T : ThermalTransportPackage) (E : ThermalTransportEvidence T) :
    ThermalTransportClosed T := by
  exact And.intro E.thermalDiffusivityClosed
    (And.intro E.heatCapacityJumpClosed E.temperatureDependenceClosed)

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse