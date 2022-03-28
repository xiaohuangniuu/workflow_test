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

dfx deploy --network ic --no-wallet hello


popd