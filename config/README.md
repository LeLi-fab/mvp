# 네트워크의 핵심을 정의하는 디렉토리.

configtx.yaml, core.yaml, orderer.yaml,  3개의 파일로 구성.

## configtx.yaml

채널에 대한 정책과 조직 정보 및 앵커피어를 정의하고
ordering 서비스의 타입과 블록 생성 시간 및 블록의 최대 크기 등을 정의하는 파일.

총 5개의 섹션으로 이루어져 있고,
각각 Organizations, Capabilities, Application, Orderer, Profile로 구성되어 있음.

**Organizations** - Org에 대한 설정을 정의. ID, MSP경로, 정책, 앵커피어를 설정하여 초기 블록인 Genesisblock과 채널관련 트랜잭션 파일을 만드는 데 필요한 설정을 진행.

**Capabilities** - fabric의 버전이 0.6부터 1.4까지 다양하기 때문에 다른버전의 노드들에 트랜잭션을 제한하기 위한 설정을 진행.

**Application** - Node SDK 기반 클라이언트 유형의 트랜잭션을 활용하기 위한 설정.

**Orderer** - Orderer의 일반적인 설정과 네트워크의 성능을 좌우하는 BatchTimeout, BatchSize와 같은 설정, kafka에 대한 설정.

**Profile** - 위의 섹션들을 참조하여 genesis block과, 채널 관련 트랜잭션을 생성하기 위한 설정을 진행.

## core.yaml

네트워크의 핵심을 담당하는 파일.
크게 6개의 섹션으로 나뉘어져 있고
각각 Peer, VM, Chaincode, Ledger, Operation, Metrics 섹션으로 구성.

**Peer** - 모든 peer들의 공통적인 작업을 진행하고 대표적으로 keepalive 상태확인을 위한 설정과 가십프로토콜을 효과적으로 하기 위한 LeaderElection을 설정을 진행.

**Vm** - peer를 도커 형태의 컨테이너로 띄우기 위한 설정. peer들이 네트워크에 참여하기 위한 인증서와, 개인키 등 크립토관련 디렉토리를 지정.

**Chaincode** - 체인코드 역시 fabric 네트워크 안에서 도커 컨테이너 형태로 작동하기 때문에 이를 위한 도커 설정과 로그 설정을 진행.

**Ledger** - peer들이 가지고 있는 world state DB에 대한 설정을 진행. 이 네트워크 상에서 peer들은 CouchDB로 작동하기 때문에 이와 관련한 설정을 진행함.

**Operations** - fabric 네트워크를 운영하기 위해 1.4 버전에서 제공하는 API 서비스를 사용하기 위한 설정.

**Metrics** - 실시간 모니터링 수행을 위한 설정을 진행(Prometheus, Grafana와 연동하기 위한 초기 작업).


## orderer.yaml


orderer.yaml 파일은 크게 8개의 섹션으로 구성 되어있고
각각 General, File Ledger, RAM Ledger, Kafka, Debug, Operations, Metrics, Consensus 섹션이 있음.

**General** - orderer의 일반적인 정의. GRPC서버에 대한 keepalive 설정과 ip, port 등의 설정을 진행함.

**File Ledger** - json 형식의 ledger, 또는 file형식의 ledger 구성.

**RAM Ledger** - RAM Ledger가 보유할 수 있는 블록의 수를 정의.

**Kafka** - 단일 장애점을 극복하기 위한 수단으로 kafka를 이용하였기 때문에 이와 관련한 설정을 진행.
메시지 큐 복제와, 통신 주기 등을 설정.

**Debug** - orderer의 디버깅 옵션을 제어하기 위한 설정.

**Operations** - fabric 네트워크를 운영하기 위해 1.4 버전에서 제공하는 API 서비스를 사용하기 위한 설정.
orderer에 대한 운영서버 엔드포인트를 지정.

**Metrics** - orderer에 대해 실시간 모니터링을 수행하기 위한 설정을 진행.
(Prometheus, Grafana와 연동하기 위한 초기 작업) 

**Consensus** - orderer의 합의 방식을 설정.
