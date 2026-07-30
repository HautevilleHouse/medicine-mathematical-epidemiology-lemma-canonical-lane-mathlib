import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

structure ReproductionNumber where
  basicReproductionNumber : Prop
  effectiveReproductionNumber : Prop
  herdImmunityThreshold : Prop
  generationTime : Prop
  serialInterval : Prop

structure ReproductionNumberEvidence (R : ReproductionNumber) where
  basicReproductionNumberClosed : R.basicReproductionNumber
  effectiveReproductionNumberClosed : R.effectiveReproductionNumber
  herdImmunityThresholdClosed : R.herdImmunityThreshold
  generationTimeClosed : R.generationTime
  serialIntervalClosed : R.serialInterval

def ReproductionNumberClosed (R : ReproductionNumber) : Prop :=
  R.basicReproductionNumber ∧ R.effectiveReproductionNumber ∧
  R.herdImmunityThreshold ∧ R.generationTime ∧ R.serialInterval

theorem reproduction_number_closed_from_evidence (R : ReproductionNumber) (E : ReproductionNumberEvidence R) :
    ReproductionNumberClosed R := by
  exact And.intro E.basicReproductionNumberClosed
    (And.intro E.effectiveReproductionNumberClosed
      (And.intro E.herdImmunityThresholdClosed
        (And.intro E.generationTimeClosed E.serialIntervalClosed)))

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse