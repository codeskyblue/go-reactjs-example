# go-reactjs-example
This is an exmple web use Golang([macaron](https://github.com/Unknwon/macaron)) And ReactJS

A real world project use go and reactjs. example: [file-server](https://github.com/codeskyblue/file-server)

## Build
Suggest install node through [nvm](https://github.com/creationix/nvm)

	npm install -g webpack
	npm install
	make prod

### Develop
Your need to know what is react, and golang.
In develop mode, Support react hot reload

	npm install
	make dev

Open another terminal

	go run main.go

Open browser, navgate to <http://localhost:8000>

Edit file `public/HelloWorld.jsx` Can see live change.

Good luck. ^0^

## Thanks
1. <http://segmentfault.com/a/1190000002551952>
1. [update package.json dependencies](http://stackoverflow.com/questions/16073603/how-do-i-update-each-dependency-in-package-json-to-the-latest-version)
1. [react hot reload QA](https://github.com/gaearon/react-hot-loader/blob/master/docs/Troubleshooting.md)
