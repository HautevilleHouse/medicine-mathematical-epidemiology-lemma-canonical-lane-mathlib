import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

structure BasicReproductiveNumberPackage where
  transmissionRate : ℝ
  recoveryRate : ℝ
  basicReproNumber : ℝ

structure BasicReproductiveNumberEvidence (R : BasicReproductiveNumberPackage) where
  transmissionRatePositive : R.transmissionRate > 0
  recoveryRatePositive : R.recoveryRate > 0
  basicReproNumberDefined : R.basicReproNumber = R.transmissionRate / R.recoveryRate

def BasicReproductiveNumberClosed (R : BasicReproductiveNumberPackage) : Prop :=
  R.transmissionRate > 0 ∧ R.recoveryRate > 0 ∧ R.basicReproNumber = R.transmissionRate / R.recoveryRate

theorem basic_reproductive_number_closed_from_evidence
    (R : BasicReproductiveNumberPackage) (E : BasicReproductiveNumberEvidence R) :
    BasicReproductiveNumberClosed R := by
  exact And.intro E.transmissionRatePositive
    (And.intro E.recoveryRatePositive E.basicReproNumberDefined)

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse