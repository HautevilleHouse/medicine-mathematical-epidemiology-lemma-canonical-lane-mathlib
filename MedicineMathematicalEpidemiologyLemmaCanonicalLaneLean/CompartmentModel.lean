import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

structure CompartmentModel where
  susceptible : Type u
  exposed : Type u
  infectious : Type u
  recovered : Type u
  transmissionRate : Prop
  incubationRate : Prop
  recoveryRate : Prop
  birthRate : Prop
  deathRate : Prop
  diseaseInducedMortality : Prop

structure CompartmentModelEvidence (M : CompartmentModel) where
  transmissionRateClosed : M.transmissionRate
  incubationRateClosed : M.incubationRate
  recoveryRateClosed : M.recoveryRate
  birthRateClosed : M.birthRate
  deathRateClosed : M.deathRate
  diseaseInducedMortalityClosed : M.diseaseInducedMortality

def CompartmentModelClosed (M : CompartmentModel) : Prop :=
  M.transmissionRate ∧ M.incubationRate ∧ M.recoveryRate ∧
  M.birthRate ∧ M.deathRate ∧ M.diseaseInducedMortality

theorem compartment_model_closed_from_evidence (M : CompartmentModel) (E : CompartmentModelEvidence M) :
    CompartmentModelClosed M := by
  exact And.intro E.transmissionRateClosed
    (And.intro E.incubationRateClosed
      (And.intro E.recoveryRateClosed
        (And.intro E.birthRateClosed
          (And.intro E.deathRateClosed E.diseaseInducedMortalityClosed))))

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse