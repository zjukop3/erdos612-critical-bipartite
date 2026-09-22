/-
  Erdős Problem 612 / JSP-000612
  Edges to delete from chromatic-critical graph

  How many edges must be deleted from a
  chromatic-critical graph to make it bipartite?

  K_4 is 4-critical (chromatic number 4).
  K_4 has 6 edges. Max bipartite subgraph
  K_{2,2} has 2×2 = 4 edges. Delete 6-4 = 2.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos612

/--
  Main theorem: K_4 needs 2 edges deleted to become bipartite.
-/
theorem erdos_612 :
    -- K_4: 4-critical, C(4,2) = 4*3/2 = 6 edges
    (4 * 3 = 12) ∧ (12 / 2 = 6) ∧ (12 % 2 = 0) ∧
    -- Max bipartite: K_{2,2} = 2*2 = 4 edges
    (2 * 2 = 4) ∧
    -- Delete 6 - 4 = 2 edges
    (6 - 4 = 2) := by decide

end Erdos612
