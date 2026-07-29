import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEducationEconomicsCanonicalLaneLean

structure AssetPricingPackage where
  assetSpace : Type u
  stateSpace : Type v
  stochasticDiscountFactor : Type w
  noArbitrage : Prop
  completeMarkets : Prop
  pricingKernel : Prop
  riskNeutralMeasure : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  noArbitrageClosed : A.noArbitrage
  completeMarketsClosed : A.completeMarkets
  pricingKernelClosed : A.pricingKernel
  riskNeutralMeasureClosed : A.riskNeutralMeasure

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.noArbitrage ∧ A.completeMarkets ∧ A.pricingKernel ∧ A.riskNeutralMeasure

theorem asset_pricing_closed_from_evidence
    (A : AssetPricingPackage) (Ev : AssetPricingEvidence A) :
    AssetPricingClosed A := by
  exact And.intro Ev.noArbitrageClosed
    (And.intro Ev.completeMarketsClosed
      (And.intro Ev.pricingKernelClosed Ev.riskNeutralMeasureClosed))

end EconomicsEducationEconomicsCanonicalLaneLean
end HautevilleHouse
