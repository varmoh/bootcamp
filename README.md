# DevOps Bootcamp

A beginner-friendly entry point into the DevOps world.  
This repo contains a simple app and starter Kubernetes manifests.  
Your task is to gradually turn this into a Helm chart and automate deployments.

---

## Assignment Steps
1. Build and publish image
2. Convert manifests into a Helm chart (`helm/`).
3. Add automation with Makefile commands.
4. Extend CI/CD workflow in `.github/workflows/ci.yml`.

---

## Prerequisites
- Docker
- Kubernetes cluster (kind / minikube / cloud)
- kubectl
- Helm 3
- GitHub account (for CI/CD)

---

## Acceptance Criteria
- Helm chart installs and updates cleanly.
- Configurable message via values.yaml.
- GitHub Actions workflow lints Helm chart.
- Documentation updated with install/test steps.
