
PODMAN=docker
which podman > /dev/null 2>&1 && PODMAN=podman

(
  cd app &&
  ${PODMAN} build -f Dockerfile.qq --tag mediasoupdemo_app:latest .
)
