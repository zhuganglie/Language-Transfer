# Language Transfer English Tutor

An AI-powered English tutor that runs inside your terminal. This workspace turns a general-purpose agent into a patient, adaptive English teacher using the Language Transfer "Thinking Method".

## What This Workspace Is

This is a prompt-native tutoring system, not an app. The product is the workspace itself:

- control files that define personality, method, and hard rules
- a structured curriculum and topic guides
- learner-state files that persist across sessions

It works inside Gemini CLI, Claude Code, or any agent that can read workspace files.

## Quick Start

### Gemini CLI

```bash
cd Language-Transfer/
gemini
# say "let's start a lesson" or "/english"
```

### Claude Code

```bash
cd Language-Transfer/
claude
# say "let's start a lesson" or "/english"
```

## Architecture

### Static Control Layer

These files define how the tutor behaves and what it knows:

- `RULES.md`: highest-priority conversational constraints
- `SOUL.md`: personality and voice
- `AGENT.md`: session loop, state contract, and teaching method
- `CLAUDE.md` / `GEMINI.md`: host entrypoints
- `knowledge/concept-map.md`: human-readable curriculum view
- `knowledge/topic-registry.yaml`: structured planning metadata
- `knowledge/topics/*.md`: narrative topic guides
- `knowledge/error-patterns.md`: common error reference

### Dynamic Learner Layer

These files evolve with the learner:

- `LEARNER.md`: durable profile only
- `memory/MEMORY.md`: live mastery state
- `memory/sessions/YYYY-MM-DD.md`: checkpoint and session evidence

The key contract is simple:

- `LEARNER.md` should change slowly.
- `memory/MEMORY.md` should change during real teaching.
- session notes justify those changes with concrete evidence.

## Workflow

When a lesson starts, the tutor should:

1. Load `RULES.md`, `SOUL.md`, `AGENT.md`, `LEARNER.md`, and `memory/MEMORY.md`
2. Read `knowledge/topic-registry.yaml` and the latest session note
3. Ask one diagnostic or review question
4. Teach with pattern discovery, block-building, and short conversational drills
5. Save progress at checkpoints, not only at the end

Checkpoint saves should happen:

- after placement or reassessment
- after a topic changes status
- after a recurring error becomes a fingerprint
- after meta-feedback or preference changes
- before ending or likely interruption

## Knowledge Layer

`knowledge/topic-registry.yaml` is the structured planning source of truth. It records:

- topic id
- CEFR level
- prerequisites
- diagnostic cues
- mastery signals
- likely next topics

`knowledge/concept-map.md` stays as the human-readable overview, while individual topic files remain lightweight teaching guides.

`knowledge/concept-map.md` is generated from the registry. Regenerate it with:

```bash
python3 scripts/generate-concept-map.py
```

## Validation

Run:

```bash
./scripts/validate-workspace.sh
```

This checks the core control files, topic-registry coverage, session note naming, and a few state-boundary invariants.

For prompt-behavior regression checks, use [qa/behavior-regressions.md](/home/caesar/Work/2_Dev/Language-Transfer/qa/behavior-regressions.md).

For Gemini headless checks, run:

```bash
./scripts/run-gemini-regressions.sh
```

The regression script uses `--extensions none` to reduce extension noise during prompt checks.

## Credits

- Teaching methodology inspired by [Language Transfer](https://www.languagetransfer.org/) by Mihalis Eleftheriou
- This workspace is an homage to Mihalis's guided-discovery approach
