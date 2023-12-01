#!/bin/bash
kubectl exec -it testcurl -- sh

curl --location --request POST 'http://keycloak.iam/realms/bets/protocol/openid-connect/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id=kong' \
--data-urlencode 'grant_type=password' \
--data-urlencode 'username=carlosh' \
--data-urlencode 'password=carlosh' \
--data-urlencode 'client_secret=uoaymTI69vxDCIf6IxczqdwrSlUF6EAp' \
--data-urlencode 'scope=openid'
