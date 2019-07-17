#!/bin/bash
#
# IBM Cloud Private - Proof of Technology
#
# Purpose: Build Liberty Docker container for PBW

NAMESPACE=default


echo ==========================================================
echo Build Liberty Docker container for portfolio 
echo ==========================================================
echo

IMAGENAME=liberty/pbw:1.0.1

CLUSTERNAME=mycluster

docker build -t $CLUSTERNAME.icp:8500/$NAMESPACE/$IMAGENAME -f Dockerfile .

echo ==========================================================
echo Push image to the local registry
echo ==========================================================
echo

docker login $CLUSTERNAME.icp:8500 -u admin -p admin 
docker push $CLUSTERNAME.icp:8500/$NAMESPACE/$IMAGENAME 
