# DevOps Bootcamp

A beginner-friendly entry point into the DevOps world.  
This repo contains a simple app and starter Kubernetes manifests.  
Your task is to gradually turn this into a Helm chart and automate deployments.

---

## Assignment Steps

1. Study the raw Kubernetes manifests in `k8s/`.

2. Create a Helm chart at `helm/bootcamp`:
   - Convert `deployment.yaml`, `service.yaml`, `configmap.yaml` into Helm templates.
   - **Parameterize values**: image repository, tag, replica count, and welcome message via `values.yaml`.
   - Add `NOTES.txt` to explain how to access the app.

3. Test your chart locally:
```bash
make lint
make install TAG=latest
```
4. Build and publish Docker image to GHCR:
```bash
make docker-build TAG=latest
make install TAG=latest
```
5. Cleanup if needed
```bash
make delete
```

---

## Prerequisites
- Docker
- Kubernetes cluster (preferably local minikube)
- kubectl
- Helm 3
- GitHub account (for CI/CD)

---

## Acceptance Criteria
- Helm chart installs and updates cleanly.
- Configurable message via values.yaml.
- GitHub Actions workflow lints Helm chart and builds image.
- Documentation updated with install/test steps.
