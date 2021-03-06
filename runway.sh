!#/bin/bash
eval $(minikube docker-env)
minicube addons enable ingress
kubectl apply -f allwithouthealthcheck.yml 
kubectl apply -f ingress.yml
hostaddress=$(minikube ip)
echo "access your apps using https://$hostaddress/service/param"
echo "https://$hostaddress/countries"
echo "https://$hostaddress/airports/NL"
echo "https://$hostaddress/airports/EHAM"
echo "https://$hostaddress/airports"
echo "https://$hostaddress/airports?full=0"
echo "https://$hostaddress/search/NL"
