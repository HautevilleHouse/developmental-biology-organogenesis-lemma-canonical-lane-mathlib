import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean

structure AdmittedOrganogenesisObject where
  organism : Type u
  organSystem : Prop
  developmentProcess : Prop
  signalingPathways : Prop
  geneRegulatoryNetwork : Prop
  conclusion : organSystem

def OrganogenesisWitnessClosed (O : AdmittedOrganogenesisObject) : Prop :=
  O.organSystem

end DevelopmentalBiologyOrganogenesisLemmaCanonicalLaneLean
end HautevilleHouse
