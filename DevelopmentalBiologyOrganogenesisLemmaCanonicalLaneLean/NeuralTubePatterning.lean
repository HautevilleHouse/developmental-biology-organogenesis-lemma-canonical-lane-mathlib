import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean

structure NeuralTubePatterningPackage where
  neuralPlateFormation : Prop
  dorsoventralPatterning : Prop
  neuralCrestMigration : Prop
  tubeClosure : Prop

structure NeuralTubePatterningEvidence (N : NeuralTubePatterningPackage) where
  neuralPlateFormationClosed : N.neuralPlateFormation
  dorsoventralPatterningClosed : N.dorsoventralPatterning
  neuralCrestMigrationClosed : N.neuralCrestMigration
  tubeClosureClosed : N.tubeClosure

def NeuralTubePatterningClosed (N : NeuralTubePatterningPackage) : Prop :=
  N.neuralPlateFormation ∧ N.dorsoventralPatterning ∧
  N.neuralCrestMigration ∧ N.tubeClosure

theorem neural_tube_patterning_closed_from_evidence (N : NeuralTubePatterningPackage)
    (E : NeuralTubePatterningEvidence N) : NeuralTubePatterningClosed N := by
  exact And.intro E.neuralPlateFormationClosed
    (And.intro E.dorsoventralPatterningClosed
      (And.intro E.neuralCrestMigrationClosed E.tubeClosureClosed))

end DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean
end HautevilleHouse