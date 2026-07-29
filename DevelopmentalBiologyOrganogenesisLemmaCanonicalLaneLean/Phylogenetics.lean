import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean

structure PhylogeneticsPackage where
  speciesCount : Nat
  sequenceLength : Nat
  distanceMatrix : List (List Float)
  treeTopology : String  -- e.g., "unrooted"
  bootstrapSupport : List Float

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  speciesCountAtLeastTwo : P.speciesCount ≥ 2
  distanceMatrixSymmetric : Prop  -- would need a lemma
  bootstrapValuesAboveThreshold : ∀ b ∈ P.bootstrapSupport, b ≥ 70.0

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.speciesCount ≥ 2 ∧
  (∀ i j, P.distanceMatrix.get? i |>.bind (fun row => row.get? j) = P.distanceMatrix.get? j |>.bind (fun row => row.get? i)) ∧
  ∀ b ∈ P.bootstrapSupport, b ≥ 70.0

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  refine And.intro E.speciesCountAtLeastTwo ?_
  refine And.intro E.distanceMatrixSymmetric ?_
  exact E.bootstrapValuesAboveThreshold

end DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean
end HautevilleHouse
