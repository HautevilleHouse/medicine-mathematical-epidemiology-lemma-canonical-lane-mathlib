import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "medicine-mathematical-epidemiology-lemma-canonical-lane"
    theoremName := "Constrained Epidemic Closure Theorem"
    theoremObject := "Epidemic transmission model with reproduction number > 0"
    classicalBoundary := "unrestricted source boundary carried by formalization"
    constrainedStatement := "constrained epidemic closure via bridge (transmission model) and gate (endpoint or remainder)"
    certificateLane := "epidemic_constrained"
    carriedRemainder := "classical source boundary remains open"
  }

end MedicineMathematicalEpidemiologyLemmaCanonicalLaneLean
end HautevilleHouse
