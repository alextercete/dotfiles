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

    # Configure SSH forwarding
    export SSH_AUTH_SOCK=$HOME/.ssh/agent.sock
    ALREADY_RUNNING=$(ps -auxww | grep -q "[n]piperelay.exe -ei -s //./pipe/openssh-ssh-agent"; echo $?)
    if [[ $ALREADY_RUNNING != "0" ]]; then
        if [[ -S $SSH_AUTH_SOCK ]]; then
            rm $SSH_AUTH_SOCK
        fi
        (setsid socat UNIX-LISTEN:$SSH_AUTH_SOCK,fork EXEC:"npiperelay.exe -ei -s //./pipe/openssh-ssh-agent",nofork &) >/dev/null 2>&1
    fi
fi
