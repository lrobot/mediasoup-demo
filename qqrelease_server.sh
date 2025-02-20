
PODMAN=docker
which podman > /dev/null 2>&1 && PODMAN=podman

(
  cd server &&
  ${PODMAN} build -f Dockerfile.qq --tag mediasoupdemo_server:latest .
)
