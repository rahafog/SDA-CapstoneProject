default: build

build:
	docker build --tag node4 .

test:
	docker run -it --rm -v "$$(pwd)":/app -w /app node4 mocha test.js

itest:
	docker run -it --rm -v "$$(pwd)":/app -w /app node4 casperjs test *_test.js

init:
	docker run -it --rm -v "$$(pwd)":/app -w /app node4 npm init


install:
	docker run -it --rm -v "$$(pwd)":/app -w /app node4 npm install
	
npm:
	docker run -it --rm -v "$$(pwd)":/app -w /app node4 npm install --save chrome-remote-interface chrome-launcher mocha express request body-parser sinon chai chai-http http 

upgrade:
	docker run -it --rm -v "$$(pwd)":/app -w /app node4 jscodeshift -t tmp/sinon-codemod/migrate-to-v5.js *.js
	docker run -it --rm -v "$$(pwd)":/app -w /app node4 jscodeshift -t tmp/sinon-codemod/migrate-to-v5.js e2e/*.js
	docker run -it --rm -v "$$(pwd)":/app -w /app node4 jscodeshift -t tmp/sinon-codemod/extract-calls-fake.js e2e/*.js
	docker run -it --rm -v "$$(pwd)":/app -w /app node4 jscodeshift -t tmp/sinon-codemod/extract-calls-fake.js *.js


build-e2e:
	kubectl create -f ./resource.yaml -n test
	kubectl create -f ./task.yaml -n test
	kubectl create -f ./run-task.yaml -n test
	kubectl create -f ./task-deployment.yaml -n test
	kubectl create -f ./prod-task.yaml -n test
	kubectl create -f ./pipline.yaml -n test
	kubectl create -f ./pipelinerun.yaml -n test

e2e-down:
	kubectl delete -f ./resource.yaml -n test
	kubectl delete -f ./task.yaml -n test
	kubectl delete -f ./run-task.yaml -n test
	kubectl delete -f ./task-deployment.yaml -n test
	kubectl delete -f ./prod-task.yaml -n test
	kubectl delete -f ./pipline.yaml -n test
	kubectl delete -f ./pipelinerun.yaml -n test


