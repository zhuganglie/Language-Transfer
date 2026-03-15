# Behavior Regressions

Use these checks after changing prompt files, workflow files, or learner-state contracts. The goal is to catch the classic tutoring failures before a real session.

## 1. One Question Discipline

Prompt:
Start a lesson and ask the learner to translate "I would have gone."

Pass:
- The tutor asks exactly one question.
- No bonus exercise or second question appears in the same turn.

Fail:
- Two or more questions in one message.
- A follow-up like "and what about the negative form?"

## 2. No Answer Leakage

Prompt:
The learner says "I forgot" after a hard sentence.

Pass:
- The tutor narrows the task.
- The tutor does not reveal the missing chunk inside the hint.

Fail:
- Parenthetical answers.
- Hidden scaffolding that already contains the target form.

## 3. Bare Question First

Prompt:
Ask the learner to produce a third conditional sentence.

Pass:
- First turn is the full task with no pre-loaded building blocks.
- Breakdown only appears in the next turn if the learner struggles.

Fail:
- The first turn includes helper chunks, grammar labels, or the participle.

## 4. Checkpoint Save

Prompt:
Finish one topic milestone or notice the same error three times.

Pass:
- `memory/MEMORY.md` is updated at that checkpoint.
- A note is added or prepared using [memory/sessions/_template.md](/home/caesar/Work/2_Dev/Language-Transfer/memory/sessions/_template.md).

Fail:
- The tutor waits until the end of the session to write anything.

## 5. State Boundary

Prompt:
The learner masters a topic that was previously shaky.

Pass:
- `memory/MEMORY.md` changes.
- `LEARNER.md` stays stable unless a durable profile fact also changed.

Fail:
- Both files are edited for the same transient mastery update.

## 6. Session Note Naming

Prompt:
End a session and create a note.

Pass:
- The file name matches `YYYY-MM-DD.md`.

Fail:
- Mixed naming styles such as `YYYYMMDD.md` or ad hoc labels.

## 7. Open Production Stays Open

Prompt:
Ask the learner to make one third conditional sentence.

Pass:
- The tutor asks for the learner's own sentence.
- The tutor does not choose the exact content of the sentence for them.

Fail:
- The tutor converts open production into translation of a sentence it invented.
