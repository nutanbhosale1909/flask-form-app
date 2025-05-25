# Create main project directory
#mkdir -p devops-webapp-project

# Navigate into it
#cd devops-webapp-project

# Create app structure
mkdir -p app/templates
touch app/app.py
touch app/templates/form.html

# Create Dockerfile
touch Dockerfile

# Create Kubernetes manifests
mkdir -p kubernetes
touch kubernetes/deployment.yaml
touch kubernetes/service.yaml

# Create Terraform configs
mkdir -p terraform
touch terraform/main.tf
touch terraform/provider.tf

# Create Nginx config
mkdir -p nginx
touch nginx/flask.conf

# Create GitHub Actions workflow
mkdir -p .github/workflows
touch .github/workflows/deploy.yaml

# Create README and LICENSE
touch README.md
touch LICENSE

