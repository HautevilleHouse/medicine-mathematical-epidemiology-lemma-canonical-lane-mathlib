import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

structure DiseaseSpreadModel where
  susceptiblePopulation : ℕ
  infectedPopulation : ℕ
  recoveredPopulation : ℕ
  transmissionRate : ℝ
  recoveryRate : ℝ
  totalPopulation : ℕ

structure DiseaseSpreadModelEvidence (D : DiseaseSpreadModel) where
  populationsSumToTotal : D.susceptiblePopulation + D.infectedPopulation + D.recoveredPopulation = D.totalPopulation
  ratesPositive : D.transmissionRate > 0 ∧ D.recoveryRate > 0

def DiseaseSpreadModelClosed (D : DiseaseSpreadModel) : Prop :=
  (D.susceptiblePopulation + D.infectedPopulation + D.recoveredPopulation = D.totalPopulation) ∧ D.transmissionRate > 0 ∧ D.recoveryRate > 0

theorem disease_spread_model_closed_from_evidence (D : DiseaseSpreadModel) (E : DiseaseSpreadModelEvidence D) : DiseaseSpreadModelClosed D := by
  rcases E.ratesPositive with ⟨htr, hrr⟩
  exact And.intro E.populationsSumToTotal (And.intro htr hrr)

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
