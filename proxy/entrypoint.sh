#!/bin/bash

if [ -z "${SERVER}" ]; then
  echo "set variable SERVER:"
  echo "--env \"SERVER=server.example.com\""
  exit 1
fi

if [ -z "${EMAIL}" ]; then
  EMAIL="email@email.com"
fi

if [ -z "${ORGANIZATION}" ]; then
  ORGANIZATION="org"
fi

if [ -z "${COUNTRY_CODE}" ]; then
  COUNTRY_CODE="FR"
fi

if [ -z "${STATE}" ]; then
  STATE="France"
fi

if [ -z "${LOCALITY}" ]; then
  LOCALITY="Lyon"
fi

if [ ! -f "/certificates/${SERVER}.key" ] || [ ! -f "/certificates/${SERVER}.crt" ]; then
    openssl req \
      -new \
      -nodes \
      -x509 \
      -subj "/C=${COUNTRY_CODE}/ST=${STATE}/L=${LOCALITY}/O=${ORGANIZATION}/CN=*.${SERVER}/emailAddress=${EMAIL}/subjectAltName=DNS.1=${SERVER}" \
      -days 3650 \
      -keyout /certificates/${SERVER}.key \
      -out /certificates/${SERVER}.crt \
      -extensions v3_ca \
fi