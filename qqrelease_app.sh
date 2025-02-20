
PODMAN=docker
which podman > /dev/null 2>&1 && PODMAN=podman

(
  cd app &&
  cp ../server/config.qq.js __config.qq.js
  ${PODMAN} build -f Dockerfile.qq --tag mediasoupdemo_app:latest .
  rm __config.qq.js
)
