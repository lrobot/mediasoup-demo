echodo() { echo _omri_run_cmd:"$@"; $@; }
PODMAN=docker
which podman > /dev/null 2>&1 && PODMAN=podman

(
  cd app &&
  echodo ${PODMAN} build -f Dockerfile.qq --tag mediasoupdemo_app:latest . &&
  echodo ${PODMAN} push --retry 5 --tls-verify=false mediasoupdemo_app:latest docker://registry.rbat.tk/mediasoupdemo_app:latest
)
