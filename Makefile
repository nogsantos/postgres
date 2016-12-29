all: build

build:
	@docker build --tag=nogsantos/postgresql .

release: build
	@docker build --tag=nogsantos/postgresql:$(shell cat VERSION) .
