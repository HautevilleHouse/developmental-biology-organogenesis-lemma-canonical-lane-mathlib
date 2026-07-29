import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean

structure HardyWeinbergPackage where
  populationSize : Nat
  alleleFrequencies : (Float × Float)
  expectedGenotypeFrequencies : (Float × Float × Float)
  observedGenotypeFrequencies : (Float × Float × Float)
  chiSquaredStatistic : Float
  degreesFreedom : Nat

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  populationSizePositive : H.populationSize > 0
  alleleFrequenciesSumToOne : H.alleleFrequencies.1 + H.alleleFrequencies.2 = 1.0
  expectedComputedCorrectly : H.expectedGenotypeFrequencies = (H.alleleFrequencies.1 * H.alleleFrequencies.1, 2.0 * H.alleleFrequencies.1 * H.alleleFrequencies.2, H.alleleFrequencies.2 * H.alleleFrequencies.2)
  chiSquaredBelowThreshold : H.chiSquaredStatistic < 3.841  -- 0.05 significance level, 1 df

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.populationSize > 0 ∧
  H.alleleFrequencies.1 + H.alleleFrequencies.2 = 1.0 ∧
  H.expectedGenotypeFrequencies = (H.alleleFrequencies.1 * H.alleleFrequencies.1, 2.0 * H.alleleFrequencies.1 * H.alleleFrequencies.2, H.alleleFrequencies.2 * H.alleleFrequencies.2) ∧
  H.chiSquaredStatistic < 3.841

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergPackage) (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.populationSizePositive (And.intro E.alleleFrequenciesSumToOne (And.intro E.expectedComputedCorrectly E.chiSquaredBelowThreshold))

end DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean
end HautevilleHouse
