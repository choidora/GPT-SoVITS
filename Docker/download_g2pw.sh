#!/usr/bin/env bash
echo "Download G2PWModel"

G2PW_URL="https://huggingface.co/XXXXRT/GPT-SoVITS-Pretrained/resolve/main/G2PWModel.zip"
wget --tries=25 --wait=5 --read-timeout=40 --retry-on-http-error=404 "$G2PW_URL"

unzip G2PWModel.zip
rm -rf G2PWModel.zip
mv G2PWModel /workspace/GPT_SoVITS/text/G2PWModel