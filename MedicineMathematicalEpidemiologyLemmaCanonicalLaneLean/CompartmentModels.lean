import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

structure CompartmentModel where
  susceptible : Type u
  infected : Type v
  recovered : Type w
  transmissionRate : Prop
  recoveryRate : Prop
  diseaseFreeEquilibrium : Prop
  endemicEquilibrium : Prop
  basicReproductionNumber : Prop

structure CompartmentModelEvidence (M : CompartmentModel) where
  transmissionRateClosed : M.transmissionRate
  recoveryRateClosed : M.recoveryRate
  diseaseFreeEquilibriumClosed : M.diseaseFreeEquilibrium
  endemicEquilibriumClosed : M.endemicEquilibrium
  basicReproductionNumberClosed : M.basicReproductionNumber

def CompartmentModelClosed (M : CompartmentModel) : Prop :=
  M.transmissionRate ∧ M.recoveryRate ∧ M.diseaseFreeEquilibrium ∧
  M.endemicEquilibrium ∧ M.basicReproductionNumber

theorem compartment_model_closed_from_evidence (M : CompartmentModel)
    (E : CompartmentModelEvidence M) : CompartmentModelClosed M := by
  exact And.intro E.transmissionRateClosed
    (And.intro E.recoveryRateClosed
      (And.intro E.diseaseFreeEquilibriumClosed
        (And.intro E.endemicEquilibriumClosed E.basicReproductionNumberClosed)))

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse