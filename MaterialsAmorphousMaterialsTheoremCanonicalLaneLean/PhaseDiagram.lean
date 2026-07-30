import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  glassTransitionTemperature : Prop
  meltingTemperature : Prop
  phaseBoundaries : Prop
  metastablePhases : Prop
  liquidusLine : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  glassTransitionTemperatureClosed : P.glassTransitionTemperature
  meltingTemperatureClosed : P.meltingTemperature
  phaseBoundariesClosed : P.phaseBoundaries
  metastablePhasesClosed : P.metastablePhases
  liquidusLineClosed : P.liquidusLine

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.glassTransitionTemperature ∧ P.meltingTemperature ∧ P.phaseBoundaries ∧
  P.metastablePhases ∧ P.liquidusLine

theorem phase_diagram_closed_from_evidence
    (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.glassTransitionTemperatureClosed
    (And.intro E.meltingTemperatureClosed
      (And.intro E.phaseBoundariesClosed
        (And.intro E.metastablePhasesClosed E.liquidusLineClosed)))

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse