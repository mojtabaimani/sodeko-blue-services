
kubeseal \
    --namespace blue-tst \
    --cert ../sodeko-platform-services/pipeline/sealed-secrets-crts/dta-sealed-secrets.crt \
    -o yaml <~/opt/sodeko/database-blue-tst.yaml \
    > ./blue-services/secrets/tst/database-blue-tst.yaml

kubeseal \
    --namespace blue-acc \
    --cert ../sodeko-platform-services/pipeline/sealed-secrets-crts/dta-sealed-secrets.crt \
    -o yaml <~/opt/sodeko/database-blue-acc.yaml \
    > ./blue-services/secrets/acc/database-blue-acc.yaml

kubeseal \
    --namespace blue-prd \
    --cert ../sodeko-platform-services/pipeline/sealed-secrets-crts/prd-sealed-secrets.crt \
    -o yaml <~/opt/sodeko/database-blue-prd.yaml \
    > ./blue-services/secrets/prd/database-blue-prd.yaml
