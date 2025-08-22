check_and_activate_venv() {
    if [ -d "./.venv" ]; then
        echo "Activating virtual environment in .venv..."
        source ~/miniconda3/bin/activate ./.venv
    fi
}

conda_create_venv() {
    if [ -z "$1" ]; then
        echo "Error: Please specify a Python version. Usage: conda_create_venv <version>"
        return 1
    fi

    if [ -d "./.venv" ]; then
        echo "Warning: .venv already exists. Do you want to overwrite it? (y/n)"
        read -r answer
        if [[ "$answer" != "y" ]]; then
            echo "Operation canceled."
            return 1
        fi
        rm -rf ./.venv  # 清理旧环境
    fi

    conda create --prefix .venv python="$1"
}
