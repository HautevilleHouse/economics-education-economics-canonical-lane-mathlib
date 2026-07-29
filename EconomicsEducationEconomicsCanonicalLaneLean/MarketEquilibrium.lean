import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEducationEconomicsCanonicalLaneLean

structure MarketEquilibriumPackage where
  supplyFunction : Type
  demandFunction : Type
  marketClearing : Prop
  equilibriumPrice : Prop
  comparativeStatics : Prop

structure MarketEquilibriumEvidence (M : MarketEquilibriumPackage) where
  marketClearingClosed : M.marketClearing
  equilibriumPriceClosed : M.equilibriumPrice
  comparativeStaticsClosed : M.comparativeStatics

def MarketEquilibriumClosed (M : MarketEquilibriumPackage) : Prop :=
  M.marketClearing ∧ M.equilibriumPrice ∧ M.comparativeStatics

theorem market_equilibrium_closed_from_evidence
    (M : MarketEquilibriumPackage) (E : MarketEquilibriumEvidence M) :
    MarketEquilibriumClosed M := by
  exact And.intro E.marketClearingClosed
    (And.intro E.equilibriumPriceClosed E.comparativeStaticsClosed)

end EconomicsEducationEconomicsCanonicalLaneLean
end HautevilleHouse