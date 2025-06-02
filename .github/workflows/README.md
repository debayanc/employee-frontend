# GitHub Actions Setup for Docker Hub

To enable automatic building and pushing of Docker images to Docker Hub via GitHub Actions, you need to set up the following secrets in your GitHub repository:

1. Go to your GitHub repository
2. Click on "Settings" > "Secrets and variables" > "Actions"
3. Add the following secrets:

## Required Secrets

- `DOCKERHUB_USERNAME`: Your Docker Hub username
- `DOCKERHUB_TOKEN`: Your Docker Hub access token (not your password)

## Creating a Docker Hub Access Token

1. Log in to [Docker Hub](https://hub.docker.com)
2. Click on your username > "Account Settings" > "Security"
3. Click "New Access Token"
4. Give it a description like "GitHub Actions"
5. Copy the token and add it as the `DOCKERHUB_TOKEN` secret in GitHub

## Workflow Details

The GitHub Actions workflow will:

1. Build the Docker image on every push to the `main` branch
2. Tag the image with both `latest` and the commit SHA
3. Push the image to Docker Hub under your username
4. Use build caching to speed up subsequent builds

## Using the Docker Image

After the workflow runs successfully, you can pull the image with:

```bash
docker pull yourusername/employee-frontend:latest
```

Remember to update your Kubernetes manifests to use this image.