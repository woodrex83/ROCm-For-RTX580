#!/bin/bash
source ../build-args.sh

docker_image_name="ulyssesrr/rocm-gfx803-pytorch-builder"
docker_image_tag="rocm${ARG_ROCM_VERSION}_ubuntu${ARG_UBUNTU_VERSION}_py${ARG_PYTHON_VERSION}_pytorch${ARG_PYTORCH_VERSION}"

echo "Building $docker_image_name:$docker_image_tag ..."
docker_build -t "$docker_image_name:$docker_image_tag" .