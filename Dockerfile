FROM registry.gitlab.com/passivelogic/compiler/swift:6.1 AS builder

WORKDIR /workdir
COPY . .
RUN swift build -c release


FROM registry.gitlab.com/passivelogic/compiler/swift:6.1-slim

COPY --from=builder /workdir/.build/release/nvidia-device-query /usr/local/bin

