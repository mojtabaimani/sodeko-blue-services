#!/bin/bash

# argocd projects
kubectl apply --context sodeko-dta -f pipeline/argocd/project-blue-tst.yaml
kubectl apply --context sodeko-dta -f pipeline/argocd/project-blue-acc.yaml
kubectl apply --context sodeko-prd -f pipeline/argocd/project-blue-prd.yaml

# app of the apps
kubectl apply --context sodeko-dta -f pipeline/argocd/app-of-apps-blue-tst.yaml
kubectl apply --context sodeko-dta -f pipeline/argocd/app-of-apps-blue-acc.yaml
kubectl apply --context sodeko-prd -f pipeline/argocd/app-of-apps-blue-prd.yaml
