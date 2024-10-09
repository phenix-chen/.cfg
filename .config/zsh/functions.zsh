function auto_pipenv_shell {
    if [ ! -n "${PIPENV_ACTIVE+1}" ]; then
        if [ -f "Pipfile" ] ; then
            source "$(pipenv --venv)/bin/activate"
            # pipenv shell
        fi
    fi
}

function auto_venv_shell {
    if [ ! -n "${VIRTUAL_ENV}" ]; then
        if [ -d ".venv" ] ; then
            source ".venv/bin/activate"
        fi
    fi
}

# function cd {
#     builtin cd "$@"
#     auto_venv_shell
# }
