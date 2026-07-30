import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure ElasticityPackage where
  elasticConstantsDerived : Prop
  stressStrainRelationModeled : Prop
  anelasticResponseCaptured : Prop
  viscoelasticBehaviorIncluded : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  elasticConstantsDerivedClosed : E.elasticConstantsDerived
  stressStrainRelationModeledClosed : E.stressStrainRelationModeled
  anelasticResponseCapturedClosed : E.anelasticResponseCaptured
  viscoelasticBehaviorIncludedClosed : E.viscoelasticBehaviorIncluded

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.elasticConstantsDerived ∧ E.stressStrainRelationModeled ∧
  E.anelasticResponseCaptured ∧ E.viscoelasticBehaviorIncluded

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.elasticConstantsDerivedClosed
    (And.intro Ev.stressStrainRelationModeledClosed
      (And.intro Ev.anelasticResponseCapturedClosed Ev.viscoelasticBehaviorIncludedClosed))

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse