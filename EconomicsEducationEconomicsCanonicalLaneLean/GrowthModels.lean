import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEducationEconomicsCanonicalLaneLean

structure GrowthModel where
  productionFunction : Type u
  capitalAccumulation : Type v
  savingsRate : Type w
  steadyStateExists : Prop
  convergenceProperty : Prop

structure GrowthModelEvidence (G : GrowthModel) where
  steadyStateExistsClosed : G.steadyStateExists
  convergencePropertyClosed : G.convergenceProperty

def GrowthModelClosed (G : GrowthModel) : Prop :=
  G.steadyStateExists ∧ G.convergenceProperty

theorem growth_model_closed_from_evidence (G : GrowthModel) (E : GrowthModelEvidence G) :
    GrowthModelClosed G := by
  exact And.intro E.steadyStateExistsClosed E.convergencePropertyClosed

end EconomicsEducationEconomicsCanonicalLaneLean
end HautevilleHouse