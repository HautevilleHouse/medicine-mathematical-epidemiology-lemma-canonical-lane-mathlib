import canonicalLaneMathlib.AdmissibleClass
import MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean.BridgeLemmas
import MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

def ConstrainedEpidemiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_epidemiology_endgame (A : AdmissibleClass) :
    ConstrainedEpidemiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse