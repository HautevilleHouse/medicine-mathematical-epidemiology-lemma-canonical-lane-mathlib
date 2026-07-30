import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

structure SurvivalModel where
  hazardFunction : Prop
  survivalFunction : Prop
  kaplanMeierEstimator : Prop
  coxProportionalHazards : Prop
  logRankTest : Prop

structure SurvivalModelEvidence (S : SurvivalModel) where
  hazardFunctionClosed : S.hazardFunction
  survivalFunctionClosed : S.survivalFunction
  kaplanMeierEstimatorClosed : S.kaplanMeierEstimator
  coxProportionalHazardsClosed : S.coxProportionalHazards
  logRankTestClosed : S.logRankTest

def SurvivalModelClosed (S : SurvivalModel) : Prop :=
  S.hazardFunction ∧ S.survivalFunction ∧ S.kaplanMeierEstimator ∧
  S.coxProportionalHazards ∧ S.logRankTest

theorem survival_model_closed_from_evidence (S : SurvivalModel)
    (E : SurvivalModelEvidence S) : SurvivalModelClosed S := by
  exact And.intro E.hazardFunctionClosed
    (And.intro E.survivalFunctionClosed
      (And.intro E.kaplanMeierEstimatorClosed
        (And.intro E.coxProportionalHazardsClosed E.logRankTestClosed)))

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse