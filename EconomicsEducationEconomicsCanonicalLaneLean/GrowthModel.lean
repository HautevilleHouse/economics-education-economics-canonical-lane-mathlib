import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEducationEconomicsCanonicalLaneLean

structure GrowthModelPackage where
  productionFunction : Type u
  capitalAccumulation : Type v
  laborSupply : Prop
  savingsRate : Prop
  steadyStateExistence : Prop
  convergenceProperty : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  laborSupplyClosed : G.laborSupply
  savingsRateClosed : G.savingsRate
  steadyStateExistenceClosed : G.steadyStateExistence
  convergencePropertyClosed : G.convergenceProperty

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.laborSupply ∧ G.savingsRate ∧ G.steadyStateExistence ∧ G.convergenceProperty

theorem growth_model_closed_from_evidence
    (G : GrowthModelPackage) (Ev : GrowthModelEvidence G) :
    GrowthModelClosed G := by
  exact And.intro Ev.laborSupplyClosed
    (And.intro Ev.savingsRateClosed
      (And.intro Ev.steadyStateExistenceClosed Ev.convergencePropertyClosed))

end EconomicsEducationEconomicsCanonicalLaneLean
end HautevilleHouse
