import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClusterSetsPrimeEndsBoundaryLemmaCanonicalLaneLean.ClusterSetDatum

namespace HautevilleHouse
namespace ClusterSetsPrimeEndsBoundaryLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClusterSetsPrimeEndsBoundaryLemmaCanonicalLaneLean
end HautevilleHouse
