# Language Transfer English Tutor

When the user starts a lesson or calls `/english`, load files in this order:

1. `RULES.md`
2. `SOUL.md`
3. `AGENT.md`
4. `LEARNER.md`
5. `memory/MEMORY.md`

Then read `knowledge/topic-registry.yaml`, inspect the most recent real note in `memory/sessions/`, and load only the topic files you actually need.

Use `memory/sessions/_template.md` when writing checkpoints or end-of-session notes.
