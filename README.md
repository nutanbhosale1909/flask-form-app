# flask-form-app
**Step1 :**
**####### Web App: First & Last Name Form****
Language: Python Flask
Accepts first and last name via HTML form
Displays the submitted values
#cd flask-form-app/app
#python app.py

 **Step2:**
 ###### Dockerize the Application #############
 ######**Create a Dockerfile**
FROM python:3.9-slim
WORKDIR /app
COPY app/ .
RUN pip install -r requirements.txt
CMD ["python", "app.py"]

**Build and test locally:** 
#cd flask-form-app
#docker build -t flask-form-app .
#docker run -p 5000:5000 flask-form-app

**Step 3: Create k8s/deployment.yaml and service.yaml for deployment**
Apply to Minikube
#kubectl apply -f k8s/
#kubectl get svc

Access app using Minikube IP 
#minikube service flask-form-app

**Step 4: AWS Hosting via Terraform**
Navigate to flask-form-app/terraform/ directory
#cd terraform
#terraform init
#terraform apply

**Step 5: Nginx Reverse Proxy on Port 80**
On EC2 instance (via user_data or SSH):
Install and configure Nginx to reverse proxy to the Kubernetes cluster
Use nginx/default.conf with proxy_pass to your app's NodePort

**Step 6: Encrypt SSL**
Use Certbot to install SSL:
#sudo apt install certbot python3-certbot-nginx
#sudo certbot --nginx -d yourname.signiance.com

**step 7: CI/CD with GitHub Actions**
