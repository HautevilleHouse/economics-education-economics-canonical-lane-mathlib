import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEducationEconomicsCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  preferenceRelation : Prop
  utilityFunction : Prop
  equilibriumPrice : Prop
  marketClearing : Prop
  welfareTheorems : Prop

structure ArrowDebreuEquilibriumEvidence (A : ArrowDebreuEquilibriumPackage) where
  preferenceRelationClosed : A.preferenceRelation
  utilityFunctionClosed : A.utilityFunction
  equilibriumPriceClosed : A.equilibriumPrice
  marketClearingClosed : A.marketClearing
  welfareTheoremsClosed : A.welfareTheorems

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuEquilibriumPackage) : Prop :=
  A.preferenceRelation ∧ A.utilityFunction ∧
  A.equilibriumPrice ∧ A.marketClearing ∧ A.welfareTheorems

theorem arrow_debreu_equilibrium_closed_from_evidence
    (A : ArrowDebreuEquilibriumPackage) (E : ArrowDebreuEquilibriumEvidence A) :
    ArrowDebreuEquilibriumClosed A := by
  exact And.intro E.preferenceRelationClosed
    (And.intro E.utilityFunctionClosed
      (And.intro E.equilibriumPriceClosed
        (And.intro E.marketClearingClosed E.welfareTheoremsClosed)))

end EconomicsEducationEconomicsCanonicalLaneLean
end HautevilleHouse