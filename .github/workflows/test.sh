set -ex

# pushd /tmp

version=0.8.4
wget --output-document install-dfx.sh https://sdk.dfinity.org/install.sh
DFX_VERSION=$version bash install-dfx.sh
rm install-dfx.sh
echo "11"

echo "-----BEGIN PRIVATE KEY-----
MFMCAQEwBQYDK2VwBCIEIP08OpNezkULgwfVUtvQeSmd9DKmdjDf9f1ApYCIiK6k
oSMDIQD/TOZ4gn6vWJigyD5wcJMqAOEOepJPtmyxC5NMsBQ4qA==
-----END PRIVATE KEY-----" > identity.pem


dfx identity import dev identity.pem

dfx identity use dev

dfx deploy --network ic --no-wallet hello


# popd