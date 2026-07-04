---
name: interactive-study-cards
description: create self-contained interactive html study cards from user-provided notes, concepts, code snippets, formulas, or learning materials across programming, economics, management, languages, mathematics, science, humanities, and social science. use when the user asks for flashcards, active recall cards, html review pages, interactive study pages, visual study cards, or alternatives to anki import cards. supports mini, pro, and max output levels.
---

# Interactive Study Cards

Create a single self-contained interactive HTML study page from the user's material.

## Input template

If needed, ask for:

1. Subject area:
2. Source material / notes / code:
3. Target depth: beginner / intermediate / advanced
4. HTML level: Mini / Pro / Max
5. Special focus: mistakes / mechanisms / exam style / comparison / visual templates / math visualization / other

If enough material is already provided, do not ask again.

Default HTML level: Pro.

## Grounding

Use source-locked generation by default.

- Use the user's material as the primary source.
- Do not add unsupported facts, examples, numbers, formulas, mechanisms, or claims.
- Use general prerequisite knowledge only when needed for clarity and only when it does not change the source claim.
- Do not silently correct uncertain material.
- If a claim is wrong, outdated, ambiguous, or missing context, verify it when reliable tools are available.
- If verification is unavailable, omit the uncertain claim or ask for clarification.
- Do not create visuals or diagrams that imply unsupported facts.

## Core visual principle

Use frequent visual explanations, but prefer stable learning visuals over freeform diagrams.

Visual-first, template-bound, source-locked.

- Use visuals to clarify structure, sequence, state change, comparison, quantity, or mechanism when they improve recall.
- Treat a visual as any stable learning object: trace table, state table, comparison grid, before/after pair, timeline, labeled formula block, code/output panel, call-stack panel, flow template, graph, or SVG diagram.
- Prefer HTML/CSS/MathML learning templates over hand-positioned SVG.
- Use freeform SVG only when the concept truly needs vector geometry and a simple template cannot express it.
- Do not add visuals just to satisfy a quota; delete weak, decorative, fragile, or unsupported visuals.
- Lock every visual to the card's source claim. Do not add unsupported labels, examples, steps, numbers, arrows, or causal relationships.
- Identify the knowledge structure before choosing a visual: definition, comparison, classification, sequence, mechanism, cause-effect, variable relationship, formula meaning, system, spatial structure, argument, language pattern, or state change.

## Visual template library

Use `references/visual-templates.md` when:

- The user asks for visual study cards or template-based visuals.
- The output level is Pro or Max and multiple cards can benefit from visuals.
- The material spans non-programming domains such as economics, management, language learning, mathematics, physics, chemistry, biology, political economy, or philosophy.
- A card needs a visual beyond the short stable-template list in this file.
- You are about to create an SVG diagram for a concept that may be representable as an HTML/CSS learning template.

Do not load the reference for a tiny Mini page unless visuals are central to the request.

## Card rules

- One card tests one knowledge atom.
- Each answer should be recallable within 20 seconds.
- Use active recall, not recognition.
- Prefer:
  - function → term
  - scenario → mechanism
  - phenomenon → cause
  - comparison → distinction
  - application → choice
- Avoid term → definition cards unless necessary.
- The front must be self-contained.
- The front must not reveal the answer keyword.
- Do not use vague references such as “it”, “this”, “the above”, “the former”, or “the latter”.
- Split lists into separate atomic cards.
- For important concepts, create forward, reverse, application, and contrast cards.

## Domain adaptation

Adapt card style to the subject.

- Psychology: scenario → mechanism, bias → consequence, theory → prediction, experiment → inference.
- Microeconomics: situation → model, change → graph movement, incentive → behavior, assumption → conclusion.
- Mathematics: formula → meaning, condition → method, graph → property, example → rule.
- Physics: scenario → principle, quantity change → effect, graph → meaning, formula → interpretation.
- Chemistry: structure → property, condition → result, mechanism step → reason, trend → cause.
- Biology: structure → function, pathway step → consequence, change → effect, system → regulation.
- Management: scenario → model, process → decision point, incentive → behavior, structure → tradeoff.
- Languages: pattern → slot function, sentence → correction, expression → register, contrast → usage distinction.
- Linear algebra: object → property, transformation → effect, matrix/vector → interpretation, condition → method.
- Political economy and philosophy: claim → reason, concept → boundary, theory → implication, position → contrast.

## Math and visual explanations

Use correct mathematical and visual display.

- Use MathML for formulas when possible.
- Do not rely on raw LaTeX rendering.
- Do not use MathJax, KaTeX, CDN scripts, or external assets unless the user explicitly allows external dependencies.
- Add visual explanations when they improve recall or understanding.
- Prefer stable templates:
  - Code execution: trace tables, state tables, code/output panels, call-stack panels.
  - Loops and conditionals: vertical step templates or trace tables; avoid arrow-heavy cycle diagrams.
  - Comparisons: two-column grids or property tables.
  - Processes: vertical flow templates with boxed labels and thin arrows.
  - Timelines or sequences: ordered rows with one label per step.
  - Formulas: MathML with adjacent meaning labels.
  - Quantitative relationships: number lines, coordinate graphs, or small tables.
- For cross-disciplinary visual choices, use `references/visual-templates.md` and choose by knowledge structure before subject.
- Use inline SVG only for diagrams that need vector geometry, such as coordinate graphs, number lines, geometry, forces, pathways, or simple process arrows.
- Keep visuals simple, labeled, and directly tied to the card.
- Label every axis, curve, point, arrow, region, force, pathway, or object.
- Use qualitative diagrams when exact scale is unknown.
- Do not draw precise quantitative graphs unless the source provides enough information.
- Delete any visual that might mislead, contradict the card, or visually fail.

## Visual and diagram checks

Before adding any visual, silently define:

- visual type
- concept visualized
- variables or objects shown
- labels required
- arrows or directions required
- key relationships
- what the visual must not imply

For SVG diagrams, use layout-safe templates:

- Default to vertical flowcharts for process diagrams.
- Put text inside independent label boxes, not directly under arrows or shapes.
- Keep arrows outside text areas.
- Use line or path arrows with stroke width 1.5-2.5px.
- Keep marker arrowheads at 8px or smaller.
- Leave at least 40px between flow nodes and at least 24px of outer viewBox padding.
- Avoid large filled polygon arrows, thick black arrows, overlapping layers, and dense curved connectors.
- Do not let labels, arrows, axes, nodes, or legends overlap or clip.

Subject checks:

- Math: check domains, intercepts, slopes, limits, transformations, and symbols.
- Microeconomics: distinguish curve shifts from movement along curves; label axes, curves, equilibria, and direction of change.
- Psychology: do not draw causal arrows unless causality is supported.
- Physics: check object, forces, directions, axes, system boundary, and sign convention.
- Chemistry: check reactants, products, charges, phases, catalysts, reaction direction, and energy profile.
- Biology: check sequence, compartment, regulation direction, branching, and feedback loops.

## Internal loop

Silently run this loop before final output:

1. Extract
   - Identify atomic source claims.
   - Separate facts, formulas, mechanisms, examples, comparisons, and likely mistakes.
   - Classify each visualizable claim by knowledge structure.

2. Generate
   - Create cards only from supported claims.
   - Keep one knowledge atom per card.
   - Add visual explanations only when the relationship is clear.
   - Prefer template visuals before SVG diagrams.
   - Use `references/visual-templates.md` when the task is visual-heavy, cross-disciplinary, Pro, or Max.

3. Audit
   - Check every card against the source.
   - Remove unsupported, broad, ambiguous, or guess-based cards.
   - Check that no front reveals the answer.
   - Check that each answer is short.
   - Check that every visual is source-locked and template-bound.

4. Repair
   - Revise failed cards once.
   - Replace risky SVG with a stable HTML/CSS template when possible.
   - Delete cards or visuals that still fail.
   - Ask for clarification if too much material is uncertain.

5. Render-check when tools allow
   - Open or screenshot the generated HTML at desktop and mobile widths.
   - Check for overlapping text, clipped labels, oversized arrows, blank diagrams, unreadable formulas, and responsive layout failures.
   - Repair the HTML, CSS, or SVG before final output.

Do not expose this loop in the final output.

## Output rules

Output only one complete HTML file.

No Markdown.
No explanation.
No code block wrapper.
No external libraries.
Inline all CSS and JavaScript.
Use HTML/CSS/MathML for stable learning visuals.
Use inline SVG only for template-bound diagrams that need vector geometry.
Use MathML, HTML, CSS, and SVG for formula and visual display.

## HTML levels

### Mini

Use Mini for the fastest simple review page.

Required:

- Title
- One-card-at-a-time display
- Front
- Hidden back
- Show answer button
- Previous button
- Next button
- Progress counter
- Tag display
- Mobile-friendly layout
- Correct formula display
- Simple template visuals when strongly useful
- SVG only when the visual requires vector geometry

Do not include:

- localStorage
- Weak-card mode
- Search
- Filters
- Export

### Pro

Use Pro by default.

Required:

- Everything in Mini
- Random button
- Keyboard shortcuts:
  - Space: show or hide answer
  - ArrowLeft: previous card
  - ArrowRight: next card
  - R: random card
- Weak-card marking
- localStorage weak-card memory
- Weak-only review mode
- Frequent visual explanations for visualizable concepts
- Stable HTML/CSS templates before SVG diagrams

### Max

Use Max for a more complete review tool.

Required:

- Everything in Pro
- Tag filter
- Search
- Shuffle mode
- Reset progress button
- Export weak cards as JSON
- Session stats:
  - cards reviewed
  - weak cards count
  - current filtered count
- Richer template-bound visual explanations when useful:
  - trace tables
  - state tables
  - before/after panels
  - comparison grids
  - coordinate graphs
  - number lines
  - geometry diagrams
  - matrix/vector diagrams
  - probability trees
  - causal diagrams
  - comparison diagrams
  - process flowcharts
  - feedback loops
  - supply-demand graphs
  - force diagrams
  - reaction energy profiles
  - biological pathways
  - concept boundary panels
  - classification trees
  - argument maps
  - language pattern blocks
  - system feedback maps

Do not implement full spaced repetition unless the user explicitly asks.

## Card data

Use this structure:

const cards = [
  {
    id: "c001",
    front: "...",
    back: "...",
    tag: "Subject::Topic::Subtopic"
  }
];

Cards may contain HTML, MathML, and inline SVG strings.

## Visual style

Keep the interface minimal:

- Centered card
- Large readable text
- Subtle borders
- Clear buttons
- No decorative clutter
- Mobile-friendly layout
- Formulas visually separated from surrounding text
- Visuals and diagrams responsive inside the card

## Final check

Before output, silently verify:

- Each card has one question.
- Each card tests one knowledge atom.
- Each answer is short.
- Each front is self-contained.
- No front reveals the answer.
- Important concepts use multiple recall angles.
- Claims are supported by the source or verified.
- Formulas render correctly.
- Visuals and diagrams are accurate and useful.
- Visuals use the template library when applicable.
- The selected Mini / Pro / Max feature set is complete.
- The HTML runs without external dependencies.
