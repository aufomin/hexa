# File autogenerated by hexa.run on {{date}}
apiVersion: apps/v1
kind: Deployment
metadata:
 name: {{containerName}}
spec:
 replicas: 1
 selector:
   matchLabels:
     app: {{containerName}}
 template:
   metadata:
     labels:
       app: {{containerName}}
   spec:
     containers:
     - name: {{containerName}}
       image: {{containerName}}acr.azurecr.io/{{containerName}}:latest
       resources:
         requests:
           cpu: 100m
           memory: 128Mi
         limits:
           cpu: 200m
           memory: 200Mi
       ports:
       - containerPort: 80
---
apiVersion: v1
kind: Service
metadata:
 name: {{containerName}}
spec:
 type: LoadBalancer
 ports:
 - port: 80
 selector:
   app: {{containerName}}


