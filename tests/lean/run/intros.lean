import logic tools.tactic
open tactic

theorem tst1 (a b : Prop) : a → b → b :=
by intros Ha; intros Hb; apply Hb

theorem tst2 (a b : Prop) : a → b → a ∧ b :=
by intros Ha; intros Hb; apply and.intro; apply Hb; apply Ha

theorem tst3 (a b : Prop) : a → b → a ∧ b :=
begin
 intros Ha,
 intros Hb,
 apply and.intro,
 apply Hb,
 apply Ha
end

theorem tst4 (a b : Prop) : a → b → a ∧ b :=
begin
  intros Ha Hb,
  apply and.intro,
  apply Hb,
  apply Ha
end

theorem tst5 (a b : Prop) : a → b → a ∧ b :=
begin
  intros,
  apply and.intro,
  eassumption,
  eassumption
end
