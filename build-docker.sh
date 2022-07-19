#/bin/bash

CLOUDSDK_VERSION=393.0.0-alpine
docker build . -t endoedgar/cloud-sdk-kubectl:${CLOUDSDK_VERSION} -t endoedgar/cloud-sdk-kubectl:alpine --build-arg CLOUD_SDK_VERSION=${CLOUDSDK_VERSION}
docker push endoedgar/cloud-sdk-kubectl:${CLOUDSDK_VERSION} && docker push endoedgar/cloud-sdk-kubectl:alpine
