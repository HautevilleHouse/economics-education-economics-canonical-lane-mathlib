import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEducationEconomicsCanonicalLaneLean

structure UtilityTheoryPackage where
  consumptionSet : Type u
  preferenceRelation : Type v
  utilityFunction : consumptionSet → ℝ
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  utilityRepresentation : Prop

structure UtilityTheoryEvidence (U : UtilityTheoryPackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  utilityRepresentationClosed : U.utilityRepresentation

def UtilityTheoryClosed (U : UtilityTheoryPackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.utilityRepresentation

theorem utility_theory_closed_from_evidence
    (U : UtilityTheoryPackage) (Ev : UtilityTheoryEvidence U) :
    UtilityTheoryClosed U := by
  exact And.intro Ev.completenessClosed
    (And.intro Ev.transitivityClosed
      (And.intro Ev.continuityClosed Ev.utilityRepresentationClosed))

end EconomicsEducationEconomicsCanonicalLaneLean
end HautevilleHouse
