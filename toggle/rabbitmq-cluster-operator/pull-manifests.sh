#!/bin/bash

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$BASE_DIR"

OPERATOR_VERSION=$(yq .version ./Chart.yaml)

curl -L \
    -o templates/cluster-operator.yaml \
    "https://github.com/rabbitmq/cluster-operator/releases/download/$OPERATOR_VERSION/cluster-operator.yml"
