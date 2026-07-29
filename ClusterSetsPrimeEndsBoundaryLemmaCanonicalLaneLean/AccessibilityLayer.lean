import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusterSetsPrimeEndsBoundaryLemmaCanonicalLaneLean

structure AccessiblePointDatum where
  pointId : String
  primeEndId : String
  accessible : Bool
  boundary : String

def primitiveAccessiblePointDatum : AccessiblePointDatum := {
  pointId := "accessible_point_2",
  primeEndId := "prime_end_2",
  accessible := true,
  boundary := "unit_circle"
}

def accessibilityLayerClosed (a : AccessiblePointDatum) : Prop :=
  a.accessible = true ∧ a.boundary = "unit_circle"

theorem accessibility_layer_closed_checked :
    accessibilityLayerClosed primitiveAccessiblePointDatum := by
  exact And.intro rfl rfl

end ClusterSetsPrimeEndsBoundaryLemmaCanonicalLaneLean
end HautevilleHouse