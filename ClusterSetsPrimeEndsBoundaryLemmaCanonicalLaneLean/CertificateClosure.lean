import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClusterSetsPrimeEndsBoundaryLemmaCanonicalLaneLean

def boundaryLemmaAdmittedObject : AdmittedTheoremObject :=
  { object := {
      sourceKey := "cluster-sets-prime-ends-boundary-lemma-canonical-lane",
      theoremObject := "Cluster Sets Prime Ends Boundary Lemma",
      claimBoundary := "Boundary lemma for cluster sets via prime ends"
    },
    substrate := {
      operatorCarrier := Unit,
      spectralSet := Set.univ,
      invariantOrSelfAdjointGate := ClusterSetLayerClosed clusterSetLayerCertificate,
      spectralPersistenceBridge := PrimeEndLayerClosed primeEndLayerCertificate,
      sourceBoundaryLedger := Set.univ
    },
    localWitness := "Boundary lemma certificate with cluster set and prime end layers",
    bridgeEvidence := "source-derived Lean certificate fields and boundary lemma layers",
    operatorModelChecked := ClusterSetLayerClosed clusterSetLayerCertificate,
    operatorModelWitness := cluster_set_layer_closed_checked,
    spectralPersistenceBridgeChecked := PrimeEndLayerClosed primeEndLayerCertificate,
    spectralPersistenceBridgeWitness := prime_end_layer_closed_checked,
    sourceBoundaryLedgerChecked := ClassicalSourceBoundaryCarried,
    sourceBoundaryLedgerWitness := classical_source_boundary_carried_checked,
    classicalRemainderCarried := rfl,
    sourceKeyChecked := rfl,
    theoremObjectChecked := rfl
  }

def boundaryLemmaAdmissibleClass : AdmissibleClass :=
  { object := boundaryLemmaAdmittedObject,
    endpointSatisfied := BoundaryLemmaLayerClosed boundaryLemmaLayerCertificate,
    remainderRecorded := ClassicalSourceBoundaryCarried,
    gateWitness := Or.inl boundary_lemma_layer_closed_checked
  }

def ConstrainedBoundaryLemmaClosure : Prop :=
  ConstrainedTheoremClosure boundaryLemmaAdmissibleClass

theorem constrained_boundary_lemma_closure_checked :
    ConstrainedBoundaryLemmaClosure := by
  exact constrained_theorem_closure boundaryLemmaAdmissibleClass

theorem classical_boundary_carried_checked :
    ClassicalSourceBoundaryCarried ∧ boundaryLemmaLayerCertificate.classicalRemainderCarried = true := by
  exact And.intro classical_source_boundary_carried_checked rfl

end ClusterSetsPrimeEndsBoundaryLemmaCanonicalLaneLean
end HautevilleHouse