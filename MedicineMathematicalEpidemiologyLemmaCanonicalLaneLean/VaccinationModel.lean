import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

structure VaccinationModel where
  vaccineEfficacy : Prop
  vaccinationRate : Prop
  waningImmunity : Prop
  boosterEffect : Prop
  coverageFraction : Prop

structure VaccinationModelEvidence (V : VaccinationModel) where
  vaccineEfficacyClosed : V.vaccineEfficacy
  vaccinationRateClosed : V.vaccinationRate
  waningImmunityClosed : V.waningImmunity
  boosterEffectClosed : V.boosterEffect
  coverageFractionClosed : V.coverageFraction

def VaccinationModelClosed (V : VaccinationModel) : Prop :=
  V.vaccineEfficacy ∧ V.vaccinationRate ∧ V.waningImmunity ∧
  V.boosterEffect ∧ V.coverageFraction

theorem vaccination_model_closed_from_evidence (V : VaccinationModel) (E : VaccinationModelEvidence V) :
    VaccinationModelClosed V := by
  exact And.intro E.vaccineEfficacyClosed
    (And.intro E.vaccinationRateClosed
      (And.intro E.waningImmunityClosed
        (And.intro E.boosterEffectClosed E.coverageFractionClosed)))

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse