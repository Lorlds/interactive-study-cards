# Math Guardrails

Use this reference for calculus, linear algebra, differential equations, probability, physics formulas, or any formula-heavy math/science study cards.

## Core Rule

Method cards must teach both the trigger and the limits of use.

Include the relevant assumptions, domain restrictions, nonzero divisors, regularity hypotheses, and lost-solution caveats whenever they affect the method.

## Source Discipline

- Use exact page, theorem, formula, or example labels only when the claim was read from that exact source.
- Use chapter-range labels for cards based on verified chapter coverage without readable exact text.
- Mark standard prerequisite reminders as prerequisite, not as textbook claims.
- Do not invent worked examples or exam heuristics unless the user asks for extra practice or the source provides them.

## Card Mix

For calculation-heavy chapters, include more application cards than meta cards:

- identify the method from conditions
- set up the bounds or equation
- check whether a substitution is valid
- choose coordinates or variables
- interpret a formula term
- catch a common invalid step

Avoid broad cards such as "What should you pay attention to in this chapter?" unless the source explicitly says so.

## Multiple Integrals

Cards should emphasize region setup and transformation validity.

- For double integrals, include cards that convert a described region into iterated bounds.
- For changing order of integration, identify the same region before writing new bounds.
- For polar, cylindrical, or spherical coordinates, include the area/volume factor (`r`, `r`, `rho^2 sin phi`) and what each variable means.
- For change of variables, include the transformed region, the absolute Jacobian determinant, and the validity conditions for the mapping when relevant.
- For symmetry shortcuts, require both a symmetric domain and the matching parity or invariance of the integrand.
- For differentiating under the integral sign or parameter integrals, include the needed continuity/differentiability and variable-limit conditions.
- Do not draw precise region geometry unless the source or inspected page provides enough information.

## Differential Equations

Cards should include the equation form, method trigger, and caveats.

- Separable equations: note that dividing by a factor such as `Y(y)` can lose zero or singular solutions; check them separately when relevant.
- First-order linear equations: put the equation in standard form before applying the integrating factor.
- Bernoulli equations: state the non-linear case (`n != 0, 1`) and check domain restrictions when dividing by powers of `y`.
- Homogeneous first-order equations: make clear whether "homogeneous" means `dy/dx = F(y/x)` or a linear homogeneous equation.
- Exact equations: require the exactness condition and the relevant continuity assumptions.
- Euler-Cauchy equations: work on intervals not crossing `x = 0`; use `t = ln |x|` or state `x > 0` when using `x = e^t`.
- Constant-coefficient linear equations: distinguish homogeneous solution, particular solution, and initial/boundary conditions.
- Characteristic-root cards should separate distinct real roots, repeated roots, and complex roots.

## Linear Algebra

- State dimension compatibility for matrix products, transformations, bases, and coordinate maps.
- For inverses, require square matrix and equivalent conditions only when valid.
- For eigenvalue/eigenvector cards, require a nonzero eigenvector and show the equation form `Av = lambda v`.
- For diagonalization, include the need for enough independent eigenvectors or a valid theorem-specific condition.
- For orthogonality, distinguish dot-product orthogonality from general inner-product spaces when needed.

## General Formula Cards

- Label variables and units when the source supports them.
- Separate "formula meaning" from "calculation step".
- Include boundary cases when the method changes there.
- If a theorem has hypotheses, make at least one card test the hypotheses directly.
- If applying a formula requires a convention, such as sign, orientation, branch, or interval, state it on the card.
