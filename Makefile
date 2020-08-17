
deploy:
	docker build -t youngwookim/word-count-beam-flink:latest .
	docker push youngwookim/word-count-beam-flink:latest
	kubectl apply -f flinkcluster-word-count-beam.yaml

delete:
	kubectl delete -f flinkcluster-word-count-beam.yaml

status:
	kubectl describe flinkclusters flinkcluster-word-count-beam
	kubectl logs job.batch/flinkcluster-word-count-beam-job
