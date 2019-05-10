#### Air Data ###

To bring up the local stack simply run 

bash -x runway.sh 

To set up the stack on EKS run 

bash -x EKS/apponeks.sh


Please Note :
--------------- 
<li> #minikube must be installed on your local machine with minimum 6GB RAM allocated to it since the airports1.0 and airports1.1 is consuming more resources when ran on lcoal env. </li>
<li> #While settting up the stack in local env we found that airports app is taking more time to be active hence the liveness probe and readiness probe are disabled on local stack, which worked fine while testing on EKS still the time to live was close to 10 minutes . </li>
<li> #If the app takes 5-10 minitues to inialize and be available do call the api url accordingly.  </li>
<li> # On EKS we expect that iam authenticated machine is already configured with nginx as ingress controller so as to use ELB as entrypoint for the stack .  </li>
