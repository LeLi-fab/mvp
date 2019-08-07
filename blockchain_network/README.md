# blockchain_network

네트워크에 참여하는 orderer, peer들의 MSP 생성을 위한 작업과 orderer, peer, kafka, couchdb 등 네트워크를 구성하는 요소들에 정의를 진행하고 운영을 위한 prometheus 파일의 정의를 진행한 디렉토리

**crypto-config.yaml** - 앞서 말한 orderer와 5개의 org의 MSP 생성을 위한 작업.
각 org들을 정의하고 참여하는 node 수에 맞게 msp를 생성함

**couchdb** - couchdb를 도커형태로 띄우기 위한 작업. 네트워크에 참여하기 위한 설정과 id, password 등을 설정함

**mq** - kafka와 zookeeper에 대한 설정.
메시지에 최대 용량과, broker 갯수, 복제 갯수, kafka와 zookeeper의 연동 port, network 등을 설정한 파일.

**orderer** - 컨테이너 형태의 orderer에 대한 모든 설정. **crypto-config** 파일에서 생성한 MSP 정보와
통신 방식, 로그와 prometheus를 이용한 운영 관련 설정을 진행한 파일.

**peer** - orderer와 마찬가지로 컨테이너 형태의 peer에 대한 모든 설정. 역시 MSP 정보와 통신 방식 등 전반적인 설정에 대한 작업을 한 파일.

**peer_channel_join** - 각 피어들이 채널에 참여하기 위해 cli 툴에서 진행한 스크립트 파일

**prometheus** - fabric 네트워크 http 엔드포인트에서 메트릭을 요청하여 수집하고 수집한 메트릭을 기반, 운영적인 측면에서 모니터링 서비스를 지원하기 위한 작업 파일

