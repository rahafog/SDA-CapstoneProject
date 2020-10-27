
build:
        kubectl apply -f ./tekton/carts/resource.yaml -n test
	kubectl apply -f ./tekton/carts/task.yaml -n test
	kubectl apply -f ./tekton/carts/task-dep.yaml -n test
	kubectl apply -f ./tekton/carts/pipeline.yaml -n test
	kubectl apply -f ./tekton/carts/pipelineRun.yaml -n test


delete:
        kubectl delete -f ./tekton/carts/resource.yaml -n test
	kubectl delete -f ./tekton/carts/task.yaml -n test
	kubectl delete -f ./tekton/carts/task-dep.yaml -n test
	kubectl delete -f ./tekton/carts/pipeline.yaml -n test
	kubectl delete -f ./tekton/carts/pipelineRun.yaml -n test
