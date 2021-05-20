#! /bin/bash

pushd $GOPATH/src/github.com/FoodLogiQ/connect

echo "Generating common.env for connect"
python generate-common-env.py common.env.sample -envName=jchirivella connect >common.env

echo "Generating common.env for foodlogiq-api"
python generate-common-env.py ../foodlogiq-api/common.env.sample -envName=jchirivella foodlogiq_api >../foodlogiq-api/common.env

popd
