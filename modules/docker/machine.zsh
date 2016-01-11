if (( ! $+commands[docker-machine] )); then
  return 1
fi

docker_machine_init() {
  if test ${DOCKER_MACHINE_NAME}; then
    local _status=$(docker-machine status ${DOCKER_MACHINE_NAME})
    if [[ ! ${_status} == 'Stopped' ]]; then
      eval $(docker-machine env ${DOCKER_MACHINE_NAME})
    fi
  fi
}
