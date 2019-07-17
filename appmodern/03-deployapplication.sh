#!/bin/bash
#
# IBM Cloud Private - Proof of Technology
#
# Purpose: Deploy Liberty Docker container for Employee TA  

echo ==========================================================
echo Deploy Liberty Docker container for PBW 
echo ==========================================================
echo

echo ==========================================================
echo Running command \"kubectl --namespace default  apply -f values.yaml\"
echo ==========================================================
kubectl --namespace default  apply -f values.yaml
