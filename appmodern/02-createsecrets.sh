#!/bin/bash
#
# IBM Cloud Private - Proof of Technology
#
# Purpose: Create secrets for PBW 


echo ==========================================================
echo Create secrets for PBW Database 
echo ==========================================================
echo

kubectl -n default  delete secret db2 > /dev/null 2>&1

# Db2 secret
kubectl -n default \
    create secret generic db2 \
    --from-literal=id=db2inst1 \
    --from-literal=pwd=db2inst1 \
    --from-literal=host=db2r1-ibm-db2oltp-dev.default.svc.cluster.local \
    --from-literal=port=50000 \
    --from-literal=db=PBW

