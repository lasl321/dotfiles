#!/bin/bash

input=$(cat)

cwd=$(echo "$input" | jq -r '.workspace.current_dir')
model_name=$(echo "$input" | jq -r '.model.display_name')
remaining=$(echo "$input" | jq -r '.context_window.remaining_percentage // empty')
resets_at=$(echo "$input" | jq -r '.rate_limits.five_hour.resets_at // empty | floor' 2>/dev/null)

dir_name=$(basename "$cwd")
branch=$(git -C "$cwd" --no-optional-locks branch --show-current 2>/dev/null)

out="\033[36m${dir_name}\033[0m"

if [ -n "$branch" ]; then
  out="${out} | \033[35m${branch}\033[0m"
fi

out="${out} | \033[33m${model_name}\033[0m"

if [ -n "$remaining" ]; then
  remaining_rounded=$(printf '%.0f' "$remaining")
  out="${out} | \033[32m${remaining_rounded}% left\033[0m"
fi

if [ -n "$resets_at" ]; then
  resets_fmt=$(date -r "$resets_at" '+%I:%M%p' 2>/dev/null | sed 's/^0//' | tr '[:upper:]' '[:lower:]')
  if [ -n "$resets_fmt" ]; then
    out="${out} | \033[34mresets ${resets_fmt}\033[0m"
  fi
fi

printf '%b\n' "$out"
