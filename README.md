# Employee Frontend

A simple frontend application for the Employee Service API.

## Project Structure

```
employee-frontend/
├── src/                  # Source files
│   ├── css/              # CSS stylesheets
│   ├── js/               # JavaScript files
│   ├── img/              # Image assets
│   └── index.html        # Main HTML file
├── nginx/                # Nginx configuration
│   └── default.conf      # Nginx server configuration
├── k8s/                  # Kubernetes manifests
│   ├── dev/              # Development environment
│   └── prod/             # Production environment
├── Dockerfile            # Docker image definition
├── build.sh              # Script to build Docker image
├── deploy-dev.sh         # Script to deploy to dev environment
└── deploy-prod.sh        # Script to deploy to prod environment
```

## Development

### Local Development

You can run this frontend locally using Docker:

```bash
# Build the Docker image
./build.sh

# Run the container
docker run -p 8080:80 employee-frontend:latest
```

Then access the application at http://localhost:8080

### Building

```bash
# Build the Docker image
./build.sh
```

## Deployment

### Development Environment

```bash
# Deploy to development environment
./deploy-dev.sh
```

### Production Environment

```bash
# Deploy to production environment
./deploy-prod.sh
```

## API Integration

The frontend connects to the Employee Service API at the `/api/` endpoint, which is proxied to the backend service by Nginx.

## Technologies Used

- HTML5
- CSS3
- JavaScript (ES6+)
- Nginx
- Docker
- Kubernetes