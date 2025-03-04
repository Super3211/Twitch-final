#!/bin/bash

CLIENT_ID="kjbp69lnk9tuxmtojpik1lcic90vjm"
CLIENT_SECRET="fqee93ds4f30jjemzyts2pmvokmo5u"

# Request OAuth token
RESPONSE=$(curl -s -X POST "https://id.twitch.tv/oauth2/token" \
    -d "client_id=$CLIENT_ID" \
    -d "client_secret=$CLIENT_SECRET" \
    -d "grant_type=client_credentials")

# Extract token
ACCESS_TOKEN=$(echo $RESPONSE | jq -r '.access_token')

# Display token
echo "Your Access Token: $ACCESS_TOKEN"
