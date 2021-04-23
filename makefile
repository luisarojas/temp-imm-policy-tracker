all: build run
run:
	docker run -e PYTHONUNBUFFERED=1 --rm --name imm-policy-tracker luisacodes/imm-policy-tracker
build:
	docker build -t luisacodes/imm-policy-tracker .