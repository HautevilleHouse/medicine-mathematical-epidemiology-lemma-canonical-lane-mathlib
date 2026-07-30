import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

structure EndemicEquilibriumPackage where
  diseaseFreeEquilibrium : Prop
  endemicEquilibrium : Prop
  basicReproductionThreshold : Prop
  stabilityCondition : Prop

structure EndemicEquilibriumEvidence (E : EndemicEquilibriumPackage) where
  diseaseFreeEquilibriumClosed : E.diseaseFreeEquilibrium
  endemicEquilibriumClosed : E.endemicEquilibrium
  basicReproductionThresholdClosed : E.basicReproductionThreshold
  stabilityConditionClosed : E.stabilityCondition

def EndemicEquilibriumClosed (E : EndemicEquilibriumPackage) : Prop :=
  E.diseaseFreeEquilibrium ∧ E.endemicEquilibrium ∧
  E.basicReproductionThreshold ∧ E.stabilityCondition

theorem endemic_equilibrium_closed_from_evidence (E : EndemicEquilibriumPackage)
    (Ev : EndemicEquilibriumEvidence E) : EndemicEquilibriumClosed E := by
  exact And.intro Ev.diseaseFreeEquilibriumClosed
    (And.intro Ev.endemicEquilibriumClosed
      (And.intro Ev.basicReproductionThresholdClosed Ev.stabilityConditionClosed))

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse