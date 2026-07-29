import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEducationEconomicsCanonicalLaneLean

structure ScarcityOptimizationPackage where
  resourceAllocation : Prop
  productionFunction : Prop
  costMinimization : Prop
  profitMaximization : Prop
  paretoEfficiency : Prop

structure ScarcityOptimizationEvidence (S : ScarcityOptimizationPackage) where
  resourceAllocationClosed : S.resourceAllocation
  productionFunctionClosed : S.productionFunction
  costMinimizationClosed : S.costMinimization
  profitMaximizationClosed : S.profitMaximization
  paretoEfficiencyClosed : S.paretoEfficiency

def ScarcityOptimizationClosed (S : ScarcityOptimizationPackage) : Prop :=
  S.resourceAllocation ∧ S.productionFunction ∧
  S.costMinimization ∧ S.profitMaximization ∧ S.paretoEfficiency

theorem scarcity_optimization_closed_from_evidence
    (S : ScarcityOptimizationPackage) (E : ScarcityOptimizationEvidence S) :
    ScarcityOptimizationClosed S := by
  exact And.intro E.resourceAllocationClosed
    (And.intro E.productionFunctionClosed
      (And.intro E.costMinimizationClosed
        (And.intro E.profitMaximizationClosed E.paretoEfficiencyClosed)))

end EconomicsEducationEconomicsCanonicalLaneLean
end HautevilleHouse