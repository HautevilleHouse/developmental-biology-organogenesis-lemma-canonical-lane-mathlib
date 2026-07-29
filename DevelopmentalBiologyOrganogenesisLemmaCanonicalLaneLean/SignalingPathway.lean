import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean

structure SignalingPathway where
  components : List String
  signalTransduction : Prop
  downstreamEffects : Prop
  transductionClosed : signalTransduction
  effectsClosed : downstreamEffects

structure SignalingPathwayEvidence (S : SignalingPathway) where
  signalTransductionTerm : S.signalTransduction
  downstreamEffectsTerm : S.downstreamEffects

def SignalingPathwayClosed (S : SignalingPathway) : Prop :=
  S.signalTransduction ∧ S.downstreamEffects

theorem signaling_pathway_closed_from_evidence (S : SignalingPathway)
    (E : SignalingPathwayEvidence S) : SignalingPathwayClosed S := by
  exact And.intro E.signalTransductionTerm E.downstreamEffectsTerm

end DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean
end HautevilleHouse
