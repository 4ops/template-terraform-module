.ONESHELL:
.SHELL := /usr/bin/bash
.PHONY: apply destroy destroy-plan plan init fmt

fmt:
	@terraform fmt -recursive

init: fmt
	@cd test && terraform init -input=false && terraform validate

plan: init
	@cd test && terraform plan -compact-warnings -input=false -out=plan.tfplan

destroy-plan: init
	@cd test && terraform plan -input=false -destroy

apply: init
	@cd test && terraform apply -lock=true -input=false plan.tfplan && rm -f plan.tfplan

destroy: init
	@cd test && terraform destroy -lock=true -input=false
