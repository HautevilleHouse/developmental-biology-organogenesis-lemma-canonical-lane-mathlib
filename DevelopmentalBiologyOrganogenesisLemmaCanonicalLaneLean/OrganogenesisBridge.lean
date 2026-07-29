import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean.GeneRegulatoryNetwork
import HautevilleHouse.DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean.SignalingPathway
import HautevilleHouse.DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean.MorphogenGradient
import HautevilleHouse.DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean.CellDifferentiation

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeneRegulatoryNetworkClosed A.object.grn ∧
  SignalingPathwayClosed A.object.pathway ∧
  MorphogenGradientClosed A.object.gradient ∧
  CellDifferentiationClosed A.object.differentiation

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedOrganogenesisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_organogenesis_endgame (A : AdmissibleClass) :
    ConstrainedOrganogenesisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean
end HautevilleHouse
