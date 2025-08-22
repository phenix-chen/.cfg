#!/usr/bin/env python3
import os
from datetime import datetime

# 1. 提示用户输入项目名称
project_name = input("请输入项目名称 (ProjectName): ")

# 2. 项目文件夹名称为 YYYY-MM-ddProjectName
current_date = datetime.now().strftime("%Y-%m-%d")
project_folder = f"{current_date}{project_name}"

# 3. 检查目录并创建
base_dirs = [
    "/Users/chen/Documents/1-Projects",
    "/Users/chen/Library/Mobile Documents/iCloud~md~obsidian/Documents/chen/1-Projects",
]

print(f"\n项目文件夹名称: {project_folder}")

for base_dir in base_dirs:
    full_path = os.path.join(base_dir, project_folder)
    print(f"检查目录: {full_path}")
    if not os.path.exists(full_path):
        try:
            os.makedirs(full_path)
            print(f"  -> 目录已创建: {full_path}")
        except OSError as e:
            print(f"  -> 创建目录失败: {e}")
    else:
        print(f"  -> 目录已存在.")

    # 在 Obsidian 目录下创建 0Todo 空文件
    if "obsidian" in base_dir.lower():
        todo_file_path = os.path.join(full_path, "0Todo.md")
        try:
            with open(todo_file_path, "w") as f:
                pass  # 创建空文件
            print(f"  -> 已创建 0Todo 文件: {todo_file_path}")
        except OSError as e:
            print(f"  -> 创建 0Todo 文件失败: {e}")

finder_path = os.path.join(base_dirs[0], project_folder)
finder_link = f"[finder](file://{finder_path})"
obsidian_link = (
    f"[obsidian](obsidian://open?vault=chen%26file=1-Projects/{project_folder}/0Todo)"
)
# 4. 生成TickTick URL
ticktick_url = f"ticktick://x-callback-url/v1/add_task?title={project_name}&content={finder_link}\n{obsidian_link}"

# 打印最终的URL


# 5. 用 open 命令自动调起 TickTick 客户端
print("\n正在通过 open 命令调起 TickTick 客户端...")
try:
    os.system(f'open "{ticktick_url}"')
    print("已尝试调起 TickTick 客户端。")
except Exception as e:
    print(f"调起 TickTick 客户端失败: {e}")
except Exception as e:
    print(f"请求失败: {e}")

print("\n请使用以下URL在TickTick中创建任务:")
print(ticktick_url)
