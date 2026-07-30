import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseBoundariesMeasured : Prop
  thermodynamicStabilityMapped : Prop
  glassTransitionIdentified : Prop
  metastablePhasesCharacterized : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesMeasuredClosed : P.phaseBoundariesMeasured
  thermodynamicStabilityMappedClosed : P.thermodynamicStabilityMapped
  glassTransitionIdentifiedClosed : P.glassTransitionIdentified
  metastablePhasesCharacterizedClosed : P.metastablePhasesCharacterized

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundariesMeasured ∧ P.thermodynamicStabilityMapped ∧
  P.glassTransitionIdentified ∧ P.metastablePhasesCharacterized

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesMeasuredClosed
    (And.intro E.thermodynamicStabilityMappedClosed
      (And.intro E.glassTransitionIdentifiedClosed E.metastablePhasesCharacterizedClosed))

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse