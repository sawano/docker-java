# ubuntu-oraclejdk8

Image containing slimmed version of ubuntu with Oracle JDK 9 installed.

**NOTE:** The Oracle JDK license do not allow binary redistribution. You'll have to build the image locally. See example
below.

## Building the image locally

Below is an example script for how to automatically build the image before use. Place the script in the same directory
as the Dockerfile.

````bash
#!/bin/bash -e

pushd "${BASH_SOURCE%/*}"

IMAGE=sawano/ubuntu-oraclejdk9:local

# Create image if necessary
$(docker image inspect "${IMAGE}" >/dev/null 2>&1) || IMAGE_EXISTS=$? && true
if [[ "${IMAGE_EXISTS}" -ne 0 ]]; then
    echo "No local image found. Creating  image..."
    docker build -t "${IMAGE}".
fi

# Now you can start using the image...

````
