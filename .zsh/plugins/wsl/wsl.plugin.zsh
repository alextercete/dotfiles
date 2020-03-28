if [ -n "$WSL_DISTRO_NAME" ]; then
    # If Docker Desktop is running, use it
    if nc -z localhost 2375; then
        export DOCKER_HOST=tcp://localhost:2375
    # Otherwise, try Docker Machine as a fallback
    elif [ -x "$(command -v docker-machine.exe)" ]; then
        machine=$(docker-machine.exe ls --format "{{.Name}}")

        if [ "$(docker-machine.exe status $machine)" = "Stopped" ]; then
            docker-machine.exe start $machine
        fi

        eval $(docker-machine.exe env $machine --shell zsh)
        export DOCKER_CERT_PATH=$(wslpath $DOCKER_CERT_PATH)
        export COMPOSE_CONVERT_WINDOWS_PATHS=false
    fi
fi
