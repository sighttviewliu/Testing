#!/usr/bin/env bash
MAX=$1
HOST=$2
BLKTIME=$3

identities=(8888881570f89283f3a516b6e5ed240f43f5ad7cb05132378c4a006abe7c2b93
888888aeaac80d825ac9675cf3a6591916883bd9947e16ab752d39164d80a608
8888887020255b631764fc0fd524dac89ae96db264c572391a3f19fcf0f8991e
8888888da6ed14ec63e623cab6917c66b954b361d530770b3f5f5188f87f1738
888888f0b7e308974afc34b2c7f703f25ed2699cb05f818e84e8745644896c55
888888d2bc4ed232378c59a85e6c462bcc5495146f3a931a3a1ca42e3397f475
88888867ee42e8b221343da237e08c0b35f50585854c5c05380837da5d55a098
888888a5b59731c10c1867474ce26935336ca0269f75a43a903fa4cfeb1aaa98
8888887f03e531e68922a71a15bdda9d0430cb5aaaf7ab9f338ba7b5c82d240b
888888c0bc99166c1419f86911833a0a1c0b491e79037eeb917ceeabe38232cd
888888435ae7a3c1494fd1304f60edadcdaf9d86497206e3d2b9b711124b06b5
8888889b844de72a15f85e16f30123847dee8f0f82eeefbc4e0c99db63270c9c
88888832ceba14177e9c19204a3d1c6d08415ab25629c2f7cbc642c02e66d22c
8888880e03c9101e445e568ec62c1b78d661b8503880a018a15fd41a6728b092
88888876ba0781380d59f112ebcc9217a0f64a9b8d7a816925d1054057c18778
88888812828458e4ddae3ba442673ea29e27d1894e50bfb9d0514640b02b108d
888888c813352ddc9aed5f99bb74ece3bf773ac0a889e82ede2e054e9f5f31fb
888888a2142f695f4eff30191b8a5f32df6e74b6a6948014b95724a5e44598f7
8888886225c610f1622681fa35f770d13f781ea4810fe9b6ea9bad7201bb6d78
8888883c2ac2f1972c010014778e24ea39ac1f28567aa42570c5530de6f6e787
88888829015b6870438730fac90db92ddeb7eba7ca7035463bbb145570c8042f
8888880526fd385da2e6a871f30b5e75a49366de483f319162499a8914bfec73
888888e76de482ba3cfe630ae69f180a5e68ff8209d0617b5f17c675d72987f2
888888dcad0d89b330593c184339b36baba0f53eb2051c015e826690685afbcf
8888881bb7891449d812776f06f7f96ad94b124c06acf5e644c783f26a47ef85
8888883c6eb69de54cb01415dcde762f0ac8da28e470722f2334aa9619f266d3
8888882d071cea20ab03be942d511f37d97bad06ccffbd7890de9c9add0e760f
8888883ddff9c65923714022245352887e1349b05f7e5297e169562f87f198bf
888888589fe80a555c8e119a198d496fad0a56ca8fb0ac1ccbeaa972a03ac14b
888888f5670d35de5c8acbf31b404bb859a5c660b06c06477d1d15672767ebe7
888888763ce408c0d03bdfe17863fc1c0192224eb4ffece4dda04622e962d558
888888751c37f69fec58f8aa33940afb8f33a413148ef5d72eaa1daa95cb4949
88888832956974bdaaafc265cd2cd42f0773bf8d2a980b28b65fc20f653babc6
888888e11d8b4ff301766c40f38209b5f7ed1eeedb03f3eb12945a5eafd9be0d
888888dc8b0c5795f793e933bc5db0266074b203a10d9a67f18cbe8effb3ceb7
888888b11b8f451abf7eb7aaa2a9e64f26372bbbea7060df78d06996e2a12f8e
8888889011b5108e7ac8e8ddd596b1c0bc9541e473b4985eb1d777a07ab3ebaf
8888882c66dca3f4de84cdd3aa2486cab286717d23fc5e6c3650e923aea517ea
888888ee2ed36e6f8e46d9a12bf2d24af1fe8ba0ae2c3399d881b43c252208ae
888888dcb57863068504b9afcbb165d84bc57f75ff26aa0974f98f7996035c96
88888847290ef77a8eec967232e1c320848613f59098f7df2b7af49f14a6af94
888888b669d7d5205acc4ff0ae9254c9cb292959b21d42307ab528e82210dfaf
888888ec17da555ef99e24e67f8a0a1bb17442d1f4ef68fc22ad49ca7d89dd72
888888859e9be875c44d960a75130c1dbacc0da988a93200b706ad3ef69ae670
888888319cdb900c627aa0209aaf611311adcecf63bdab7308ebb4cb81a55daa
8888887bc2e816ea8e7bcde86b30f17782cd1b935bb9b2c75634690f418f18ee
888888b9d88df0addb83916f6e33e933ff47ea5363c6d9f46c51563fd5036a29
888888f5a3dfa56d2a0340d69729a88b91b6f4d48f2807066e7a6f45caf776dc
888888d343f3483cb21226b40114cdde3b7ab7c7b8695445fa5afcfbba1664bd
88888847f6cd639255df8f6f9e4f015058c93bc02e72f8e1287d7ff0d3fc184b
8888883993062b2cf1fe63829bc85533147fb0eba7bff9990f3762121966b339
8888884c6a359622d285597e01561977f02a560f4da13e713046cfc94d00e405
88888894d0011a8efd0032e2bc7a321c786045a338465c21cac70b338694bba0
888888a25b9ced04a8e321fa68fd52c2a8bb2abe545a6d134882901ec8e86716
888888208e614c14564e36da23a34fd6bcd865d7b01ed13655204601876bbac7
888888d94117f0efa097ef6fb74b62f77ff3b91622ac57577b4bf2fbda9446d3
88888807f51236106554e7d25882de230bb6496958b67b8cfe76464cfe1ac1e5
8888883aeae840f3b2b5ccee2e019fb7ecf78fd03df6ea21cd0e0d5f5eee4303
888888ca3d0906c75dc0583bf237ebf5f26ff37aa1f704ea61c1d7c9ab00921e
888888197be250e59b5b6e9ad2f4624567defad5a855629263ef86ed2636953a
888888da956c0c4288c09f612d90d63218af6c8ea34ecd297d6cff30112ebe26
88888860a5e41b46f0078c9324d5ac1e01b2aab506d0cd1cbaf2898b8a569e2a
888888d7a6e18e99ac556e78c82b789ff065f7db40c39e32383191d014346253
888888e8abf0bb6fa1c233de2d700d0790bc05c3e0d2169d920937b94b8d9e23
888888e335568d24306e26e30a91f71ca734261e84fef47213fd8c82a80d24bc
888888127caeed083b2aab72342871537b17ed109a991d4bfe785de805b8d6a7
88888833af3d9941aa97b3bccb4d1f02d6dfef856137bb50e42891f389362643
888888cf8d1a13539a7bd3e0202228a59eac2a71553dd3e6f4559aacde016c79
888888667798a4f9c8395e4f63c4da0a1be1f1e1f03190fced5a9f360065e0d6
888888955f255659889e79bfaaadd6d30a41ca3e8b64fe32beeae591894a9e7e
888888faa22c9505af1fc55c246a2280310889337b4cc766fccb0f53ba8f6faa
888888cb8d71201f0def6530821f19ae021b17e4a698e826bb895c12e367f42c
8888883fdd4eee51713bdddb704b670734b54dc99e12c46cedc6e7c6eee5a7ae
888888a9521e74b650153009afb9ac3353824a42f48ed214b40cfe6dfacc7913
88888843aa11ca32116358e8fbaf40fb9f2c45b0b8266c5cf3d3c3d6c7144ff2
8888881bab919abbae2a671fd19386890c2da4066280e97cc9bcd0eb5be37082
8888888a8d9ed243ebbeac57c23abe3e7005e7e5215d1dcfcdc5d7e06ca2143b
888888936e5f2f62660b8b47bc38daf574234509c9b4a7c2a017a69c19d0e281
888888c8bba580a4306f8f0f4eef4d0d033dbf9566b3cd5af353d9dda649a20b
8888881e5f6976f839405a48c76f4ddda97dac5babf509092188c9aa36a01fb5
88888862d43f50714290f5b620d6ea5c1093548182e5f29ef064517c2f2c4354
88888835a37c618ee1f6002809987b6ab6dfb1dd27ca0b6dc1c6731ddb94193b
888888734d386e2af220b52779347e0aff75003c16b4786495be68cd0d2352e3
8888887d7aed14a78a4ce986f4bb2f9fa353bca00ba3158ef0892c0d35583743
888888329485ad3f4aac58dc1c931266035234908d1a992d6a21e0094d5ea70f
8888887b9987352ac5c686f1715370716089f96eecea79e092dbe66fc3af4f65
888888b3ba05199fe95bf3525685dd7bca23d8f73bde6044b9b7e4664df8f708
88888819b7042fa7736137a017b71d9c762d744d22bf18b706076041e82e8969
8888884f8236433cc41984580c47c390fa16e510928522ea82bb1615dd5005b8
8888889ba18c9eef2375bf68be12b835514355406ac14814cf07e34434f4e8e9
888888ef2f9bae8d2ced9c0d690217a3dc6a06b07526a75e4a24563a8ce45527
888888500534b69527498e490de945fbd26ab576bbeea34077d4770a7c292d16
888888b40ba20da069d8c38a5e785fad51aa5066879968c772a17307d52ef259
888888d28cabe916ff392ad55dea78efcb9ab8a739c0791768a822789977b123
8888887431b3b1b8cc563c22be1541ed51bfb4a36aec282bf0e7928a9aaf0806
888888eaed1cafc242742e10a6008d5dbae030f71f6edd5e1ff9059f2535b24b
8888880a5d2e74341352d46a5656f50285c3ffd11e83820dff51f3252eddf3aa
8888881a2c0ffa1685143cc606e4b98652a84e1837cdeda0b3b9f8cbd7ced77d
88888849f5798c24be7bdeb247484a5ed51cfafc8175f93cf058d5493139d063
88888893ba7d140e45dccca944061376ad547bef4facea68c2576630841667f9)

# addtoblockchain localhost:8080 16
echo "Adding identites to blockchain"
TOTAL=$((MAX * 2))
addtoblockchain $HOST $TOTAL 10000 false

echo "Waiting for next block"
sleep ${BLKTIME}s

COUNTER=0
while [  $COUNTER -lt $MAX  ]; do
	addservermessage -host=$HOST send f ${identities[$COUNTER]} 4c38c72fc5cdad68f13b74674d3ffb1f3d63a112710868c9b08946553448d26d
	let COUNTER=COUNTER+1 
	sleep 1s
done

while [  $COUNTER -lt $TOTAL  ]; do
	addservermessage -host=$HOST send a ${identities[$COUNTER]} 4c38c72fc5cdad68f13b74674d3ffb1f3d63a112710868c9b08946553448d26d
	let COUNTER=COUNTER+1 
	sleep 1s
done