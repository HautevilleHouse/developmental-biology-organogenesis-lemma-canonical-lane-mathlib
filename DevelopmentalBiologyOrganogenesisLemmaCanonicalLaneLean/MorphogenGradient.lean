import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogen : Type u
  sourceLocation : Prop
  concentrationGradient : Prop
  receptorBindingAffinity : Prop
  positionalIdentitySpecified : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  sourceLocationClosed : M.sourceLocation
  concentrationGradientClosed : M.concentrationGradient
  receptorBindingAffinityClosed : M.receptorBindingAffinity
  positionalIdentitySpecifiedClosed : M.positionalIdentitySpecified

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.sourceLocation ∧ M.concentrationGradient ∧ M.receptorBindingAffinity ∧ M.positionalIdentitySpecified

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientPackage)
    (E : MorphogenGradientEvidence M) : MorphogenGradientClosed M := by
  exact And.intro E.sourceLocationClosed
    (And.intro E.concentrationGradientClosed
      (And.intro E.receptorBindingAffinityClosed E.positionalIdentitySpecifiedClosed))

end DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean
end HautevilleHouse