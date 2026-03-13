#!/bin/bash
# 在三个 skills 目录中执行 git pull

SKILLS_DIRS=(
  "$HOME/.agents/skills"
  "$HOME/.claude/skills"
  "$HOME/.gemini/antigravity/skills"
  "$HOME/.openclaw/workspace/skills"
)

for dir in "${SKILLS_DIRS[@]}"; do
  if [ -d "$dir" ]; then
    echo "=== Pulling $dir ==="
    (cd "$dir" && git pull)
    echo ""
  else
    echo "=== 目录不存在: $dir ==="
    echo ""
  fi
done
