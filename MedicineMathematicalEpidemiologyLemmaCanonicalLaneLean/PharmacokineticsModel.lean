import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

structure PharmacokineticsModel where
  drugConcentration : ℝ → ℝ
  absorptionRate : ℝ
  eliminationRate : ℝ
  volumeDistribution : ℝ
  halfLife : ℝ

structure PharmacokineticsEvidence (P : PharmacokineticsModel) where
  absorptionPositive : P.absorptionRate > 0
  eliminationPositive : P.eliminationRate > 0
  volumePositive : P.volumeDistribution > 0
  halfLifePositive : P.halfLife > 0

def PharmacokineticsClosed (P : PharmacokineticsModel) : Prop :=
  P.absorptionRate > 0 ∧ P.eliminationRate > 0 ∧ P.volumeDistribution > 0 ∧ P.halfLife > 0

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsModel) (E : PharmacokineticsEvidence P) : PharmacokineticsClosed P := by
  exact And.intro E.absorptionPositive (And.intro E.eliminationPositive (And.intro E.volumePositive E.halfLifePositive))

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
