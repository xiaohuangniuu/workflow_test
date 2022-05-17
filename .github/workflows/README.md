# SHIKU

## Running the project

If you want to test your project locally, you can use the following commands:

```bash

develop:

 dfx deploy --network ic --no-wallet record --argument '(principal "o2qzt-caaaa-aaaah-abhsa-cai",principal "ajy76-hiaaa-aaaah-aa3mq-cai")'

 dfx deploy --network ic --no-wallet point --argument '("point","point",5,principal "o2qzt-caaaa-aaaah-abhsa-cai",principal "ajy76-hiaaa-aaaah-aa3mq-cai")'

dfx deploy --network ic --no-wallet lanuchpad --argument '(principal "6up5h-hpgw5-zbefc-ndpvp-ukenk-zdndx-ayoi6-k3dwu-p6wah-fl25u-2ae",principal "6up5h-hpgw5-zbefc-ndpvp-ukenk-zdndx-ayoi6-k3dwu-p6wah-fl25u-2ae",principal "zf7n3-2aaaa-aaaah-aanea-cai",principal "l2pzh-6iaaa-aaaah-abhpq-cai")'

dfx deploy --network ic --no-wallet shiku --argument '(principal "6up5h-hpgw5-zbefc-ndpvp-ukenk-zdndx-ayoi6-k3dwu-p6wah-fl25u-2ae",principal "o2qzt-caaaa-aaaah-abhsa-cai",principal "6up5h-hpgw5-zbefc-ndpvp-ukenk-zdndx-ayoi6-k3dwu-p6wah-fl25u-2ae",principal "zf7n3-2aaaa-aaaah-aanea-cai",principal "l2pzh-6iaaa-aaaah-abhpq-cai")'

#添加createCollection白名单（添加批量mint容器）
dfx canister --network ic --no-wallet call shiku addCreator_whitelist '(vec {principal "y4lix-jhuep-z75ri-5ujrs-jb4w2-wjypw-quotd-romgu-t6f6e-qqy4e-kae"})'


prod:

 dfx deploy --network ic --no-wallet record --argument '(principal "pczmq-maaaa-aaaah-abhwa-cai",principal "udtw4-baaaa-aaaah-abc3q-cai")'

 dfx deploy --network ic --no-wallet point --argument '("point","point",5,principal "pczmq-maaaa-aaaah-abhwa-cai",principal "udtw4-baaaa-aaaah-abc3q-cai")'

dfx deploy --network ic --no-wallet lanuchpad --argument '(principal "6vatw-256w7-b4cy5-562mf-vtv5l-shaj6-x6yr4-mdpsc-ccjw4-yuini-mae",principal "2fjjv-xlkqz-oj5tb-iptvb-t4kpp-msntn-z4yyr-5n7ua-jxsgo-zlnln-lae",principal "uesqi-myaaa-aaaah-abc3a-cai",principal "qqamp-7iaaa-aaaah-qakha-cai")'

dfx deploy --network ic --no-wallet shiku --argument '(principal "6vatw-256w7-b4cy5-562mf-vtv5l-shaj6-x6yr4-mdpsc-ccjw4-yuini-mae",principal "pczmq-maaaa-aaaah-abhwa-cai",principal "2fjjv-xlkqz-oj5tb-iptvb-t4kpp-msntn-z4yyr-5n7ua-jxsgo-zlnln-lae",principal "uesqi-myaaa-aaaah-abc3a-cai",principal "qqamp-7iaaa-aaaah-qakha-cai")'

#添加createCollection白名单（添加批量mint容器）
dfx canister --network ic --no-wallet call shiku addCreator_whitelist '(vec {principal "y4lix-jhuep-z75ri-5ujrs-jb4w2-wjypw-quotd-romgu-t6f6e-qqy4e-kae"})'
  