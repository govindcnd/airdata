!#/bin/bash
kubectl apply -f allwithouthealthcheck.yml 
kubectl apply -f ingress.yml
hostaddress=$(kubectl get ing web-ingress | awk -F " " '{print  $3}' | awk 'NR==2')
echo "access your apps using https://$hostaddress/service/param"
echo "sample url's"
echo "https://$hostaddress/countries"
echo "https://$hostaddress/airports/NL"
echo "https://$hostaddress/airports/EHAM"
echo "https://$hostaddress/airports"
echo "https://$hostaddress/airports?full=0"
echo "https://$hostaddress/search/NL"
