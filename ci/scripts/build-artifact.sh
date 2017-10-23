#!/usr/bin/env bash
set -e

export GRADLE_OPTS=-Dorg.gradle.native=false
# version=`cat version/number`
version=1.0.1
cd git-repo
gradle jar -Pversion=$version
cp build/libs/*.jar ../artifact-dir/
ls ../artifact-dir
