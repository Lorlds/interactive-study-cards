# Interactive Study Cards

[简体中文](README.zh-CN.md)

Interactive Study Cards is a Codex skill for turning user-provided notes, concepts, code snippets, formulas, or learning material into a single self-contained HTML study page.

The generated pages are designed for active recall, not passive reading. Cards are source-grounded, atomic, mobile-friendly, and can include MathML formulas, inline SVG diagrams, weak-card review, keyboard shortcuts, and filtering depending on the selected output level.

## Features

- Creates one complete HTML file with inline CSS and JavaScript.
- Uses source-locked generation by default to avoid unsupported facts.
- Builds active recall cards from notes, formulas, code, comparisons, and mechanisms.
- Supports Mini, Pro, and Max output levels.
- Uses MathML for formulas when possible.
- Uses inline SVG for simple diagrams and visual explanations.
- Avoids external libraries, CDNs, MathJax, KaTeX, and external assets unless explicitly allowed.
- Supports weak-card marking and local review memory in Pro and Max modes.
- Supports search, tag filters, shuffle, stats, and weak-card JSON export in Max mode.

## Install

Install the skill into Codex's skill discovery directory:

```bash
git clone https://github.com/Lorlds/interactive-study-cards.git ~/.codex/skills/interactive-study-cards
```

If you already cloned it elsewhere, link it instead:

```bash
mkdir -p ~/.codex/skills
ln -s /path/to/interactive-study-cards ~/.codex/skills/interactive-study-cards
```

Restart Codex after installing so the new skill is loaded.

## Usage

Ask Codex for interactive study cards and provide the source material:

```text
Use $interactive-study-cards to make Pro HTML study cards from these microeconomics notes:
...
```

You can also specify the output level:

```text
Create Max interactive study cards from this calculus review sheet. Focus on graph interpretation and common mistakes.
```

If the request is missing important details, the skill asks for subject area, source material, target depth, output level, and any special focus.

## Output Levels

Mini is the fastest simple review page. It includes one-card-at-a-time review, hidden answers, previous and next controls, progress, tags, mobile layout, formulas, and simple diagrams when useful.

Pro is the default. It adds random review, keyboard shortcuts, weak-card marking, localStorage weak-card memory, weak-only mode, and more frequent diagrams for visualizable concepts.

Max is the complete review tool. It adds tag filters, search, shuffle mode, reset progress, weak-card JSON export, session stats, and richer visual explanations such as graphs, number lines, flowcharts, force diagrams, and process diagrams when supported by the source.

## Repository Layout

```text
.
├── LICENSE
├── SKILL.md
├── agents/
│   └── openai.yaml
├── README.zh-CN.md
└── README.md
```

## Grounding

This skill treats the user's material as the primary source. It should not silently add unsupported claims, formulas, examples, mechanisms, or diagrams. If a claim is uncertain and verification is unavailable, the skill should omit it or ask for clarification.

## License

MIT. See [LICENSE](LICENSE).
