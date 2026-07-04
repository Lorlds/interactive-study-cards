---
name: interactive-study-cards
description: create self-contained interactive html study cards from user-provided notes, concepts, code snippets, formulas, or learning materials. use when the user asks for flashcards, active recall cards, html review pages, interactive study pages, visual study cards, or alternatives to anki import cards. supports mini, pro, and max output levels.
---

# Interactive Study Cards

Create a single self-contained interactive HTML study page from the user's material.

## Input template

If needed, ask for:

1. Subject area:
2. Source material / notes / code:
3. Target depth: beginner / intermediate / advanced
4. HTML level: Mini / Pro / Max
5. Special focus: mistakes / mechanisms / exam style / comparison / math visualization / other

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
- Do not create diagrams that imply unsupported facts.

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

## Math and diagrams

Use correct mathematical and visual display.

- Use MathML for formulas when possible.
- Do not rely on raw LaTeX rendering.
- Do not use MathJax, KaTeX, CDN scripts, or external assets unless the user explicitly allows external dependencies.
- Use inline SVG for diagrams.
- Add diagrams only when they improve recall or understanding.
- Keep diagrams simple, labeled, and directly tied to the card.
- Label every axis, curve, point, arrow, region, force, pathway, or object.
- Use qualitative diagrams when exact scale is unknown.
- Do not draw precise quantitative graphs unless the source provides enough information.
- Delete any diagram that might mislead or contradict the card.

## Diagram checks

Before drawing an SVG diagram, silently define:

- diagram type
- concept visualized
- variables or objects shown
- labels required
- arrows or directions required
- key relationships
- what the diagram must not imply

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

2. Generate
   - Create cards only from supported claims.
   - Keep one knowledge atom per card.
   - Add diagrams only when the visual relationship is clear.

3. Audit
   - Check every card against the source.
   - Remove unsupported, broad, ambiguous, or guess-based cards.
   - Check that no front reveals the answer.
   - Check that each answer is short.

4. Repair
   - Revise failed cards once.
   - Delete cards or diagrams that still fail.
   - Ask for clarification if too much material is uncertain.

Do not expose this loop in the final output.

## Output rules

Output only one complete HTML file.

No Markdown.
No explanation.
No code block wrapper.
No external libraries.
Inline all CSS and JavaScript.
Use inline SVG for diagrams.
Use MathML, HTML, CSS, and SVG for formula display.

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
- Simple SVG diagrams when strongly useful

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
- Frequent SVG diagrams for visualizable concepts

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
- Richer visual explanations when useful:
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
- Diagrams responsive inside the card

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
- Diagrams are accurate and useful.
- The selected Mini / Pro / Max feature set is complete.
- The HTML runs without external dependencies.