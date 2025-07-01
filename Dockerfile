FROM registry.gitlab.com/passivelogic/compiler/swift AS builder

WORKDIR /workdir
COPY . .
RUN swift build -c release


FROM registry.gitlab.com/passivelogic/compiler/swift:slim

WORKDIR /workdir
COPY --from=builder /workdir/.build/release/nvidia-device-query .
CMD ["./nvidia-device-query"]

