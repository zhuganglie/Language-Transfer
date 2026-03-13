# Language Transfer English Tutor 🇬🇧🇺🇸

An AI-powered English tutor that runs inside your terminal. Built on the [Language Transfer](https://www.languagetransfer.org/) "Thinking Method" — no app, no API, just markdown files that turn any LLM agent into a patient, adaptive English teacher.

> *"It's not about remembering — it's about knowing how to find it."*

## What Is This?

A collection of carefully crafted markdown files that give an AI agent the personality, teaching methodology, knowledge base, and memory system to tutor you in English from A1 (absolute beginner) to C2 (near-native).

It works inside **Gemini CLI**, **Claude Code**, or any agent that reads workspace files.

## How It Works

The tutor doesn't lecture. It guides you to **discover** English through questions:

```
Teacher: Many words ending in "-tion" are nouns that describe a process. For example, "creation."
         If you want the action — the verb — you often just take off that ending and add an "-e."
         So what is the verb for "creation"?

Student: Create?

Teacher: Perfect! Now, if "completion" is the noun... what is the verb?

Student: Complete?

Teacher: You've got it.
```

Every concept is taught through **pattern discovery**, **block-by-block sentence building**, and **contextual etymology** — never through grammar tables or rote memorization.

## Quick Start

### Gemini CLI
```bash
cd Language-Transfer/
gemini
# Just say "let's start a lesson" or "/english"
```

### Claude Code
```bash
cd Language-Transfer/
claude
# Just say "let's start a lesson" or "/english" - CLAUDE.md auto-loads the tutor
```

The tutor will:
1. Assess your level through natural conversation (not a test)
2. Start teaching at your edge — where you know things but start to struggle
3. Remember everything across sessions via local markdown files

---

## The Teaching Method

Built on the 6 Language Transfer principles:

| Principle | What It Means |
|-----------|--------------|
| **Pattern Discovery** | Never state rules — guide the student to notice patterns through examples |
| **Block-by-Block Building** | Complex sentences are built piece by piece, not presented whole |
| **Error as Compass** | Mistakes reveal thinking patterns — use them to teach, don't just correct |
| **Contextual Webs** | Connect words through etymology and meaning ("Incredible" = "In" + "Cred") |
| **Adaptive Pacing** | Speed up when the student is nailing it, slow down when they're struggling |
| **Conversational Practice** | Real conversations, not drills — use the student's interests |

## Memory System

The tutor remembers you across sessions:

- **MEMORY.md** — compact profile: your level, solid concepts, shaky areas, recurring error patterns, and preferences
- **Session notes** — detailed logs of each lesson with specific errors and breakthroughs
- **Error fingerprinting** — if you make the same mistake 3+ times, it becomes a tracked pattern
- **Student meta-feedback** — tell the tutor "too many hints" or "more conversation" and it adapts permanently

---

## Credits

- Teaching methodology inspired by [Language Transfer](https://www.languagetransfer.org/) by Mihalis Eleftheriou — a brilliant, free language course that teaches through guided discovery rather than memorization.
- This project is an homage to [Mihalis's work](https://www.languagetransfer.org/about).

## License

MIT
