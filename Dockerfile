FROM ghcr.io/dataparallel-swift/swift:6.2 AS builder

WORKDIR /workdir
COPY . .
RUN swift build -c release


FROM ghcr.io/dataparallel-swift/swift:6.2-slim

COPY --from=builder /workdir/.build/release/nvidia-device-query /usr/local/bin
