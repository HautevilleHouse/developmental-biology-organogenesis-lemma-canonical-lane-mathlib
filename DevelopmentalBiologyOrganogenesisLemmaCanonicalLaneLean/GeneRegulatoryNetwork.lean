import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  transcriptionFactor : Type u
  targetGene : Type v
  enhancerBound : Prop
  chromatinOpened : Prop
  transcriptionInitiated : Prop
  mrnaProcessed : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  enhancerBoundClosed : G.enhancerBound
  chromatinOpenedClosed : G.chromatinOpened
  transcriptionInitiatedClosed : G.transcriptionInitiated
  mrnaProcessedClosed : G.mrnaProcessed

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.enhancerBound ∧ G.chromatinOpened ∧ G.transcriptionInitiated ∧ G.mrnaProcessed

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.enhancerBoundClosed
    (And.intro E.chromatinOpenedClosed
      (And.intro E.transcriptionInitiatedClosed E.mrnaProcessedClosed))

end DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean
end HautevilleHouse