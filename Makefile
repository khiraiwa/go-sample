
ARCH?=amd64
OS?=darwin
GO111MODULE=on
GOBIN:=$(shell pwd)/.bin
LDFLAGS=
GOBIN:=$(shell pwd)/.bin

.PHONY: app
app: cmd/main.go
	CGO_ENABLED=0 GOOS=$(OS) GOARCH=$(ARCH) go build -a -installsuffix cgo -ldflags '-s -w $(LDFLAGS)' -o app ./cmd

clean:
	rm -f app
