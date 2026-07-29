import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean

structure CellDifferentiationPackage where
  cellTypes : Type
  lineageSpecification : Prop
  differentiationPathways : Prop
  commitmentStability : Prop

structure CellDifferentiationEvidence (D : CellDifferentiationPackage) where
  lineageSpecificationClosed : D.lineageSpecification
  differentiationPathwaysClosed : D.differentiationPathways
  commitmentStabilityClosed : D.commitmentStability

def CellDifferentiationClosed (D : CellDifferentiationPackage) : Prop :=
  D.lineageSpecification ∧ D.differentiationPathways ∧ D.commitmentStability

theorem cell_differentiation_closed_from_evidence (D : CellDifferentiationPackage)
    (E : CellDifferentiationEvidence D) : CellDifferentiationClosed D := by
  exact And.intro E.lineageSpecificationClosed
    (And.intro E.differentiationPathwaysClosed E.commitmentStabilityClosed)

end DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean
end HautevilleHouse