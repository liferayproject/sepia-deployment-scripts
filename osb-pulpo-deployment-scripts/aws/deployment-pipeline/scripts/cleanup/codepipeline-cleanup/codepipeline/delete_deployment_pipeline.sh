#!/usr/bin/env bash

set -euo pipefail

while getopts ":n:" opt; do
  case ${opt} in
    n) NAME="${OPTARG}"
    ;;
    \?) echo "Invalid option -${OPTARG}" >&2
    exit 1
    ;;
  esac
done

set -x

aws codepipeline delete-pipeline --name ${NAME}-deployment-pipeline