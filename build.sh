#!/bin/bash

BUILD_PATH=build
MMS_PATH=$(pwd)/metamod-source
HL2SDK_PATH=$(pwd)/hl2sdk
HL2SDKCS2_PATH=$(pwd)/hl2sdk/hl2sdk-cs2

if [ ! -e ${BUILD_PATH} ]; then
  mkdir ${BUILD_PATH}
  apt install python3
fi

if [ ! -e ${MMS_PATH} ]; then
  git clone https://github.com/alliedmodders/metamod-source.git ${MMS_PATH}
fi

if [ ! -e ${HL2SDKCS2_PATH} ]; then
  git clone https://github.com/alliedmodders/hl2sdk.git -b cs2 ${HL2SDKCS2_PATH}
fi

if [ ! -e "/usr/local/bin/ambuild" ]; then
  git clone https://github.com/alliedmodders/ambuild
  pip install ./ambuild
fi

cd ${BUILD_PATH}

python3 ../configure.py \
  --enable-optimize \
  --plugin-name=Skin \
  --plugin-alias=Skin \
  --sdks=cs2 \
  --mms_path=${MMS_PATH} \
  --hl2sdk-root=${HL2SDK_PATH}

ambuild
