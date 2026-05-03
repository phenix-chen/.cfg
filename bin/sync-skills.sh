#!/bin/bash
# 在三个 skills 目录中执行 git pull

computer_name=$(scutil --get ComputerName)

if [[ "$computer_name" == "mac-air" ]]; then
  SKILLS_DIRS=(
    "$HOME/.agents/skills"
    "$HOME/.claude/skills"
    "$HOME/.gemini/antigravity/skills"
    "$HOME/.openclaw/workspace/skills"
    # "/Users/chen/Library/Mobile Documents/iCloud~md~obsidian/Documents/chen"
    "/Users/chen/Downloads/ob"
  )
  echo -e "\033[32m=== Checking repos on mac-claw ===\033[0m"
  # ssh chen@192.168.5.62 "~/bin/sync-skills.sh"
  echo ""
  echo -e "\033[32m=== Checking repos on mac-air ===\033[0m"
elif [[ "$computer_name" == "mac-claw" ]]; then
  SKILLS_DIRS=(
    "$HOME/.agents/skills"
    "$HOME/.claude/skills"
    "$HOME/.gemini/antigravity/skills"
    "$HOME/.openclaw/workspace/skills"
    "/Users/chen/.openclaw/workspace/ob"
  )
else
  echo "⚠️  Unknown computer: $computer_name"
  exit 1
fi
for dir in "${SKILLS_DIRS[@]}"; do
  if [ -d "$dir" ]; then
    echo "── $dir"
    (
      cd "$dir" || exit
      git fetch -q 2>/dev/null
      ahead=$(git rev-list --count HEAD@{u}..HEAD 2>/dev/null)
      behind=$(git rev-list --count HEAD..HEAD@{u} 2>/dev/null)
      if [[ "$ahead" -gt 0 && "$behind" -gt 0 ]]; then
        echo "   🔀  Diverged (ahead $ahead, behind $behind)"
      elif [[ "$ahead" -gt 0 ]]; then
        echo "   ⬆️  Ahead of remote by $ahead commit(s)"
      elif [[ "$behind" -gt 0 ]]; then
        echo "   ⬇️  Behind remote by $behind commit(s), pulling..."
        git pull
        echo "   ✅  Up to date"
      else
        echo "   ✅  Up to date"
      fi
    )
    echo ""
  else
    echo "── $dir"
    echo "   ⚠️  目录不存在"
    echo ""
  fi
done
