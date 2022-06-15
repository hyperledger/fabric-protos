#!/usr/bin/env sh

repo="${1:?}"
deploy_key="${2:?}"

umask 077
mkdir -p "${HOME}/.ssh"

echo ${deploy_key} | base64 --decode > "${HOME}/.ssh/${repo}_deploy_key"

touch "${HOME}/.ssh/config"
cat << CONFIG-EOF >> "${HOME}/.ssh/config"
Host github.com-${repo}
  Hostname github.com
  User git
  IdentityFile ${HOME}/.ssh/${repo}_deploy_key
  IdentitiesOnly yes

CONFIG-EOF
