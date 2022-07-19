ARG CLOUD_SDK_VERSION=alpine
FROM google/cloud-sdk:$CLOUD_SDK_VERSION
RUN gcloud components install kubectl && \
    apk --no-cache add coreutils && \
    rm -rf $(find google-cloud-sdk/ -regex ".*/__pycache__") \ && \
    rm -rf google-cloud-sdk/.install/.backup && \
    rm -rf /google-cloud-sdk/bin/anthoscli
