import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean

structure OrganogenesisSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure OrganogenesisAdmittedObject where
  space : OrganogenesisSpace
  developmentalProcess : Prop
  geneRegulatoryNetwork : Prop
  cellFateDetermination : Prop
  organFormation : Prop
  conclusion : organFormation

def OrganogenesisWitnessClosed (O : OrganogenesisAdmittedObject) : Prop :=
  O.organFormation

end DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean
end HautevilleHouse