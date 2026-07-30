import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsAmorphousMaterialsTheoremCanonicalLaneLean

structure ElasticPropertiesPackage where
  bulkModulus : ℝ
  shearModulus : ℝ
  youngsModulus : ℝ
  poissonRatio : ℝ
  elasticIsotropy : Prop

structure ElasticPropertiesEvidence (E : ElasticPropertiesPackage) where
  bulkModulusClosed : E.bulkModulus > 0.0
  shearModulusClosed : E.shearModulus > 0.0
  youngsModulusClosed : E.youngsModulus > 0.0
  poissonRatioClosed : E.poissonRatio > 0.0 ∧ E.poissonRatio < 0.5
  elasticIsotropyClosed : E.elasticIsotropy

def ElasticPropertiesClosed (E : ElasticPropertiesPackage) : Prop :=
  E.bulkModulus > 0.0 ∧ E.shearModulus > 0.0 ∧
  E.youngsModulus > 0.0 ∧ (E.poissonRatio > 0.0 ∧ E.poissonRatio < 0.5) ∧
  E.elasticIsotropy

theorem elastic_properties_closed_from_evidence (E : ElasticPropertiesPackage) (Ev : ElasticPropertiesEvidence E) : ElasticPropertiesClosed E := by
  exact And.intro Ev.bulkModulusClosed
    (And.intro Ev.shearModulusClosed
      (And.intro Ev.youngsModulusClosed
        (And.intro Ev.poissonRatioClosed Ev.elasticIsotropyClosed)))

end MaterialsAmorphousMaterialsTheoremCanonicalLaneLean
end HautevilleHouse