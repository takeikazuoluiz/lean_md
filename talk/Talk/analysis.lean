import Mathlib.Data.Real.Basic

def converges_to (f : ℝ → ℝ) (a : ℝ) (l : ℝ) :=
  ∀ ε > 0, ∃ δ > 0, ∀ (x : ℝ), |x - a| < δ → |f x - l| < ε

theorem lim_sum (f g : ℝ → ℝ)
  (hf : converges_to f a l1) (hg : converges_to g a l2) :
