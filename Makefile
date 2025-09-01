lint:
	helm lint $(CHART)

install:
	helm upgrade --install $(RELEASE) $(CHART) -n $(NAMESPACE) --create-namespace \
		--set image.repository=$(IMAGE) \
		--set image.tag=$(TAG)

delete:
	helm uninstall $(RELEASE) -n $(NAMESPACE)

docker-build:
	@echo "Docker image is built in CI only. Do not run locally."
	
git-commit:
	git config user.name "bootcamp-ci"
	git config user.email "ci@example.com"
	git add .
	git commit -m "ci: auto-update by Makefile"
	git push origin dev