import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean

structure SequenceAlignmentPackage where
  queryLength : Nat
  targetLength : Nat
  matchScore : Float
  mismatchPenalty : Float
  gapPenalty : Float
  alignmentScore : Float
  identityPercent : Float
  expectValue : Float

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  lengthsPositive : S.queryLength > 0 ∧ S.targetLength > 0
  scorePositive : S.alignmentScore > 0.0
  identityAboveThreshold : S.identityPercent ≥ 30.0
  expectValueBelowThreshold : S.expectValue < 1e-5

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  (S.queryLength > 0 ∧ S.targetLength > 0) ∧
  S.alignmentScore > 0.0 ∧
  S.identityPercent ≥ 30.0 ∧
  S.expectValue < 1e-5

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.lengthsPositive (And.intro E.scorePositive (And.intro E.identityAboveThreshold E.expectValueBelowThreshold))

end DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean
end HautevilleHouse
