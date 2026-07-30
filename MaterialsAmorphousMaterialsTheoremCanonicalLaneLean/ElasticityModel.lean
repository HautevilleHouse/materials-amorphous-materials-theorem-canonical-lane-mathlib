import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure ElasticityPackage where
  elasticModuli : Type u
  stressStrainRelation : Type v
  linearElasticRegion : Prop
  yieldCriterion : Prop
  fractureToughness : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  linearElasticRegionClosed : E.linearElasticRegion
  yieldCriterionClosed : E.yieldCriterion
  fractureToughnessClosed : E.fractureToughness

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.linearElasticRegion ∧ E.yieldCriterion ∧ E.fractureToughness

theorem elasticity_closed_from_evidence
    (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.linearElasticRegionClosed
    (And.intro Ev.yieldCriterionClosed Ev.fractureToughnessClosed)

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse