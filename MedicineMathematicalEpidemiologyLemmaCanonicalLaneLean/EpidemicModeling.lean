import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

structure EpidemicModelingPackage (A : AdmissibleClass) where
  diseaseFreeEquilibrium : Prop
  endemicEquilibrium : Prop
  basicReproductionNumber : Prop
  vaccinationCoverage : Prop
  herdImmunityThreshold : Prop
  forceOfInfection : Prop
  incidenceRate : Prop
  prevalenceRate : Prop

structure EpidemicModelingEvidence {A : AdmissibleClass} (E : EpidemicModelingPackage A) where
  diseaseFreeEquilibriumClosed : E.diseaseFreeEquilibrium
  endemicEquilibriumClosed : E.endemicEquilibrium
  basicReproductionNumberClosed : E.basicReproductionNumber
  vaccinationCoverageClosed : E.vaccinationCoverage
  herdImmunityThresholdClosed : E.herdImmunityThreshold
  forceOfInfectionClosed : E.forceOfInfection
  incidenceRateClosed : E.incidenceRate
  prevalenceRateClosed : E.prevalenceRate

def EpidemicModelingClosed {A : AdmissibleClass} (E : EpidemicModelingPackage A) : Prop :=
  E.diseaseFreeEquilibrium ∧ E.endemicEquilibrium ∧ E.basicReproductionNumber ∧
  E.vaccinationCoverage ∧ E.herdImmunityThreshold ∧ E.forceOfInfection ∧
  E.incidenceRate ∧ E.prevalenceRate

theorem epidemic_modeling_closed_from_evidence
    {A : AdmissibleClass} (E : EpidemicModelingPackage A) (Ev : EpidemicModelingEvidence E) :
    EpidemicModelingClosed E := by
  exact And.intro Ev.diseaseFreeEquilibriumClosed
    (And.intro Ev.endemicEquilibriumClosed
      (And.intro Ev.basicReproductionNumberClosed
        (And.intro Ev.vaccinationCoverageClosed
          (And.intro Ev.herdImmunityThresholdClosed
            (And.intro Ev.forceOfInfectionClosed
              (And.intro Ev.incidenceRateClosed Ev.prevalenceRateClosed))))))

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
