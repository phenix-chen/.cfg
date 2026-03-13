#!/bin/zsh

repos=(
  "/Users/chen/.openclaw/workspace"
  "/Users/chen/.openclaw/workspace/skills"
  "/Users/chen/.openclaw/workspace/ob"
)

has_changes=0

for repo in "${repos[@]}"; do
  echo "── $repo"
  if [[ ! -d "$repo/.git" ]]; then
    echo "   ⚠️  Not a git repo"
    continue
  fi

  git_status=$(git -C "$repo" status --short)
  if [[ -n "$git_status" ]]; then
    echo "$git_status" | sed 's/^/   /'
    has_changes=1
  else
    echo "   ✓ Clean"
  fi
done

exit $has_changes
