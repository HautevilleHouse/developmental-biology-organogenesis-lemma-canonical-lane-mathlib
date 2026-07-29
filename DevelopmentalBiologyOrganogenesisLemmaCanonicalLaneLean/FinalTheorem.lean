import HautevilleHouse.DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean

def ConstrainedDevelopmentalBiologyOrganogenesisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_developmental_biology_organogenesis_endgame (A : AdmissibleClass) : ConstrainedDevelopmentalBiologyOrganogenesisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean
end HautevilleHouse
