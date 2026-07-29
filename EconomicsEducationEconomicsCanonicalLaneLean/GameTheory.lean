import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEducationEconomicsCanonicalLaneLean

structure GameTheoryPackage where
  playersSet : Prop
  strategySpace : Prop
  payoffFunction : Prop
  nashEquilibrium : Prop
  dominantStrategy : Prop

structure GameTheoryEvidence (G : GameTheoryPackage) where
  playersSetClosed : G.playersSet
  strategySpaceClosed : G.strategySpace
  payoffFunctionClosed : G.payoffFunction
  nashEquilibriumClosed : G.nashEquilibrium
  dominantStrategyClosed : G.dominantStrategy

def GameTheoryClosed (G : GameTheoryPackage) : Prop :=
  G.playersSet ∧ G.strategySpace ∧
  G.payoffFunction ∧ G.nashEquilibrium ∧ G.dominantStrategy

theorem game_theory_closed_from_evidence
    (G : GameTheoryPackage) (E : GameTheoryEvidence G) :
    GameTheoryClosed G := by
  exact And.intro E.playersSetClosed
    (And.intro E.strategySpaceClosed
      (And.intro E.payoffFunctionClosed
        (And.intro E.nashEquilibriumClosed E.dominantStrategyClosed)))

end EconomicsEducationEconomicsCanonicalLaneLean
end HautevilleHouse