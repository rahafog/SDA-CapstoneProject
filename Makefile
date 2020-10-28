install-tekton:
	kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml

front-end-service:
	kubectl create -f ./front-end/resource.yaml -n test
	kubectl create -f ./front-end/task.yaml -n test
	kubectl create -f ./front-end/task-deployment.yaml -n test
	kubectl create -f ./front-end/pipeline.yaml -n test
	kubectl create -f ./front-end/pipelinerun.yaml -n test

orders-service:
	kubectl create -f ./orders/resource.yaml -n test
	kubectl create -f ./orders/task-db.yaml -n test
	kubectl create -f ./orders/task-db-deployment.yaml -n test
	kubectl create -f ./orders/task.yaml -n test
	kubectl create -f ./orders/task-deployment.yaml -n test
	kubectl create -f ./orders/pipeline.yaml -n test
	kubectl create -f ./orders/pipelinerun.yaml -n test

carts-service:
	kubectl create -f ./carts/resource.yaml -n test
	kubectl create -f ./carts/task-db.yaml -n test
	kubectl create -f ./carts/task-db-deployment -n test
	kubectl create -f ./carts/task.yaml -n test
	kubectl create -f ./carts/task-deployment.yaml -n test
	kubectl create -f ./carts/pipeline.yaml -n test
	kubectl create -f ./carts/pipelinerun.yaml -n test

catalogue-servive:
	kubectl create -f ./catalogue/resource.yaml -n test
	kubectl create -f ./catalogue/task-db.yaml -n test
	kubectl create -f ./catalogue/task-db-deployment.yaml -n test
	kubectl create -f ./catalogue/task.yaml -n test
	kubectl create -f ./catalogue/task-deployment.yaml -n test
	kubectl create -f ./catalogue/pipeline.yaml -n test
	kubectl create -f ./catalogue/pipelinerun.yaml -n test

user-service:
	kubectl create -f ./user/resource.yaml -n test
	kubectl create -f ./user/task-db.yaml -n test
	kubectl create -f ./user/task-db-deployment.yaml -n test
	kubectl create -f ./user/task.yaml -n test
	kubectl create -f ./user/task-deployment.yaml -n test
	kubectl create -f ./user/pipeline.yaml -n test
	kubectl create -f ./user/pipelinerun.yaml -n test

payment-service:
	kubectl create -f ./payment/resource.yaml -n test
	kubectl create -f ./payment/task.yaml -n test
	kubectl create -f ./payment/task-deployment.yaml -n test
	kubectl create -f ./payment/pipeline.yaml -n test
	kubectl create -f ./payment/pipelinerun.yaml -n test

shipping-service:
	kubectl create -f ./shipping/resource.yaml -n test
	kubectl create -f ./shipping/task.yaml -n test
	kubectl create -f ./shipping/task-deployment.yaml -n test
	kubectl create -f ./shipping/pipeline.yaml -n test
	kubectl create -f ./shipping/pipelinerun.yaml -n test

queue-master:
	kubectl create -f ./queue-master/resource.yaml -n test
	kubectl create -f ./queue-master/task.yaml -n test
	kubectl create -f ./queue-master/task-deployment.yaml -n test
	kubectl create -f ./queue-master/pipeline.yaml -n test
	kubectl create -f ./queue-master/pipelinerun.yaml -n test
