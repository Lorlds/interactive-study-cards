#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/Lorlds/interactive-study-cards.git"
SKILL_NAME="interactive-study-cards"
REF="${1:-${INTERACTIVE_STUDY_CARDS_REF:-main}}"
INSTALL_ROOT="${CODEX_HOME:-$HOME/.codex}/skills"
TARGET="$INSTALL_ROOT/$SKILL_NAME"

log() {
  printf '%s\n' "$*"
}

require_git() {
  if ! command -v git >/dev/null 2>&1; then
    log "Error: git is required but was not found."
    exit 1
  fi
}

ensure_clean_worktree() {
  if ! git -C "$TARGET" diff --quiet || ! git -C "$TARGET" diff --cached --quiet; then
    log "Error: $TARGET has local changes. Commit, stash, or remove them before updating."
    exit 1
  fi
}

checkout_ref() {
  git -C "$TARGET" fetch --tags origin
  git -C "$TARGET" checkout "$REF"

  if [ "$REF" = "main" ]; then
    git -C "$TARGET" pull --ff-only origin main
  fi
}

require_git
mkdir -p "$INSTALL_ROOT"

if [ -e "$TARGET" ]; then
  if [ ! -d "$TARGET/.git" ]; then
    log "Error: $TARGET exists but is not a git repository."
    log "Remove it or move it aside, then rerun this installer."
    exit 1
  fi

  log "Updating $SKILL_NAME in $TARGET"
  ensure_clean_worktree
  checkout_ref
else
  log "Installing $SKILL_NAME into $TARGET"
  git clone "$REPO_URL" "$TARGET"
  checkout_ref
fi

VERSION="$(git -C "$TARGET" describe --tags --always --dirty 2>/dev/null || git -C "$TARGET" rev-parse --short HEAD)"

log ""
log "Installed $SKILL_NAME at $VERSION"
log "Restart Codex so the skill discovery list refreshes."
