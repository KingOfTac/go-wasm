run: build
	@./bin/backend

wasm: export GOOS=js
wasm: export GOARCH=wasm
wasm:
	@go build -o bin/lib.wasm cmd/wasm/main.go

build: export GOOS=windows
build: export GOARCH=amd64
build:
	@go build -o bin/backend cmd/api/main.go