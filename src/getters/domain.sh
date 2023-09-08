#!/usr/bin/sh

# inputs

. .env

type="domain"

domain="${1}"

# runner

resp=$( curl -sL "https://rdap.org/${type}/${domain}" | jq )

# outputs

bash create.sh "domains" "${domain}" "domain" "${domain}"

bash create.sh "domains" "${domain}" "resp" "${resp}"
