#!/bin/bash
# check-repos.sh
# 检查本机和远程机器上的 git 仓库状态。
# 根据 ComputerName 自动切换 repos 列表：
#   mac-air  — 检查本机 repos，并通过 SSH 远程检查 mac-claw
#   mac-claw — 仅检查本机 repos
# 有未提交变更时以 ❓ 提示并列出文件，退出码 1；全部干净则退出码 0。

computer_name=$(scutil --get ComputerName)

if [[ "$computer_name" == "mac-air" ]]; then
  repos=(
    "$HOME/.agents/skills"
    "$HOME/.claude/skills"
    "$HOME/.gemini/antigravity/skills"
    "$HOME/.openclaw/workspace/skills"
    "/Users/chen/Library/Mobile Documents/iCloud~md~obsidian/Documents/chen"
  )

  echo -e "\033[32m=== Checking repos on mac-claw ===\033[0m"
  ssh chen@192.168.5.62 "~/bin/check-repos.sh"
  echo ""
  echo -e "\033[32m=== Checking repos on mac-air ===\033[0m"

elif [[ "$computer_name" == "mac-claw" ]]; then
  repos=(
    "/Users/chen/.openclaw/workspace"
    "/Users/chen/.openclaw/workspace/skills"
    "/Users/chen/.openclaw/workspace/ob"
  )
else
  echo "⚠️  Unknown computer: $computer_name"
  exit 1
fi

has_changes=0

for repo in "${repos[@]}"; do
  echo "── $repo"
  if [[ ! -d "$repo/.git" ]]; then
    echo "   ⚠️  Not a git repo"
    continue
  fi

  git_status=$(git -C "$repo" status --short)
  if [[ -n "$git_status" ]]; then
    echo "   ❓  Changes pending"
    echo "$git_status" | sed 's/^/   /'
    has_changes=1
  else
    echo "   ✓ Clean"
  fi
done

exit $has_changes
