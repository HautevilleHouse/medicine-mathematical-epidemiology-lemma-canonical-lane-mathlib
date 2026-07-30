import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

structure PharmacokineticPackage where
  dose : ℝ
  volumeDistribution : ℝ
  clearance : ℝ
  halfLife : ℝ

structure PharmacokineticEvidence (P : PharmacokineticPackage) where
  dosePositive : P.dose > 0
  volumeDistributionPositive : P.volumeDistribution > 0
  clearancePositive : P.clearance > 0
  halfLifePositive : P.halfLife > 0

def PharmacokineticClosed (P : PharmacokineticPackage) : Prop :=
  P.dose > 0 ∧ P.volumeDistribution > 0 ∧ P.clearance > 0 ∧ P.halfLife > 0

theorem pharmacokinetic_closed_from_evidence (P : PharmacokineticPackage)
    (E : PharmacokineticEvidence P) : PharmacokineticClosed P := by
  exact And.intro E.dosePositive
    (And.intro E.volumeDistributionPositive
      (And.intro E.clearancePositive E.halfLifePositive))

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse