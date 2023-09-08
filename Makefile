.PHONY: docker
docker:
	@rm rainbow_book || true
	@GOOS=linux GOARCH=arm go build -o rainbow_book .
	@docker rmi -f levey/rainbow_book:v0.0.2
	@docker build -t levey/rainbow_book:v0.0.2 .