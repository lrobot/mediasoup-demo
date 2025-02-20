

(
  cd app &&
  cp ../server/config.qq.js __config.qq.js
  podman build -f Dockerfile.qq --tag mediasoupdemo_app:latest .
  rm __config.qq.js
)
