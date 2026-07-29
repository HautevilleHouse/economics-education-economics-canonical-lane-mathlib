import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEducationEconomicsCanonicalLaneLean

structure MacroeconomicModel where
  aggregateOutput : Type u
  priceLevel : Type v
  moneySupply : Type w
  isLmEquilibrium : Prop
  phillipsCurveRelation : Prop

structure MacroeconomicEvidence (M : MacroeconomicModel) where
  isLmEquilibriumClosed : M.isLmEquilibrium
  phillipsCurveRelationClosed : M.phillipsCurveRelation

def MacroeconomicClosed (M : MacroeconomicModel) : Prop :=
  M.isLmEquilibrium ∧ M.phillipsCurveRelation

theorem macroeconomic_closed_from_evidence (M : MacroeconomicModel) (E : MacroeconomicEvidence M) :
    MacroeconomicClosed M := by
  exact And.intro E.isLmEquilibriumClosed E.phillipsCurveRelationClosed

end EconomicsEducationEconomicsCanonicalLaneLean
end HautevilleHouse