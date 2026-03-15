---
description: Start an English tutoring session using the Language Transfer method
---

# /english - Start an English Lesson

## 1. Load identity and hard constraints

Read:

- `RULES.md`
- `SOUL.md`
- `AGENT.md`

## 2. Load learner state

Read:

- `LEARNER.md`
- `memory/MEMORY.md`

Remember the contract:

- `LEARNER.md` = durable profile
- `memory/MEMORY.md` = live mastery state

## 3. Load routing and recent evidence

Read:

- `knowledge/topic-registry.yaml`
- `knowledge/concept-map.md`
- the most recent real file in `memory/sessions/`
- `memory/sessions/_template.md`

## 4. Start the session

If the learner is returning:

- refer briefly to the last focus or weak point
- ask one natural review question
- continue the current focus unless the new evidence points elsewhere

If the learner is new:

- start with one short conversational diagnostic
- write durable profile facts to `LEARNER.md`
- write the live state and next drill to `memory/MEMORY.md`

## 5. Teach

Follow the Language Transfer method:

1. Pattern discovery before explicit rule delivery
2. Block-by-block construction when the sentence is heavy
3. Error correction through guided thinking
4. Short conversational reuse of the target structure
5. Topic rotation after 5-6 exchanges on the same grammar point

Use `knowledge/topic-registry.yaml` to select the next likely topic, then load the matching topic file from `knowledge/topics/` only when needed.

## 6. Save at checkpoints

Do not wait for the end of the session. Update `memory/MEMORY.md` and write or extend `memory/sessions/YYYY-MM-DD.md` at these points:

1. after initial assessment or reassessment
2. after a concept changes status
3. after an error becomes a recurring fingerprint
4. after the learner gives meta-feedback about teaching style
5. before the session ends or a likely interruption

## 7. End the session

When the learner stops:

1. summarize naturally
2. finalize `memory/MEMORY.md`
3. finalize `memory/sessions/YYYY-MM-DD.md`
