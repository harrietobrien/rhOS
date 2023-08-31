#!/bin/bash

function get_os {
  if [[ $(uname) == "Linux" ]]; then
    # shellcheck disable=SC2155
    local DISTRO=$(awk -F= '/^NAME/' /etc/os-release)
    if [[ ${DISTRO} = "Ubuntu"* ]]; then
      # TODO: identify all distros
      echo "Ubuntu";
    else
      exit 1;
    fi
  elif [[ $(uname) == "Darwin" ]]; then
    echo "OSX"
  else
    echo "UNK"
  fi
}
OS=$(get_os)
echo "$OS"