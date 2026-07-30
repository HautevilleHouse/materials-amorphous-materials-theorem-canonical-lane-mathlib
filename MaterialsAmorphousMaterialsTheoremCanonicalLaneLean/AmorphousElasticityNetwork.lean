import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure ElasticityNetworkPackage where
  interatomicPotential : Prop
  elasticModulus : Prop
  strainEnergyDensity : Prop
  cohesiveZoneModel : Prop
  fractureToughness : Prop

structure ElasticityNetworkEvidence (E : ElasticityNetworkPackage) where
  interatomicPotentialClosed : E.interatomicPotential
  elasticModulusClosed : E.elasticModulus
  strainEnergyDensityClosed : E.strainEnergyDensity
  cohesiveZoneModelClosed : E.cohesiveZoneModel
  fractureToughnessClosed : E.fractureToughness

def ElasticityNetworkClosed (E : ElasticityNetworkPackage) : Prop :=
  E.interatomicPotential ∧ E.elasticModulus ∧
  E.strainEnergyDensity ∧ E.cohesiveZoneModel ∧
  E.fractureToughness

theorem elasticity_network_closed_from_evidence (E : ElasticityNetworkPackage)
    (Ev : ElasticityNetworkEvidence E) : ElasticityNetworkClosed E := by
  exact And.intro Ev.interatomicPotentialClosed
    (And.intro Ev.elasticModulusClosed
      (And.intro Ev.strainEnergyDensityClosed
        (And.intro Ev.cohesiveZoneModelClosed
          Ev.fractureToughnessClosed)))

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
