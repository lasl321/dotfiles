#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOCAL_BIN="${HOME}/.local/bin"
TMUX_CONF_SOURCE="${REPO_ROOT}/tmux/.tmux.conf"
TMUX_CONF_TARGET="${HOME}/.tmux.conf"

mkdir -p "${LOCAL_BIN}"

ln -sfn "${TMUX_CONF_SOURCE}" "${TMUX_CONF_TARGET}"

for tool in "${REPO_ROOT}/tmux/tmux-file-picker/tmux-file-picker" \
  "${REPO_ROOT}/tmux/tmux-tools/tmux-session-switcher" \
  "${REPO_ROOT}/tmux/tmux-tools/tmux-zoxide-session" \
  "${REPO_ROOT}/tmux/tmux-tools/tmux-zoxide-window" \
  "${REPO_ROOT}/tools/nvim-diary.sh"
do
  if [[ -x "${tool}" ]]; then
    ln -sfn "${tool}" "${LOCAL_BIN}/$(basename "${tool}")"
  else
    echo "Skipping non-executable tool: ${tool}" >&2
  fi
done

echo "tmux links set up:"
echo "  ${TMUX_CONF_TARGET} -> ${TMUX_CONF_SOURCE}"
echo "  ${LOCAL_BIN}/tmux-file-picker"
echo "  ${LOCAL_BIN}/tmux-session-switcher"
echo "  ${LOCAL_BIN}/tmux-zoxide-session"
echo "  ${LOCAL_BIN}/tmux-zoxide-window"
echo "  ${LOCAL_BIN}/nvim-diary.sh"
