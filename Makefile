.PHONY: all build

all: build

build:
	go build -o build/spotctl \
		-ldflags "-X main.spotifyClientID=$(SPOTIFY_CLIENT_ID) -X main.spotifyClientSecret=$(SPOTIFY_CLIENT_SECRET) -X main.version=$$(git rev-parse HEAD)" \
		./cmd/spotctl/...
