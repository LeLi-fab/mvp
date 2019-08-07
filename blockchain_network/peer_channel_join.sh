export CORE_PEER_ADDRESS=peer1.orderorg:7051
export CORE_PEER_LOCALMSPID=OrderOrgMSP
export CORE_PEER_MSGCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/orderorg/users/Admin@orderorg/msp
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/orderorg/peers/peer1.orderorg/tls/ca.crt
peer channel join -b mychannel.block

export CORE_PEER_ADDRESS=peer2.contractororg:7051
export CORE_PEER_LOCALMSPID=ContractorOrgMSP
export CORE_PEER_MSGCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/contractororg/users/Admin@contractororg/msp
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/contractororg/peers/peer2.contractororg/tls/ca.crt
peer channel join -b mychannel.block

export CORE_PEER_ADDRESS=peer3.contractororg:7051
export CORE_PEER_LOCALMSPID=ContractorOrgMSP
export CORE_PEER_MSGCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/contractororg/users/Admin@contractororg/msp
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/contractororg/peers/peer3.contractororg/tls/ca.crt
peer channel join -b mychannel.block

export CORE_PEER_ADDRESS=peer4.subcontractororg:7051
export CORE_PEER_LOCALMSPID=SubContractorOrgMSP
export CORE_PEER_MSGCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/subcontractororg/users/Admin@subcontractororg/msp
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/subcontractororg/peers/peer4.subcontractororg/tls/ca.crt
peer channel join -b mychannel.block

export CORE_PEER_ADDRESS=peer5.subcontractororg:7051
export CORE_PEER_LOCALMSPID=SubContractorOrgMSP
export CORE_PEER_MSGCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/subcontractororg/users/Admin@subcontractororg/msp
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/subcontractororg/peers/peer5.subcontractororg/tls/ca.crt
peer channel join -b mychannel.block

export CORE_PEER_ADDRESS=peer6.dataproviderorg:7051
export CORE_PEER_LOCALMSPID=DataProviderOrg
export CORE_PEER_MSGCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/dataproviderorg/users/Admin@dataproviderorg/msp
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/dataproviderorg/peers/peer6.dataproviderorg/tls/ca.crt
peer channel join -b mychannel.block

export CORE_PEER_ADDRESS=peer7.governanceorg:7051
export CORE_PEER_LOCALMSPID=GovernanceOrg
export CORE_PEER_MSGCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/governanceorg/users/Admin@governanceorg/msp
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/governanceorg/peers/peer7.governanceorg/tls/ca.crt
peer channel join -b mychannel.block

export CORE_PEER_ADDRESS=peer8.governanceorg:7051
export CORE_PEER_LOCALMSPID=GovernanceOrg
export CORE_PEER_MSGCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/governanceorg/users/Admin@governanceorg/msp
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/governanceorg/peers/peer2.governanceorg/tls/ca.crt
peer channel join -b mychannel.block

export CORE_PEER_ADDRESS=peer9.governanceorg:7051
export CORE_PEER_LOCALMSPID=GovernanceOrg
export CORE_PEER_MSGCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/governanceorg/users/Admin@governanceorg/msp
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/governanceorg/peers/peer2.governanceorg/tls/ca.crt
peer channel join -b mychannel.block
