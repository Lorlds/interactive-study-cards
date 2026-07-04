# Visual Templates

Use this reference to choose stable, source-locked learning visuals for interactive study cards.

Choose by knowledge structure first, not by school subject. A single template should work across programming, microeconomics, management, language learning, linear algebra, calculus, physics, chemistry, biology, political economy, and philosophy when the underlying structure matches.

## Selection Rules

1. Identify the knowledge structure:
   - definition or boundary
   - comparison or distinction
   - classification or taxonomy
   - sequence or timeline
   - process or mechanism
   - cause and effect
   - variable relationship
   - formula interpretation
   - system or feedback
   - spatial or structural relationship
   - argument or viewpoint
   - language pattern
   - code execution or state change
2. Prefer HTML/CSS templates over SVG.
3. Use SVG only for geometry, coordinate space, vectors, forces, pathways, or graphs.
4. Keep every visual source-locked. Do not invent missing labels, causal links, categories, values, examples, or arrows.
5. If a source claim does not provide enough structure for the template, use a simpler card without the visual.
6. Keep card visuals compact: one concept, one relationship, one task.

## Common Style Contract

Use these CSS ideas when generating the final HTML. Inline the CSS in the generated page.

```css
.viz {
  margin: 1rem 0;
  border: 1px solid #d6dee8;
  border-radius: 8px;
  padding: 0.85rem;
  background: #f8fafc;
}
.viz-title {
  font-size: 0.78rem;
  font-weight: 700;
  letter-spacing: 0;
  text-transform: uppercase;
  color: #475569;
  margin-bottom: 0.65rem;
}
.viz-grid {
  display: grid;
  gap: 0.6rem;
}
.viz-box {
  border: 1px solid #cbd5e1;
  border-radius: 6px;
  padding: 0.6rem;
  background: #ffffff;
}
.viz-label {
  font-size: 0.78rem;
  font-weight: 700;
  color: #334155;
}
.viz-note {
  font-size: 0.9rem;
  color: #475569;
}
.viz table {
  width: 100%;
  border-collapse: collapse;
  font-size: 0.92rem;
}
.viz th,
.viz td {
  border: 1px solid #cbd5e1;
  padding: 0.45rem 0.5rem;
  text-align: left;
  vertical-align: top;
}
.viz th {
  background: #eaf0f7;
  color: #334155;
}
@media (max-width: 560px) {
  .viz {
    padding: 0.7rem;
  }
  .viz-grid {
    grid-template-columns: 1fr !important;
  }
}
```

Use subject-specific colors sparingly. Do not make learning meaning depend on color alone.

## Template Index

| Template | Knowledge structure | Prefer for |
| --- | --- | --- |
| T01 Concept Boundary | definition, scope, necessary distinction | philosophy, politics, management, language terms, biology structures |
| T02 Comparison Grid | contrast, similarities, tradeoffs | economics, management models, theories, grammar, chemistry properties |
| T03 Classification Tree | categories, taxonomy, hierarchy | biology, chemistry, political systems, language parts, math object types |
| T04 Sequence Timeline | order, stages, historical or procedural time | history, political economy, biology, lab steps, language acquisition |
| T05 Mechanism Chain | process, pathway, stepwise mechanism | biology pathways, chemistry mechanisms, economic transmission, management workflow |
| T06 Cause-Effect Ladder | cause, condition, consequence | psychology, economics, politics, physics, biology regulation |
| T07 Variable Relation Panel | how quantities move together | microeconomics, physics, chemistry equilibrium, calculus, management metrics |
| T08 Coordinate Graph | plotted qualitative relationship | calculus, microeconomics, physics, statistics |
| T09 Formula Meaning Block | formula parts and interpretation | calculus, linear algebra, physics, chemistry, economics |
| T10 System Feedback Map | inputs, outputs, regulation, loops | management, macro/political economy, ecology, physiology |
| T11 Structure Label | labeled object, space, anatomy, vector layout | biology, chemistry, physics, geometry, linear algebra |
| T12 Argument Map | claim, reason, evidence, objection | philosophy, political theory, management, economics, essay writing |
| T13 Language Pattern Block | sentence pattern, slot, translation, correction | languages, grammar, rhetoric, writing |
| T14 State Trace Table | iterative state changes | programming, algorithms, math procedures, lab procedures |

## T01 Concept Boundary

Use for: defining a term by what it includes, excludes, and is often confused with.

Cross-disciplinary examples: monopoly vs market power, moral relativism vs subjectivism, leadership vs management, phenotype vs genotype, phrase vs clause.

Avoid when: the card asks for a process, calculation, or time order.

Stable structure:

```html
<div class="viz concept-boundary">
  <div class="viz-title">Concept Boundary</div>
  <div class="viz-grid" style="grid-template-columns:1fr 1fr 1fr">
    <div class="viz-box"><div class="viz-label">Core meaning</div><div>...</div></div>
    <div class="viz-box"><div class="viz-label">Not the same as</div><div>...</div></div>
    <div class="viz-box"><div class="viz-label">Source cue</div><div>...</div></div>
  </div>
</div>
```

Keep each box under two short lines.

## T02 Comparison Grid

Use for: contrasts, tradeoffs, "A vs B", or selecting between concepts.

Cross-disciplinary examples: perfect competition vs monopoly, Theory X vs Theory Y, mitosis vs meiosis, scalar vs vector, analytic vs synthetic proposition, active vs passive voice.

Avoid when: items do not share comparable dimensions.

Stable structure:

```html
<div class="viz comparison-grid">
  <div class="viz-title">Comparison</div>
  <table>
    <thead><tr><th>Dimension</th><th>A</th><th>B</th></tr></thead>
    <tbody>
      <tr><td>...</td><td>...</td><td>...</td></tr>
      <tr><td>...</td><td>...</td><td>...</td></tr>
    </tbody>
  </table>
</div>
```

Use 2-4 dimensions. Do not add dimensions not supported by source.

## T03 Classification Tree

Use for: categories, subtypes, hierarchy, "belongs to" relationships.

Cross-disciplinary examples: market structures, political regimes, organism taxonomy, chemical bond types, matrix types, word classes.

Avoid when: categories overlap or hierarchy is disputed in the source.

Stable structure:

```html
<div class="viz classification-tree">
  <div class="viz-title">Classification</div>
  <div class="viz-box">
    <div class="viz-label">Parent category</div>
    <div class="viz-grid" style="grid-template-columns:repeat(3,1fr); margin-top:.6rem">
      <div class="viz-box">Subtype 1</div>
      <div class="viz-box">Subtype 2</div>
      <div class="viz-box">Subtype 3</div>
    </div>
  </div>
</div>
```

Prefer rows of boxes over branching SVG. Use SVG only when spatial branching is central.

## T04 Sequence Timeline

Use for: ordered stages, historical periods, procedural order, "before/after".

Cross-disciplinary examples: policy development stages, cell cycle phases, reaction steps, language learning sequence, proof sequence, management project phases.

Avoid when: order is optional or not specified.

Stable structure:

```html
<div class="viz sequence-timeline">
  <div class="viz-title">Sequence</div>
  <div class="viz-grid" style="grid-template-columns:1fr">
    <div class="viz-box"><span class="viz-label">1.</span> ...</div>
    <div class="viz-box"><span class="viz-label">2.</span> ...</div>
    <div class="viz-box"><span class="viz-label">3.</span> ...</div>
  </div>
</div>
```

Use numbered boxes rather than arrows unless direction is the tested concept.

## T05 Mechanism Chain

Use for: stepwise mechanism, pathway, transmission channel, process logic.

Cross-disciplinary examples: price ceiling shortage mechanism, enzyme pathway, acid-base reaction mechanism, force causing acceleration, motivation process, dialectical development.

Avoid when: the source only states correlation, not mechanism.

Stable structure:

```html
<div class="viz mechanism-chain">
  <div class="viz-title">Mechanism</div>
  <div class="viz-grid" style="grid-template-columns:1fr">
    <div class="viz-box"><div class="viz-label">Trigger</div><div>...</div></div>
    <div class="viz-note">leads to</div>
    <div class="viz-box"><div class="viz-label">Intermediate step</div><div>...</div></div>
    <div class="viz-note">therefore</div>
    <div class="viz-box"><div class="viz-label">Result</div><div>...</div></div>
  </div>
</div>
```

Keep arrows as text or thin separators. Do not draw thick arrows over labels.

## T06 Cause-Effect Ladder

Use for: condition -> effect, intervention -> consequence, assumption -> conclusion.

Cross-disciplinary examples: incentive change -> behavior, stressor -> response, catalyst -> activation energy change, law -> political consequence, premise -> implication.

Avoid when: the source does not support causal direction.

Stable structure:

```html
<div class="viz cause-effect">
  <div class="viz-title">Cause and Effect</div>
  <table>
    <tbody>
      <tr><th>Condition</th><td>...</td></tr>
      <tr><th>Immediate effect</th><td>...</td></tr>
      <tr><th>Final implication</th><td>...</td></tr>
    </tbody>
  </table>
</div>
```

If causality is uncertain, label the relationship "associated with" or omit the visual.

## T07 Variable Relation Panel

Use for: direction of change, proportionality, constraints, comparative statics.

Cross-disciplinary examples: demand and price, force and acceleration, concentration and reaction rate, eigenvalue scaling, marginal cost and output, span of control and coordination cost.

Avoid when: exact direction or relationship is unknown.

Stable structure:

```html
<div class="viz variable-relation">
  <div class="viz-title">Variable Relationship</div>
  <div class="viz-grid" style="grid-template-columns:1fr 1fr 1fr">
    <div class="viz-box"><div class="viz-label">When this changes</div><div>...</div></div>
    <div class="viz-box"><div class="viz-label">Other variable</div><div>...</div></div>
    <div class="viz-box"><div class="viz-label">Why</div><div>...</div></div>
  </div>
</div>
```

Use symbols like increases/decreases only when source supports direction.

## T08 Coordinate Graph

Use for: qualitative curves, slopes, intercepts, shifts, optimization, supply-demand, physics graphs.

Cross-disciplinary examples: demand curve shift, derivative sign, position-time graph, energy profile, marginal cost curve.

Avoid when: a graph would imply precise scale not given in source.

SVG requirements:

- Use viewBox padding at least 24px.
- Label both axes.
- Label each curve.
- Use stroke width 2px or less.
- Use small arrowheads only on axes or direction indicators.
- Keep labels outside curves when possible.
- For microeconomics, clearly distinguish movement along a curve from curve shift.

## T09 Formula Meaning Block

Use for: formula interpretation, variables, units, "what changes what".

Cross-disciplinary examples: Newton's second law, elasticity, determinant, derivative, equilibrium constant, population growth equation.

Avoid when: the card only needs computation and the source provides no interpretation.

Stable structure:

```html
<div class="viz formula-meaning">
  <div class="viz-title">Formula Meaning</div>
  <div class="viz-box">[MathML formula]</div>
  <table>
    <tbody>
      <tr><th>Symbol</th><th>Meaning</th></tr>
      <tr><td>...</td><td>...</td></tr>
    </tbody>
  </table>
</div>
```

Use MathML for formulas. Do not rely on LaTeX delimiters.

## T10 System Feedback Map

Use for: input-process-output, regulation, equilibrium, feedback loops, organizational systems.

Cross-disciplinary examples: macroeconomic circular flow, endocrine regulation, control systems, management information flow, political institutions, ecological systems.

Avoid when: the source only lists parts without relationships.

Stable structure:

```html
<div class="viz system-map">
  <div class="viz-title">System</div>
  <div class="viz-grid" style="grid-template-columns:1fr 1fr 1fr">
    <div class="viz-box"><div class="viz-label">Input</div><div>...</div></div>
    <div class="viz-box"><div class="viz-label">Process</div><div>...</div></div>
    <div class="viz-box"><div class="viz-label">Output</div><div>...</div></div>
  </div>
  <div class="viz-note">Feedback: ...</div>
</div>
```

Use an explicit feedback row instead of a loop diagram unless the loop direction is central.

## T11 Structure Label

Use for: anatomy, molecule parts, force setup, vector/matrix layout, geometry, organization structure.

Cross-disciplinary examples: cell organelles, functional groups, free-body diagram, vector basis, organizational chart, sentence components.

Avoid when: labels would be guessed from general knowledge rather than source.

Implementation:

- Use HTML label lists for non-geometric structures.
- Use SVG only when spatial position matters.
- Keep each label outside the shape with a short connector.
- Do not place text over dense shapes or lines.

## T12 Argument Map

Use for: claims, reasons, evidence, assumptions, objections, implications.

Cross-disciplinary examples: philosophical argument, political theory, management recommendation, economic policy argument, essay thesis.

Avoid when: the source does not distinguish claim and support.

Stable structure:

```html
<div class="viz argument-map">
  <div class="viz-title">Argument</div>
  <div class="viz-grid" style="grid-template-columns:1fr">
    <div class="viz-box"><div class="viz-label">Claim</div><div>...</div></div>
    <div class="viz-box"><div class="viz-label">Reason</div><div>...</div></div>
    <div class="viz-box"><div class="viz-label">Assumption or objection</div><div>...</div></div>
  </div>
</div>
```

Never invent evidence or objections. Use "not provided" only if it is the teaching point.

## T13 Language Pattern Block

Use for: grammar slots, sentence pattern, translation contrast, register, common error.

Cross-disciplinary examples: English tense, Chinese rhetoric, second-language sentence frames, academic writing moves.

Avoid when: the language example is unsupported by the source.

Stable structure:

```html
<div class="viz language-pattern">
  <div class="viz-title">Pattern</div>
  <div class="viz-box"><span class="viz-label">Frame:</span> ...</div>
  <table>
    <tbody>
      <tr><th>Slot</th><th>Role</th><th>Example</th></tr>
      <tr><td>...</td><td>...</td><td>...</td></tr>
    </tbody>
  </table>
</div>
```

For error correction, use columns: original, issue, corrected form, reason.

## T14 State Trace Table

Use for: repeated steps, variable changes, iterative procedures, algorithms, lab state changes.

Cross-disciplinary examples: Python loop variables, Gaussian elimination row states, Newton method iterations, titration observations, accounting transaction effects.

Avoid when: the source does not provide enough steps or state values.

Stable structure:

```html
<div class="viz state-trace">
  <div class="viz-title">State Trace</div>
  <table>
    <thead><tr><th>Step</th><th>Condition/Input</th><th>State change</th><th>Output/Result</th></tr></thead>
    <tbody>
      <tr><td>1</td><td>...</td><td>...</td><td>...</td></tr>
      <tr><td>2</td><td>...</td><td>...</td><td>...</td></tr>
    </tbody>
  </table>
</div>
```

Use 3-7 rows. If the table would be too wide on mobile, split into stacked `.viz-box` rows.

## GPT-Image Use

Image generation can inspire visual style, spacing, and hierarchy, but do not use generated bitmap images as the final reusable template unless the user explicitly asks for image assets.

For this skill, final templates should be reproducible in HTML/CSS/MathML/SVG so that labels, examples, formulas, and card text remain editable, responsive, searchable, and source-locked.
