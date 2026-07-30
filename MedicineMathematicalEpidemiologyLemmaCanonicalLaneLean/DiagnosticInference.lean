import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

structure DiagnosticTest where
  sensitivity : Prop
  specificity : Prop
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop
  likelihoodRatioPositive : Prop
  likelihoodRatioNegative : Prop

structure DiagnosticTestEvidence (D : DiagnosticTest) where
  sensitivityClosed : D.sensitivity
  specificityClosed : D.specificity
  positivePredictiveValueClosed : D.positivePredictiveValue
  negativePredictiveValueClosed : D.negativePredictiveValue
  likelihoodRatioPositiveClosed : D.likelihoodRatioPositive
  likelihoodRatioNegativeClosed : D.likelihoodRatioNegative

def DiagnosticTestClosed (D : DiagnosticTest) : Prop :=
  D.sensitivity ∧ D.specificity ∧ D.positivePredictiveValue ∧
  D.negativePredictiveValue ∧ D.likelihoodRatioPositive ∧ D.likelihoodRatioNegative

theorem diagnostic_test_closed_from_evidence (D : DiagnosticTest)
    (E : DiagnosticTestEvidence D) : DiagnosticTestClosed D := by
  exact And.intro E.sensitivityClosed
    (And.intro E.specificityClosed
      (And.intro E.positivePredictiveValueClosed
        (And.intro E.negativePredictiveValueClosed
          (And.intro E.likelihoodRatioPositiveClosed E.likelihoodRatioNegativeClosed))))

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse