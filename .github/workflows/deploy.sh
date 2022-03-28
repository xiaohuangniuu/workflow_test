# 设置shell环境变量
set -e

pushd /tmp

version=0.8.4
wget --output-document install-dfx.sh https://sdk.dfinity.org/install.sh
DFX_VERSION=$version bash install-dfx.sh < <(yes Y)
rm install-dfx.sh


echo "::add-path::/home/runner/bin"
echo $DEV_IDENTITY > identity.pem


dfx identity import dev identity.pem

dfx identity use dev

## 部署record
dfx deploy --network ic --no-wallet record --argument '(principal "'$DEV_LANUCHPAD_CANISTERID'",principal "'$DEV_SHIKU_CANISTERID'")'

## 部署point
dfx deploy --network ic --no-wallet point --argument '("point","point",5,principal "'$DEV_LANUCHPAD_CANISTERID'",principal "'$DEV_SHIKU_CANISTERID'")'

## 部署launchpad
dfx deploy --network ic --no-wallet lanuchpad --argument '(principal "'$DEV_OWNER_PRINCIPAL'",principal "'$DEV_OWNER_PRINCIPAL'",principal "'$DEV_RECORD_CANISTERID'",principal "'$DEV_POINT_CANISTERID'")'
## 部署shiku
dfx deploy --network ic --no-wallet shiku --argument '(principal "'$DEV_OWNER_PRINCIPAL'",principal "'$DEV_LANUCHPAD_CANISTERID'",principal "'$DEV_OWNER_PRINCIPAL'",principal "'$DEV_RECORD_CANISTERID'",principal "'$DEV_POINT_CANISTERID'")'

## 订阅lanuchpad
dfx canister --network ic --no-wallet call shiku init

#添加createCollection白名单（添加批量mint容器）
dfx canister --network ic --no-wallet call shiku addCreator_whitelist '(vec {principal "y4lix-jhuep-z75ri-5ujrs-jb4w2-wjypw-quotd-romgu-t6f6e-qqy4e-kae"})'

popd