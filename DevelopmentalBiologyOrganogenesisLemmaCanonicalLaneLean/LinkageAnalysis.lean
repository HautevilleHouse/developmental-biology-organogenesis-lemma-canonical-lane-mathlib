import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean

structure LinkageAnalysisPackage where
  markerRecombFreq : Float
  lodScore : Float
  numMeioses : Nat

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  recombinFreqInRange : 0.0 ≤ L.markerRecombFreq ∧ L.markerRecombFreq ≤ 0.5
  lodScorePositive : L.lodScore > 0.0
  meiosesSufficient : L.numMeioses ≥ 10

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  (0.0 ≤ L.markerRecombFreq ∧ L.markerRecombFreq ≤ 0.5) ∧
  L.lodScore > 0.0 ∧
  L.numMeioses ≥ 10

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.recombinFreqInRange (And.intro E.lodScorePositive E.meiosesSufficient)

end DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean
end HautevilleHouse
