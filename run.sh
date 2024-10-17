docker stop freeradius-azuread
docker rm freeradius-azuread
docker run -d \
--name freeradius-azuread \
--restart=unless-stopped \
-p 1812:1812/udp \
-p 1813:1813/udp \
-e AzureAdDomain='example.com' \
-e AzureAdClientId='c2564263-0078-4b79-9bd0-d28ed69de47c' \
-e AzureAdSecret='ix7SGBL+BHUVXp9vXv5PSQhtburgQBfjgCWo' \
-e NASName='YourNASHere' \
-e NASNetwork=0.0.0.0/0 \
-e NASSecret='kkUIdvYH4B5/49r7FGk5ebcqB' \
catilre/freeradius-azuread:latest_arm-v7
