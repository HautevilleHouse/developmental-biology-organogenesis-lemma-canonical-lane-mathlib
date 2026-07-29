import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean

structure HeartTubeFormationPackage where
  cardiogenicMesoderm : Prop
  heartFieldSpecification : Prop
  tubeFusion : Prop
  loopingMorphogenesis : Prop

structure HeartTubeFormationEvidence (H : HeartTubeFormationPackage) where
  cardiogenicMesodermClosed : H.cardiogenicMesoderm
  heartFieldSpecificationClosed : H.heartFieldSpecification
  tubeFusionClosed : H.tubeFusion
  loopingMorphogenesisClosed : H.loopingMorphogenesis

def HeartTubeFormationClosed (H : HeartTubeFormationPackage) : Prop :=
  H.cardiogenicMesoderm ∧ H.heartFieldSpecification ∧
  H.tubeFusion ∧ H.loopingMorphogenesis

theorem heart_tube_formation_closed_from_evidence (H : HeartTubeFormationPackage)
    (E : HeartTubeFormationEvidence H) : HeartTubeFormationClosed H := by
  exact And.intro E.cardiogenicMesodermClosed
    (And.intro E.heartFieldSpecificationClosed
      (And.intro E.tubeFusionClosed E.loopingMorphogenesisClosed))

end DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean
end HautevilleHouse