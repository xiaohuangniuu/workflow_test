# 设置shell环境变量
set -ex


version=0.8.4
wget --output-document install-dfx.sh https://sdk.dfinity.org/install.sh
DFX_VERSION=$version bash install-dfx.sh < <(yes Y)
rm install-dfx.sh
echo "11"

echo "$DEV_TEST_PRIVATE_KEY" > identity.pem


dfx identity import dev identity.pem

dfx identity use dev

dfx deploy --network ic --no-wallet hello

