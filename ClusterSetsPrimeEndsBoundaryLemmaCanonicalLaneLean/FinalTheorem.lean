import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClusterSetsPrimeEndsBoundaryLemmaCanonicalLaneLean.BoundaryMappingLayer
import HautevilleHouse.ClusterSetsPrimeEndsBoundaryLemmaCanonicalLaneLean.PrimeEndMappingLayer

namespace HautevilleHouse
namespace ClusterSetsPrimeEndsBoundaryLemmaCanonicalLaneLean

def ConstrainedClusterSetPrimeEndClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClusterSetBoundaryClosed primitiveClusterSetDatum

def NativeClosureTheorem (A : AdmissibleClass) : Prop :=
  ConstrainedClusterSetPrimeEndClosure A

theorem constrained_cluster_set_prime_end_closure (A : AdmissibleClass) :
    ConstrainedClusterSetPrimeEndClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) primitive_cluster_set_boundary_closed_checked)

theorem native_closure_theorem_checked (A : AdmissibleClass) :
    NativeClosureTheorem A := by
  exact constrained_cluster_set_prime_end_closure A

end ClusterSetsPrimeEndsBoundaryLemmaCanonicalLaneLean
end HautevilleHouse
