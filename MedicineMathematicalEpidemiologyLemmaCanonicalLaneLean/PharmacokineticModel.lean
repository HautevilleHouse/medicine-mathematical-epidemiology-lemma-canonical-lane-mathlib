import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

structure PharmacokineticModel where
  drugConcentration : Type u
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  bioavailability : Prop
  halfLife : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModel) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  bioavailabilityClosed : P.bioavailability
  halfLifeClosed : P.halfLife

def PharmacokineticModelClosed (P : PharmacokineticModel) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationRate ∧
  P.bioavailability ∧ P.halfLife

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModel) (E : PharmacokineticModelEvidence P) :
    PharmacokineticModelClosed P := by
  exact And.intro E.absorptionRateClosed
    (And.intro E.distributionVolumeClosed
      (And.intro E.eliminationRateClosed
        (And.intro E.bioavailabilityClosed E.halfLifeClosed)))

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse