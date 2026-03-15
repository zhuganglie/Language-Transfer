#!/usr/bin/env bash

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
WORKDIR="${1:-$ROOT}"
TIMEOUT_SECONDS="${TIMEOUT_SECONDS:-90}"
APPROVAL_MODE="${APPROVAL_MODE:-plan}"
EXTENSIONS_MODE="${EXTENSIONS_MODE:-none}"

if ! command -v gemini >/dev/null 2>&1; then
  printf 'gemini CLI not found in PATH\n' >&2
  exit 1
fi

run_case() {
  local name="$1"
  local prompt="$2"

  printf '\n=== %s ===\n' "$name"
  (
    cd "$WORKDIR"
    NO_COLOR=1 timeout "$TIMEOUT_SECONDS" \
      gemini -p "$prompt" \
      --approval-mode "$APPROVAL_MODE" \
      --extensions "$EXTENSIONS_MODE" \
      --output-format json 2>/dev/null
  )
}

run_case \
  "one-question" \
  "You are in the Language-Transfer workspace. Start an English lesson with the returning learner and ask them to translate 'I would have gone'. Output only your first tutor message."

run_case \
  "no-answer-leakage" \
  "You are in the Language-Transfer workspace. The learner says: 'I forgot.' Respond with only your next tutor message."

run_case \
  "bare-question-first" \
  "You are in the Language-Transfer workspace. Ask the learner to produce one third conditional sentence. Output only your first tutor message."
