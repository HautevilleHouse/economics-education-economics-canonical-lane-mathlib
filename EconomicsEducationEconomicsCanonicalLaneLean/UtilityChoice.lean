import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEducationEconomicsCanonicalLaneLean

structure UtilityChoicePackage where
  utilityFunctionDefined : Prop
  budgetConstraint : Prop
  demandFunction : Prop
  indirectUtility : Prop
  expenditureFunction : Prop

structure UtilityChoiceEvidence (U : UtilityChoicePackage) where
  utilityFunctionDefinedClosed : U.utilityFunctionDefined
  budgetConstraintClosed : U.budgetConstraint
  demandFunctionClosed : U.demandFunction
  indirectUtilityClosed : U.indirectUtility
  expenditureFunctionClosed : U.expenditureFunction

def UtilityChoiceClosed (U : UtilityChoicePackage) : Prop :=
  U.utilityFunctionDefined ∧ U.budgetConstraint ∧
  U.demandFunction ∧ U.indirectUtility ∧ U.expenditureFunction

theorem utility_choice_closed_from_evidence
    (U : UtilityChoicePackage) (E : UtilityChoiceEvidence U) :
    UtilityChoiceClosed U := by
  exact And.intro E.utilityFunctionDefinedClosed
    (And.intro E.budgetConstraintClosed
      (And.intro E.demandFunctionClosed
        (And.intro E.indirectUtilityClosed E.expenditureFunctionClosed)))

end EconomicsEducationEconomicsCanonicalLaneLean
end HautevilleHouse