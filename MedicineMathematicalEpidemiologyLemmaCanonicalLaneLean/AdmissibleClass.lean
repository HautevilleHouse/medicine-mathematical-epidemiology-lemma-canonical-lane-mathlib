import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

structure EpidemicAdmittedObject where
  population : Type
  compartments : List String
  transmissionModel : Prop
  reproductionNumber : ℝ
  conclusion : transmissionModel ∧ reproductionNumber > 0

structure AdmissibleClass where
  object : EpidemicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EpidemicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def EpidemicWitnessClosed (O : EpidemicAdmittedObject) : Prop :=
  O.conclusion

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
