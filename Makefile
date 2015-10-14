#
# Makefile
# hzsunshx, 2015-02-11 13:17
#

dev: clean
	npm start

prod: bundle binary

bundle:
	webpack -p --progress --config webpack.config.prod.js

binary:
	go get github.com/jteeuwen/go-bindata/...
	(cd public; go-bindata -pkg public favicon.ico bundle.js js/ css/)
	(cd templates; go-bindata -pkg templates ./...)
	go get -tags "bindata"
	go build -tags "bindata"

install-deps:
	sudo apt-get update -qq
	sudo apt-get install -qq nodejs npm

deps:
	npm install

cross-build:
	GOOS=windows GOARCH=386 go build
	GOOS=linux GOARCH=386 go build -o fileserv-linux-386
	GOOS=linux GOARCH=amd64 go build -o fileserv-linux-amd64

webpack:
	webpack

clean:
	rm -f public/bundle.js
# vim:ft=make
#
