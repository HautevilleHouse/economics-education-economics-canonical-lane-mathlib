import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEducationEconomicsCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  commoditySpace : Type u
  priceSystem : Type v
  initialEndowments : commoditySpace → ℝ
  utilityFunctions : Type w
  profitMaximization : Prop
  utilityMaximization : Prop
  marketClearing : Prop
  equilibriumExists : Prop

structure ArrowDebreuEquilibriumEvidence (E : ArrowDebreuEquilibriumPackage) where
  profitMaximizationClosed : E.profitMaximization
  utilityMaximizationClosed : E.utilityMaximization
  marketClearingClosed : E.marketClearing
  equilibriumExistsClosed : E.equilibriumExists

def ArrowDebreuEquilibriumClosed (E : ArrowDebreuEquilibriumPackage) : Prop :=
  E.profitMaximization ∧ E.utilityMaximization ∧ E.marketClearing ∧ E.equilibriumExists

theorem arrow_debreu_equilibrium_closed_from_evidence
    (E : ArrowDebreuEquilibriumPackage) (Ev : ArrowDebreuEquilibriumEvidence E) :
    ArrowDebreuEquilibriumClosed E := by
  exact And.intro Ev.profitMaximizationClosed
    (And.intro Ev.utilityMaximizationClosed
      (And.intro Ev.marketClearingClosed Ev.equilibriumExistsClosed))

end EconomicsEducationEconomicsCanonicalLaneLean
end HautevilleHouse
