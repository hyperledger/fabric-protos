# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [msp/msp_principal.proto](#msp_msp_principal-proto)
    - [CombinedPrincipal](#common-CombinedPrincipal)
    - [MSPIdentityAnonymity](#common-MSPIdentityAnonymity)
    - [MSPPrincipal](#common-MSPPrincipal)
    - [MSPRole](#common-MSPRole)
    - [OrganizationUnit](#common-OrganizationUnit)
  
    - [MSPIdentityAnonymity.MSPIdentityAnonymityType](#common-MSPIdentityAnonymity-MSPIdentityAnonymityType)
    - [MSPPrincipal.Classification](#common-MSPPrincipal-Classification)
    - [MSPRole.MSPRoleType](#common-MSPRole-MSPRoleType)
  
- [common/policies.proto](#common_policies-proto)
    - [ApplicationPolicy](#common-ApplicationPolicy)
    - [ImplicitMetaPolicy](#common-ImplicitMetaPolicy)
    - [Policy](#common-Policy)
    - [SignaturePolicy](#common-SignaturePolicy)
    - [SignaturePolicy.NOutOf](#common-SignaturePolicy-NOutOf)
    - [SignaturePolicyEnvelope](#common-SignaturePolicyEnvelope)
  
    - [ImplicitMetaPolicy.Rule](#common-ImplicitMetaPolicy-Rule)
    - [Policy.PolicyType](#common-Policy-PolicyType)
  
- [common/collection.proto](#common_collection-proto)
    - [CollectionConfig](#common-CollectionConfig)
    - [CollectionConfigPackage](#common-CollectionConfigPackage)
    - [CollectionPolicyConfig](#common-CollectionPolicyConfig)
    - [StaticCollectionConfig](#common-StaticCollectionConfig)
  
- [common/common.proto](#common_common-proto)
    - [Block](#common-Block)
    - [BlockData](#common-BlockData)
    - [BlockHeader](#common-BlockHeader)
    - [BlockMetadata](#common-BlockMetadata)
    - [ChannelHeader](#common-ChannelHeader)
    - [Envelope](#common-Envelope)
    - [Header](#common-Header)
    - [IdentifierHeader](#common-IdentifierHeader)
    - [LastConfig](#common-LastConfig)
    - [Metadata](#common-Metadata)
    - [MetadataSignature](#common-MetadataSignature)
    - [OrdererBlockMetadata](#common-OrdererBlockMetadata)
    - [Payload](#common-Payload)
    - [SignatureHeader](#common-SignatureHeader)
  
    - [BlockMetadataIndex](#common-BlockMetadataIndex)
    - [HeaderType](#common-HeaderType)
    - [Status](#common-Status)
  
- [common/configtx.proto](#common_configtx-proto)
    - [Config](#common-Config)
    - [ConfigEnvelope](#common-ConfigEnvelope)
    - [ConfigGroup](#common-ConfigGroup)
    - [ConfigGroup.GroupsEntry](#common-ConfigGroup-GroupsEntry)
    - [ConfigGroup.PoliciesEntry](#common-ConfigGroup-PoliciesEntry)
    - [ConfigGroup.ValuesEntry](#common-ConfigGroup-ValuesEntry)
    - [ConfigPolicy](#common-ConfigPolicy)
    - [ConfigSignature](#common-ConfigSignature)
    - [ConfigUpdate](#common-ConfigUpdate)
    - [ConfigUpdate.IsolatedDataEntry](#common-ConfigUpdate-IsolatedDataEntry)
    - [ConfigUpdateEnvelope](#common-ConfigUpdateEnvelope)
    - [ConfigValue](#common-ConfigValue)
  
- [common/configuration.proto](#common_configuration-proto)
    - [BlockDataHashingStructure](#common-BlockDataHashingStructure)
    - [Capabilities](#common-Capabilities)
    - [Capabilities.CapabilitiesEntry](#common-Capabilities-CapabilitiesEntry)
    - [Capability](#common-Capability)
    - [Consenter](#common-Consenter)
    - [Consortium](#common-Consortium)
    - [HashingAlgorithm](#common-HashingAlgorithm)
    - [OrdererAddresses](#common-OrdererAddresses)
    - [Orderers](#common-Orderers)
  
- [common/ledger.proto](#common_ledger-proto)
    - [BlockchainInfo](#common-BlockchainInfo)
    - [BootstrappingSnapshotInfo](#common-BootstrappingSnapshotInfo)
  
- [peer/policy.proto](#peer_policy-proto)
    - [ApplicationPolicy](#protos-ApplicationPolicy)
  
- [peer/collection.proto](#peer_collection-proto)
    - [CollectionConfig](#protos-CollectionConfig)
    - [CollectionConfigPackage](#protos-CollectionConfigPackage)
    - [CollectionPolicyConfig](#protos-CollectionPolicyConfig)
    - [StaticCollectionConfig](#protos-StaticCollectionConfig)
  
- [gossip/message.proto](#gossip_message-proto)
    - [Acknowledgement](#gossip-Acknowledgement)
    - [AliveMessage](#gossip-AliveMessage)
    - [Chaincode](#gossip-Chaincode)
    - [ConnEstablish](#gossip-ConnEstablish)
    - [DataDigest](#gossip-DataDigest)
    - [DataMessage](#gossip-DataMessage)
    - [DataRequest](#gossip-DataRequest)
    - [DataUpdate](#gossip-DataUpdate)
    - [Empty](#gossip-Empty)
    - [Envelope](#gossip-Envelope)
    - [GossipHello](#gossip-GossipHello)
    - [GossipMessage](#gossip-GossipMessage)
    - [LeadershipMessage](#gossip-LeadershipMessage)
    - [Member](#gossip-Member)
    - [MembershipRequest](#gossip-MembershipRequest)
    - [MembershipResponse](#gossip-MembershipResponse)
    - [Payload](#gossip-Payload)
    - [PeerIdentity](#gossip-PeerIdentity)
    - [PeerTime](#gossip-PeerTime)
    - [PrivateDataMessage](#gossip-PrivateDataMessage)
    - [PrivatePayload](#gossip-PrivatePayload)
    - [Properties](#gossip-Properties)
    - [PvtDataDigest](#gossip-PvtDataDigest)
    - [PvtDataElement](#gossip-PvtDataElement)
    - [PvtDataPayload](#gossip-PvtDataPayload)
    - [RemotePvtDataRequest](#gossip-RemotePvtDataRequest)
    - [RemotePvtDataResponse](#gossip-RemotePvtDataResponse)
    - [RemoteStateRequest](#gossip-RemoteStateRequest)
    - [RemoteStateResponse](#gossip-RemoteStateResponse)
    - [Secret](#gossip-Secret)
    - [SecretEnvelope](#gossip-SecretEnvelope)
    - [StateInfo](#gossip-StateInfo)
    - [StateInfoPullRequest](#gossip-StateInfoPullRequest)
    - [StateInfoSnapshot](#gossip-StateInfoSnapshot)
  
    - [GossipMessage.Tag](#gossip-GossipMessage-Tag)
    - [PullMsgType](#gossip-PullMsgType)
  
    - [Gossip](#gossip-Gossip)
  
- [msp/msp_config.proto](#msp_msp_config-proto)
    - [FabricCryptoConfig](#msp-FabricCryptoConfig)
    - [FabricMSPConfig](#msp-FabricMSPConfig)
    - [FabricNodeOUs](#msp-FabricNodeOUs)
    - [FabricOUIdentifier](#msp-FabricOUIdentifier)
    - [IdemixMSPConfig](#msp-IdemixMSPConfig)
    - [IdemixMSPSignerConfig](#msp-IdemixMSPSignerConfig)
    - [KeyInfo](#msp-KeyInfo)
    - [MSPConfig](#msp-MSPConfig)
    - [SigningIdentityInfo](#msp-SigningIdentityInfo)
  
- [peer/proposal_response.proto](#peer_proposal_response-proto)
    - [ChaincodeCall](#protos-ChaincodeCall)
    - [ChaincodeInterest](#protos-ChaincodeInterest)
    - [Endorsement](#protos-Endorsement)
    - [ProposalResponse](#protos-ProposalResponse)
    - [ProposalResponsePayload](#protos-ProposalResponsePayload)
    - [Response](#protos-Response)
  
- [discovery/protocol.proto](#discovery_protocol-proto)
    - [AuthInfo](#discovery-AuthInfo)
    - [ChaincodeQuery](#discovery-ChaincodeQuery)
    - [ChaincodeQueryResult](#discovery-ChaincodeQueryResult)
    - [ConfigQuery](#discovery-ConfigQuery)
    - [ConfigResult](#discovery-ConfigResult)
    - [ConfigResult.MspsEntry](#discovery-ConfigResult-MspsEntry)
    - [ConfigResult.OrderersEntry](#discovery-ConfigResult-OrderersEntry)
    - [EndorsementDescriptor](#discovery-EndorsementDescriptor)
    - [EndorsementDescriptor.EndorsersByGroupsEntry](#discovery-EndorsementDescriptor-EndorsersByGroupsEntry)
    - [Endpoint](#discovery-Endpoint)
    - [Endpoints](#discovery-Endpoints)
    - [Error](#discovery-Error)
    - [Layout](#discovery-Layout)
    - [Layout.QuantitiesByGroupEntry](#discovery-Layout-QuantitiesByGroupEntry)
    - [LocalPeerQuery](#discovery-LocalPeerQuery)
    - [Peer](#discovery-Peer)
    - [PeerMembershipQuery](#discovery-PeerMembershipQuery)
    - [PeerMembershipResult](#discovery-PeerMembershipResult)
    - [PeerMembershipResult.PeersByOrgEntry](#discovery-PeerMembershipResult-PeersByOrgEntry)
    - [Peers](#discovery-Peers)
    - [Query](#discovery-Query)
    - [QueryResult](#discovery-QueryResult)
    - [Request](#discovery-Request)
    - [Response](#discovery-Response)
    - [SignedRequest](#discovery-SignedRequest)
  
    - [Discovery](#discovery-Discovery)
  
- [peer/chaincode_event.proto](#peer_chaincode_event-proto)
    - [ChaincodeEvent](#protos-ChaincodeEvent)
  
- [peer/chaincode.proto](#peer_chaincode-proto)
    - [CDSData](#protos-CDSData)
    - [ChaincodeData](#protos-ChaincodeData)
    - [ChaincodeDeploymentSpec](#protos-ChaincodeDeploymentSpec)
    - [ChaincodeID](#protos-ChaincodeID)
    - [ChaincodeInput](#protos-ChaincodeInput)
    - [ChaincodeInput.DecorationsEntry](#protos-ChaincodeInput-DecorationsEntry)
    - [ChaincodeInvocationSpec](#protos-ChaincodeInvocationSpec)
    - [ChaincodeSpec](#protos-ChaincodeSpec)
    - [LifecycleEvent](#protos-LifecycleEvent)
  
    - [ChaincodeSpec.Type](#protos-ChaincodeSpec-Type)
  
- [peer/proposal.proto](#peer_proposal-proto)
    - [ChaincodeAction](#protos-ChaincodeAction)
    - [ChaincodeHeaderExtension](#protos-ChaincodeHeaderExtension)
    - [ChaincodeProposalPayload](#protos-ChaincodeProposalPayload)
    - [ChaincodeProposalPayload.TransientMapEntry](#protos-ChaincodeProposalPayload-TransientMapEntry)
    - [Proposal](#protos-Proposal)
    - [SignedProposal](#protos-SignedProposal)
  
- [peer/transaction.proto](#peer_transaction-proto)
    - [ChaincodeActionPayload](#protos-ChaincodeActionPayload)
    - [ChaincodeEndorsedAction](#protos-ChaincodeEndorsedAction)
    - [ProcessedTransaction](#protos-ProcessedTransaction)
    - [Transaction](#protos-Transaction)
    - [TransactionAction](#protos-TransactionAction)
  
    - [MetaDataKeys](#protos-MetaDataKeys)
    - [TxValidationCode](#protos-TxValidationCode)
  
- [orderer/ab.proto](#orderer_ab-proto)
    - [BroadcastResponse](#orderer-BroadcastResponse)
    - [DeliverResponse](#orderer-DeliverResponse)
    - [SeekInfo](#orderer-SeekInfo)
    - [SeekNewest](#orderer-SeekNewest)
    - [SeekNextCommit](#orderer-SeekNextCommit)
    - [SeekOldest](#orderer-SeekOldest)
    - [SeekPosition](#orderer-SeekPosition)
    - [SeekSpecified](#orderer-SeekSpecified)
  
    - [SeekInfo.SeekBehavior](#orderer-SeekInfo-SeekBehavior)
    - [SeekInfo.SeekContentType](#orderer-SeekInfo-SeekContentType)
    - [SeekInfo.SeekErrorResponse](#orderer-SeekInfo-SeekErrorResponse)
  
    - [AtomicBroadcast](#orderer-AtomicBroadcast)
  
- [gateway/gateway.proto](#gateway_gateway-proto)
    - [ChaincodeEventsRequest](#gateway-ChaincodeEventsRequest)
    - [ChaincodeEventsResponse](#gateway-ChaincodeEventsResponse)
    - [CommitStatusRequest](#gateway-CommitStatusRequest)
    - [CommitStatusResponse](#gateway-CommitStatusResponse)
    - [EndorseRequest](#gateway-EndorseRequest)
    - [EndorseResponse](#gateway-EndorseResponse)
    - [ErrorDetail](#gateway-ErrorDetail)
    - [EvaluateRequest](#gateway-EvaluateRequest)
    - [EvaluateResponse](#gateway-EvaluateResponse)
    - [PreparedTransaction](#gateway-PreparedTransaction)
    - [ProposedTransaction](#gateway-ProposedTransaction)
    - [SignedChaincodeEventsRequest](#gateway-SignedChaincodeEventsRequest)
    - [SignedCommitStatusRequest](#gateway-SignedCommitStatusRequest)
    - [SubmitRequest](#gateway-SubmitRequest)
    - [SubmitResponse](#gateway-SubmitResponse)
  
    - [Gateway](#gateway-Gateway)
  
- [google/rpc/status.proto](#google_rpc_status-proto)
    - [Status](#google-rpc-Status)
  
- [ledger/queryresult/kv_query_result.proto](#ledger_queryresult_kv_query_result-proto)
    - [KV](#queryresult-KV)
    - [KeyModification](#queryresult-KeyModification)
  
- [ledger/rwset/kvrwset/kv_rwset.proto](#ledger_rwset_kvrwset_kv_rwset-proto)
    - [HashedRWSet](#kvrwset-HashedRWSet)
    - [KVMetadataEntry](#kvrwset-KVMetadataEntry)
    - [KVMetadataWrite](#kvrwset-KVMetadataWrite)
    - [KVMetadataWriteHash](#kvrwset-KVMetadataWriteHash)
    - [KVRWSet](#kvrwset-KVRWSet)
    - [KVRead](#kvrwset-KVRead)
    - [KVReadHash](#kvrwset-KVReadHash)
    - [KVWrite](#kvrwset-KVWrite)
    - [KVWriteHash](#kvrwset-KVWriteHash)
    - [QueryReads](#kvrwset-QueryReads)
    - [QueryReadsMerkleSummary](#kvrwset-QueryReadsMerkleSummary)
    - [RangeQueryInfo](#kvrwset-RangeQueryInfo)
    - [Version](#kvrwset-Version)
  
- [ledger/rwset/rwset.proto](#ledger_rwset_rwset-proto)
    - [CollectionHashedReadWriteSet](#rwset-CollectionHashedReadWriteSet)
    - [CollectionPvtReadWriteSet](#rwset-CollectionPvtReadWriteSet)
    - [NsPvtReadWriteSet](#rwset-NsPvtReadWriteSet)
    - [NsReadWriteSet](#rwset-NsReadWriteSet)
    - [TxPvtReadWriteSet](#rwset-TxPvtReadWriteSet)
    - [TxReadWriteSet](#rwset-TxReadWriteSet)
  
    - [TxReadWriteSet.DataModel](#rwset-TxReadWriteSet-DataModel)
  
- [msp/identities.proto](#msp_identities-proto)
    - [SerializedIdemixIdentity](#msp-SerializedIdemixIdentity)
    - [SerializedIdentity](#msp-SerializedIdentity)
  
- [orderer/blockattestation.proto](#orderer_blockattestation-proto)
    - [BlockAttestation](#orderer-BlockAttestation)
    - [BlockAttestationResponse](#orderer-BlockAttestationResponse)
  
    - [BlockAttestations](#orderer-BlockAttestations)
  
- [orderer/cluster.proto](#orderer_cluster-proto)
    - [ConsensusRequest](#orderer-ConsensusRequest)
    - [StepRequest](#orderer-StepRequest)
    - [StepResponse](#orderer-StepResponse)
    - [SubmitRequest](#orderer-SubmitRequest)
    - [SubmitResponse](#orderer-SubmitResponse)
  
    - [Cluster](#orderer-Cluster)
  
- [orderer/clusterserver.proto](#orderer_clusterserver-proto)
    - [ClusterNodeServiceStepRequest](#orderer-ClusterNodeServiceStepRequest)
    - [ClusterNodeServiceStepResponse](#orderer-ClusterNodeServiceStepResponse)
    - [NodeAuthRequest](#orderer-NodeAuthRequest)
    - [NodeConsensusRequest](#orderer-NodeConsensusRequest)
    - [NodeTransactionOrderRequest](#orderer-NodeTransactionOrderRequest)
    - [TransactionOrderResponse](#orderer-TransactionOrderResponse)
  
    - [ClusterNodeService](#orderer-ClusterNodeService)
  
- [orderer/configuration.proto](#orderer_configuration-proto)
    - [BatchSize](#orderer-BatchSize)
    - [BatchTimeout](#orderer-BatchTimeout)
    - [ChannelRestrictions](#orderer-ChannelRestrictions)
    - [ConsensusType](#orderer-ConsensusType)
    - [KafkaBrokers](#orderer-KafkaBrokers)
  
    - [ConsensusType.State](#orderer-ConsensusType-State)
  
- [orderer/etcdraft/configuration.proto](#orderer_etcdraft_configuration-proto)
    - [ConfigMetadata](#etcdraft-ConfigMetadata)
    - [Consenter](#etcdraft-Consenter)
    - [Options](#etcdraft-Options)
  
- [orderer/etcdraft/metadata.proto](#orderer_etcdraft_metadata-proto)
    - [BlockMetadata](#etcdraft-BlockMetadata)
    - [ClusterMetadata](#etcdraft-ClusterMetadata)
  
- [orderer/smartbft/configuration.proto](#orderer_smartbft_configuration-proto)
    - [Options](#orderer-smartbft-Options)
  
    - [Options.Rotation](#orderer-smartbft-Options-Rotation)
  
- [peer/chaincode_shim.proto](#peer_chaincode_shim-proto)
    - [ChaincodeMessage](#protos-ChaincodeMessage)
    - [DelState](#protos-DelState)
    - [GetHistoryForKey](#protos-GetHistoryForKey)
    - [GetQueryResult](#protos-GetQueryResult)
    - [GetState](#protos-GetState)
    - [GetStateByRange](#protos-GetStateByRange)
    - [GetStateMetadata](#protos-GetStateMetadata)
    - [PurgePrivateState](#protos-PurgePrivateState)
    - [PutState](#protos-PutState)
    - [PutStateMetadata](#protos-PutStateMetadata)
    - [QueryMetadata](#protos-QueryMetadata)
    - [QueryResponse](#protos-QueryResponse)
    - [QueryResponseMetadata](#protos-QueryResponseMetadata)
    - [QueryResultBytes](#protos-QueryResultBytes)
    - [QueryStateClose](#protos-QueryStateClose)
    - [QueryStateNext](#protos-QueryStateNext)
    - [StateMetadata](#protos-StateMetadata)
    - [StateMetadataResult](#protos-StateMetadataResult)
  
    - [ChaincodeMessage.Type](#protos-ChaincodeMessage-Type)
  
    - [Chaincode](#protos-Chaincode)
    - [ChaincodeSupport](#protos-ChaincodeSupport)
  
- [peer/configuration.proto](#peer_configuration-proto)
    - [ACLs](#protos-ACLs)
    - [ACLs.AclsEntry](#protos-ACLs-AclsEntry)
    - [APIResource](#protos-APIResource)
    - [AnchorPeer](#protos-AnchorPeer)
    - [AnchorPeers](#protos-AnchorPeers)
  
- [peer/events.proto](#peer_events-proto)
    - [BlockAndPrivateData](#protos-BlockAndPrivateData)
    - [BlockAndPrivateData.PrivateDataMapEntry](#protos-BlockAndPrivateData-PrivateDataMapEntry)
    - [DeliverResponse](#protos-DeliverResponse)
    - [FilteredBlock](#protos-FilteredBlock)
    - [FilteredChaincodeAction](#protos-FilteredChaincodeAction)
    - [FilteredTransaction](#protos-FilteredTransaction)
    - [FilteredTransactionActions](#protos-FilteredTransactionActions)
  
    - [Deliver](#protos-Deliver)
  
- [peer/lifecycle/chaincode_definition.proto](#peer_lifecycle_chaincode_definition-proto)
    - [ChaincodeEndorsementInfo](#lifecycle-ChaincodeEndorsementInfo)
    - [ChaincodeValidationInfo](#lifecycle-ChaincodeValidationInfo)
  
- [peer/lifecycle/db.proto](#peer_lifecycle_db-proto)
    - [StateData](#lifecycle-StateData)
    - [StateMetadata](#lifecycle-StateMetadata)
  
- [peer/lifecycle/lifecycle.proto](#peer_lifecycle_lifecycle-proto)
    - [ApproveChaincodeDefinitionForMyOrgArgs](#lifecycle-ApproveChaincodeDefinitionForMyOrgArgs)
    - [ApproveChaincodeDefinitionForMyOrgResult](#lifecycle-ApproveChaincodeDefinitionForMyOrgResult)
    - [ChaincodeSource](#lifecycle-ChaincodeSource)
    - [ChaincodeSource.Local](#lifecycle-ChaincodeSource-Local)
    - [ChaincodeSource.Unavailable](#lifecycle-ChaincodeSource-Unavailable)
    - [CheckCommitReadinessArgs](#lifecycle-CheckCommitReadinessArgs)
    - [CheckCommitReadinessResult](#lifecycle-CheckCommitReadinessResult)
    - [CheckCommitReadinessResult.ApprovalsEntry](#lifecycle-CheckCommitReadinessResult-ApprovalsEntry)
    - [CheckCommitReadinessResult.Mismatches](#lifecycle-CheckCommitReadinessResult-Mismatches)
    - [CheckCommitReadinessResult.MismatchesEntry](#lifecycle-CheckCommitReadinessResult-MismatchesEntry)
    - [CommitChaincodeDefinitionArgs](#lifecycle-CommitChaincodeDefinitionArgs)
    - [CommitChaincodeDefinitionResult](#lifecycle-CommitChaincodeDefinitionResult)
    - [GetInstalledChaincodePackageArgs](#lifecycle-GetInstalledChaincodePackageArgs)
    - [GetInstalledChaincodePackageResult](#lifecycle-GetInstalledChaincodePackageResult)
    - [InstallChaincodeArgs](#lifecycle-InstallChaincodeArgs)
    - [InstallChaincodeResult](#lifecycle-InstallChaincodeResult)
    - [QueryApprovedChaincodeDefinitionArgs](#lifecycle-QueryApprovedChaincodeDefinitionArgs)
    - [QueryApprovedChaincodeDefinitionResult](#lifecycle-QueryApprovedChaincodeDefinitionResult)
    - [QueryApprovedChaincodeDefinitionsArgs](#lifecycle-QueryApprovedChaincodeDefinitionsArgs)
    - [QueryApprovedChaincodeDefinitionsResult](#lifecycle-QueryApprovedChaincodeDefinitionsResult)
    - [QueryApprovedChaincodeDefinitionsResult.ApprovedChaincodeDefinition](#lifecycle-QueryApprovedChaincodeDefinitionsResult-ApprovedChaincodeDefinition)
    - [QueryChaincodeDefinitionArgs](#lifecycle-QueryChaincodeDefinitionArgs)
    - [QueryChaincodeDefinitionResult](#lifecycle-QueryChaincodeDefinitionResult)
    - [QueryChaincodeDefinitionResult.ApprovalsEntry](#lifecycle-QueryChaincodeDefinitionResult-ApprovalsEntry)
    - [QueryChaincodeDefinitionsArgs](#lifecycle-QueryChaincodeDefinitionsArgs)
    - [QueryChaincodeDefinitionsResult](#lifecycle-QueryChaincodeDefinitionsResult)
    - [QueryChaincodeDefinitionsResult.ChaincodeDefinition](#lifecycle-QueryChaincodeDefinitionsResult-ChaincodeDefinition)
    - [QueryInstalledChaincodeArgs](#lifecycle-QueryInstalledChaincodeArgs)
    - [QueryInstalledChaincodeResult](#lifecycle-QueryInstalledChaincodeResult)
    - [QueryInstalledChaincodeResult.Chaincode](#lifecycle-QueryInstalledChaincodeResult-Chaincode)
    - [QueryInstalledChaincodeResult.References](#lifecycle-QueryInstalledChaincodeResult-References)
    - [QueryInstalledChaincodeResult.ReferencesEntry](#lifecycle-QueryInstalledChaincodeResult-ReferencesEntry)
    - [QueryInstalledChaincodesArgs](#lifecycle-QueryInstalledChaincodesArgs)
    - [QueryInstalledChaincodesResult](#lifecycle-QueryInstalledChaincodesResult)
    - [QueryInstalledChaincodesResult.Chaincode](#lifecycle-QueryInstalledChaincodesResult-Chaincode)
    - [QueryInstalledChaincodesResult.InstalledChaincode](#lifecycle-QueryInstalledChaincodesResult-InstalledChaincode)
    - [QueryInstalledChaincodesResult.InstalledChaincode.ReferencesEntry](#lifecycle-QueryInstalledChaincodesResult-InstalledChaincode-ReferencesEntry)
    - [QueryInstalledChaincodesResult.References](#lifecycle-QueryInstalledChaincodesResult-References)
  
- [peer/peer.proto](#peer_peer-proto)
    - [Endorser](#protos-Endorser)
  
- [peer/query.proto](#peer_query-proto)
    - [ChaincodeInfo](#protos-ChaincodeInfo)
    - [ChaincodeQueryResponse](#protos-ChaincodeQueryResponse)
    - [ChannelInfo](#protos-ChannelInfo)
    - [ChannelQueryResponse](#protos-ChannelQueryResponse)
    - [JoinBySnapshotStatus](#protos-JoinBySnapshotStatus)
  
- [peer/resources.proto](#peer_resources-proto)
    - [ChaincodeEndorsement](#protos-ChaincodeEndorsement)
    - [ChaincodeIdentifier](#protos-ChaincodeIdentifier)
    - [ChaincodeValidation](#protos-ChaincodeValidation)
    - [ConfigTree](#protos-ConfigTree)
    - [VSCCArgs](#protos-VSCCArgs)
  
- [peer/signed_cc_dep_spec.proto](#peer_signed_cc_dep_spec-proto)
    - [SignedChaincodeDeploymentSpec](#protos-SignedChaincodeDeploymentSpec)
  
- [peer/snapshot.proto](#peer_snapshot-proto)
    - [QueryPendingSnapshotsResponse](#protos-QueryPendingSnapshotsResponse)
    - [SignedSnapshotRequest](#protos-SignedSnapshotRequest)
    - [SnapshotQuery](#protos-SnapshotQuery)
    - [SnapshotRequest](#protos-SnapshotRequest)
  
    - [Snapshot](#protos-Snapshot)
  
- [transientstore/transientstore.proto](#transientstore_transientstore-proto)
    - [TxPvtReadWriteSetWithConfigInfo](#transientstore-TxPvtReadWriteSetWithConfigInfo)
    - [TxPvtReadWriteSetWithConfigInfo.CollectionConfigsEntry](#transientstore-TxPvtReadWriteSetWithConfigInfo-CollectionConfigsEntry)
  
- [Scalar Value Types](#scalar-value-types)



<a name="msp_msp_principal-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## msp/msp_principal.proto



<a name="common-CombinedPrincipal"></a>

### CombinedPrincipal
CombinedPrincipal governs the organization of the Principal
field of a policy principal when principal_classification has
indicated that a combined form of principals is required


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| principals | [MSPPrincipal](#common-MSPPrincipal) | repeated | Principals refer to combined principals |






<a name="common-MSPIdentityAnonymity"></a>

### MSPIdentityAnonymity
MSPIdentityAnonymity can be used to enforce an identity to be anonymous or nominal.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| anonymity_type | [MSPIdentityAnonymity.MSPIdentityAnonymityType](#common-MSPIdentityAnonymity-MSPIdentityAnonymityType) |  |  |






<a name="common-MSPPrincipal"></a>

### MSPPrincipal
MSPPrincipal aims to represent an MSP-centric set of identities.
In particular, this structure allows for definition of
 - a group of identities that are member of the same MSP
 - a group of identities that are member of the same organization unit
   in the same MSP
 - a group of identities that are administering a specific MSP
 - a specific identity
Expressing these groups is done given two fields of the fields below
 - Classification, that defines the type of classification of identities
   in an MSP this principal would be defined on; Classification can take
   three values:
    (i)  ByMSPRole: that represents a classification of identities within
         MSP based on one of the two pre-defined MSP rules, &#34;member&#34; and &#34;admin&#34;
    (ii) ByOrganizationUnit: that represents a classification of identities
         within MSP based on the organization unit an identity belongs to
    (iii)ByIdentity that denotes that MSPPrincipal is mapped to a single
         identity/certificate; this would mean that the Principal bytes
         message


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| principal_classification | [MSPPrincipal.Classification](#common-MSPPrincipal-Classification) |  | Classification describes the way that one should process Principal. An Classification value of &#34;ByOrganizationUnit&#34; reflects that &#34;Principal&#34; contains the name of an organization this MSP handles. A Classification value &#34;ByIdentity&#34; means that &#34;Principal&#34; contains a specific identity. Default value denotes that Principal contains one of the groups by default supported by all MSPs (&#34;admin&#34; or &#34;member&#34;). |
| principal | [bytes](#bytes) |  | Principal completes the policy principal definition. For the default principal types, Principal can be either &#34;Admin&#34; or &#34;Member&#34;. For the ByOrganizationUnit/ByIdentity values of Classification, PolicyPrincipal acquires its value from an organization unit or identity, respectively. For the Combined Classification type, the Principal is a marshalled CombinedPrincipal. |






<a name="common-MSPRole"></a>

### MSPRole
MSPRole governs the organization of the Principal
field of an MSPPrincipal when it aims to define one of the
two dedicated roles within an MSP: Admin and Members.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| msp_identifier | [string](#string) |  | MSPIdentifier represents the identifier of the MSP this principal refers to |
| role | [MSPRole.MSPRoleType](#common-MSPRole-MSPRoleType) |  | MSPRoleType defines which of the available, pre-defined MSP-roles an identiy should posess inside the MSP with identifier MSPidentifier |






<a name="common-OrganizationUnit"></a>

### OrganizationUnit
OrganizationUnit governs the organization of the Principal
field of a policy principal when a specific organization unity members
are to be defined within a policy principal.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| msp_identifier | [string](#string) |  | MSPIdentifier represents the identifier of the MSP this organization unit refers to |
| organizational_unit_identifier | [string](#string) |  | OrganizationUnitIdentifier defines the organizational unit under the MSP identified with MSPIdentifier |
| certifiers_identifier | [bytes](#bytes) |  | CertifiersIdentifier is the hash of certificates chain of trust related to this organizational unit |





 


<a name="common-MSPIdentityAnonymity-MSPIdentityAnonymityType"></a>

### MSPIdentityAnonymity.MSPIdentityAnonymityType


| Name | Number | Description |
| ---- | ------ | ----------- |
| NOMINAL | 0 | Represents a nominal MSP Identity |
| ANONYMOUS | 1 | Represents an anonymous MSP Identity |



<a name="common-MSPPrincipal-Classification"></a>

### MSPPrincipal.Classification


| Name | Number | Description |
| ---- | ------ | ----------- |
| ROLE | 0 | Represents the one of the dedicated MSP roles, the |
| ORGANIZATION_UNIT | 1 | one of a member of MSP network, and the one of an administrator of an MSP network

Denotes a finer grained (affiliation-based) |
| IDENTITY | 2 | groupping of entities, per MSP affiliation E.g., this can well be represented by an MSP&#39;s Organization unit

Denotes a principal that consists of a single |
| ANONYMITY | 3 | identity

Denotes a principal that can be used to enforce |
| COMBINED | 4 | an identity to be anonymous or nominal.

Denotes a combined principal |



<a name="common-MSPRole-MSPRoleType"></a>

### MSPRole.MSPRoleType


| Name | Number | Description |
| ---- | ------ | ----------- |
| MEMBER | 0 | Represents an MSP Member |
| ADMIN | 1 | Represents an MSP Admin |
| CLIENT | 2 | Represents an MSP Client |
| PEER | 3 | Represents an MSP Peer |
| ORDERER | 4 | Represents an MSP Orderer |


 

 

 



<a name="common_policies-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/policies.proto



<a name="common-ApplicationPolicy"></a>

### ApplicationPolicy
ApplicationPolicy captures the diffenrent policy types that
are set and evaluted at the application level.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signature_policy | [SignaturePolicyEnvelope](#common-SignaturePolicyEnvelope) |  | SignaturePolicy type is used if the policy is specified as a combination (using threshold gates) of signatures from MSP principals |
| channel_config_policy_reference | [string](#string) |  | ChannelConfigPolicyReference is used when the policy is specified as a string that references a policy defined in the configuration of the channel |






<a name="common-ImplicitMetaPolicy"></a>

### ImplicitMetaPolicy
ImplicitMetaPolicy is a policy type which depends on the hierarchical nature of the configuration
It is implicit because the rule is generate implicitly based on the number of sub policies
It is meta because it depends only on the result of other policies
When evaluated, this policy iterates over all immediate child sub-groups, retrieves the policy
of name sub_policy, evaluates the collection and applies the rule.
For example, with 4 sub-groups, and a policy name of &#34;foo&#34;, ImplicitMetaPolicy retrieves
each sub-group, retrieves policy &#34;foo&#34; for each subgroup, evaluates it, and, in the case of ANY
1 satisfied is sufficient, ALL would require 4 signatures, and MAJORITY would require 3 signatures.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sub_policy | [string](#string) |  |  |
| rule | [ImplicitMetaPolicy.Rule](#common-ImplicitMetaPolicy-Rule) |  |  |






<a name="common-Policy"></a>

### Policy
Policy expresses a policy which the orderer can evaluate, because there has been some desire expressed to support
multiple policy engines, this is typed as a oneof for now


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [int32](#int32) |  | For outside implementors, consider the first 1000 types reserved, otherwise one of PolicyType |
| value | [bytes](#bytes) |  |  |






<a name="common-SignaturePolicy"></a>

### SignaturePolicy
SignaturePolicy is a recursive message structure which defines a featherweight DSL for describing
policies which are more complicated than &#39;exactly this signature&#39;.  The NOutOf operator is sufficent
to express AND as well as OR, as well as of course N out of the following M policies
SignedBy implies that the signature is from a valid certificate which is signed by the trusted
authority specified in the bytes.  This will be the certificate itself for a self-signed certificate
and will be the CA for more traditional certificates


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signed_by | [int32](#int32) |  |  |
| n_out_of | [SignaturePolicy.NOutOf](#common-SignaturePolicy-NOutOf) |  |  |






<a name="common-SignaturePolicy-NOutOf"></a>

### SignaturePolicy.NOutOf



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| n | [int32](#int32) |  |  |
| rules | [SignaturePolicy](#common-SignaturePolicy) | repeated |  |






<a name="common-SignaturePolicyEnvelope"></a>

### SignaturePolicyEnvelope
SignaturePolicyEnvelope wraps a SignaturePolicy and includes a version for future enhancements


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [int32](#int32) |  |  |
| rule | [SignaturePolicy](#common-SignaturePolicy) |  |  |
| identities | [MSPPrincipal](#common-MSPPrincipal) | repeated |  |





 


<a name="common-ImplicitMetaPolicy-Rule"></a>

### ImplicitMetaPolicy.Rule


| Name | Number | Description |
| ---- | ------ | ----------- |
| ANY | 0 | Requires any of the sub-policies be satisfied, if no sub-policies exist, always returns true |
| ALL | 1 | Requires all of the sub-policies be satisfied |
| MAJORITY | 2 | Requires a strict majority (greater than half) of the sub-policies be satisfied |



<a name="common-Policy-PolicyType"></a>

### Policy.PolicyType


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNKNOWN | 0 | Reserved to check for proper initialization |
| SIGNATURE | 1 |  |
| MSP | 2 |  |
| IMPLICIT_META | 3 |  |


 

 

 



<a name="common_collection-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/collection.proto



<a name="common-CollectionConfig"></a>

### CollectionConfig
CollectionConfig defines the configuration of a collection object;
it currently contains a single, static type.
Dynamic collections are deferred.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| static_collection_config | [StaticCollectionConfig](#common-StaticCollectionConfig) |  |  |






<a name="common-CollectionConfigPackage"></a>

### CollectionConfigPackage
CollectionConfigPackage represents an array of CollectionConfig
messages; the extra struct is required because repeated oneof is
forbidden by the protobuf syntax


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| config | [CollectionConfig](#common-CollectionConfig) | repeated |  |






<a name="common-CollectionPolicyConfig"></a>

### CollectionPolicyConfig
Collection policy configuration. Initially, the configuration can only
contain a SignaturePolicy. In the future, the SignaturePolicy may be a
more general Policy. Instead of containing the actual policy, the
configuration may in the future contain a string reference to a policy.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signature_policy | [SignaturePolicyEnvelope](#common-SignaturePolicyEnvelope) |  | Initially, only a signature policy is supported.

Later, the SignaturePolicy will be replaced by a Policy. Policy policy = 1; A reference to a Policy is planned to be added later. string reference = 2; |






<a name="common-StaticCollectionConfig"></a>

### StaticCollectionConfig
StaticCollectionConfig constitutes the configuration parameters of a
static collection object. Static collections are collections that are
known at chaincode instantiation time, and that cannot be changed.
Dynamic collections are deferred.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | the name of the collection inside the denoted chaincode |
| member_orgs_policy | [CollectionPolicyConfig](#common-CollectionPolicyConfig) |  | a reference to a policy residing / managed in the config block to define which orgs have access to this collection’s private data |
| required_peer_count | [int32](#int32) |  | The minimum number of peers private data will be sent to upon endorsement. The endorsement would fail if dissemination to at least this number of peers is not achieved. |
| maximum_peer_count | [int32](#int32) |  | The maximum number of peers that private data will be sent to upon endorsement. This number has to be bigger than required_peer_count. |
| block_to_live | [uint64](#uint64) |  | The number of blocks after which the collection data expires. For instance if the value is set to 10, a key last modified by block number 100 will be purged at block number 111. A zero value is treated same as MaxUint64 |
| member_only_read | [bool](#bool) |  | The member only read access denotes whether only collection member clients can read the private data (if set to true), or even non members can read the data (if set to false, for example if you want to implement more granular access logic in the chaincode) |
| member_only_write | [bool](#bool) |  | The member only write access denotes whether only collection member clients can write the private data (if set to true), or even non members can write the data (if set to false, for example if you want to implement more granular access logic in the chaincode) |
| endorsement_policy | [ApplicationPolicy](#common-ApplicationPolicy) |  | a reference to a policy residing / managed in the config block to define the endorsement policy for this collection |





 

 

 

 



<a name="common_common-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/common.proto



<a name="common-Block"></a>

### Block
This is finalized block structure to be shared among the orderer and peer
Note that the BlockHeader chains to the previous BlockHeader, and the BlockData hash is embedded
in the BlockHeader.  This makes it natural and obvious that the Data is included in the hash, but
the Metadata is not.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| header | [BlockHeader](#common-BlockHeader) |  |  |
| data | [BlockData](#common-BlockData) |  |  |
| metadata | [BlockMetadata](#common-BlockMetadata) |  |  |






<a name="common-BlockData"></a>

### BlockData



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [bytes](#bytes) | repeated |  |






<a name="common-BlockHeader"></a>

### BlockHeader
BlockHeader is the element of the block which forms the block chain
The block header is hashed using the configured chain hashing algorithm
over the ASN.1 encoding of the BlockHeader


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| number | [uint64](#uint64) |  | The position in the blockchain |
| previous_hash | [bytes](#bytes) |  | The hash of the previous block header |
| data_hash | [bytes](#bytes) |  | The hash of the BlockData, by MerkleTree |






<a name="common-BlockMetadata"></a>

### BlockMetadata



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata | [bytes](#bytes) | repeated |  |






<a name="common-ChannelHeader"></a>

### ChannelHeader
Header is a generic replay prevention and identity message to include in a signed payload


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [int32](#int32) |  | Header types 0-10000 are reserved and defined by HeaderType |
| version | [int32](#int32) |  | Version indicates message protocol version |
| timestamp | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | Timestamp is the local time when the message was created by the sender |
| channel_id | [string](#string) |  | Identifier of the channel this message is bound for |
| tx_id | [string](#string) |  | An unique identifier that is used end-to-end. - set by higher layers such as end user or SDK - passed to the endorser (which will check for uniqueness) - as the header is passed along unchanged, it will be be retrieved by the committer (uniqueness check here as well) - to be stored in the ledger |
| epoch | [uint64](#uint64) |  | The epoch in which this header was generated, where epoch is defined based on block height Epoch in which the response has been generated. This field identifies a logical window of time. A proposal response is accepted by a peer only if two conditions hold: 1. the epoch specified in the message is the current epoch 2. this message has been only seen once during this epoch (i.e. it hasn&#39;t been replayed) |
| extension | [bytes](#bytes) |  | Extension that may be attached based on the header type |
| tls_cert_hash | [bytes](#bytes) |  | If mutual TLS is employed, this represents the hash of the client&#39;s TLS certificate |






<a name="common-Envelope"></a>

### Envelope
Envelope wraps a Payload with a signature so that the message may be authenticated


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payload | [bytes](#bytes) |  | A marshaled Payload |
| signature | [bytes](#bytes) |  | A signature by the creator specified in the Payload header |






<a name="common-Header"></a>

### Header



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| channel_header | [bytes](#bytes) |  |  |
| signature_header | [bytes](#bytes) |  |  |






<a name="common-IdentifierHeader"></a>

### IdentifierHeader
IdentifierHeader is used as an alternative to a SignatureHeader when the creator can be referenced by id


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| identifier | [uint32](#uint32) |  | A unique identifier that represents the creator of the message |
| nonce | [bytes](#bytes) |  | Arbitrary number that may only be used once. Can be used to detect replay attacks. |






<a name="common-LastConfig"></a>

### LastConfig
LastConfig is the encoded value for the Metadata message which is encoded in the LAST_CONFIGURATION block metadata index


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| index | [uint64](#uint64) |  |  |






<a name="common-Metadata"></a>

### Metadata
Metadata is a common structure to be used to encode block metadata


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value | [bytes](#bytes) |  |  |
| signatures | [MetadataSignature](#common-MetadataSignature) | repeated |  |






<a name="common-MetadataSignature"></a>

### MetadataSignature



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signature_header | [bytes](#bytes) |  | An encoded SignatureHeader |
| signature | [bytes](#bytes) |  | The signature over the concatenation of the Metadata value bytes, signatureHeader, and block header |
| identifier_header | [bytes](#bytes) |  | An encoded IdentifierHeader. If the signature header is empty, this is used to identify the creator by id |






<a name="common-OrdererBlockMetadata"></a>

### OrdererBlockMetadata
OrdererBlockMetadata defines metadata that is set by the ordering service.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| last_config | [LastConfig](#common-LastConfig) |  |  |
| consenter_metadata | [bytes](#bytes) |  |  |






<a name="common-Payload"></a>

### Payload
Payload is the message contents (and header to allow for signing)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| header | [Header](#common-Header) |  | Header is included to provide identity and prevent replay |
| data | [bytes](#bytes) |  | Data, the encoding of which is defined by the type in the header |






<a name="common-SignatureHeader"></a>

### SignatureHeader



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| creator | [bytes](#bytes) |  | Creator of the message, a marshaled msp.SerializedIdentity |
| nonce | [bytes](#bytes) |  | Arbitrary number that may only be used once. Can be used to detect replay attacks. |





 


<a name="common-BlockMetadataIndex"></a>

### BlockMetadataIndex
This enum enlists indexes of the block metadata array

| Name | Number | Description |
| ---- | ------ | ----------- |
| SIGNATURES | 0 | Block metadata array position for block signatures |
| LAST_CONFIG | 1 | Block metadata array position to store last configuration block sequence number |
| TRANSACTIONS_FILTER | 2 | Block metadata array position to store serialized bit array filter of invalid transactions |
| ORDERER | 3 | Block metadata array position to store operational metadata for orderers |
| COMMIT_HASH | 4 | Block metadata array position to store the hash of TRANSACTIONS_FILTER, State Updates, and the COMMIT_HASH of the previous block |



<a name="common-HeaderType"></a>

### HeaderType


| Name | Number | Description |
| ---- | ------ | ----------- |
| MESSAGE | 0 | Used for messages which are signed but opaque |
| CONFIG | 1 | Used for messages which express the channel config |
| CONFIG_UPDATE | 2 | Used for transactions which update the channel config |
| ENDORSER_TRANSACTION | 3 | Used by the SDK to submit endorser based transactions |
| ORDERER_TRANSACTION | 4 | Was used internally by the orderer for management, no longer used since system channel was removed |
| DELIVER_SEEK_INFO | 5 | Used as the type for Envelope messages submitted to instruct the Deliver API to seek |
| CHAINCODE_PACKAGE | 6 | Used for packaging chaincode artifacts for install |



<a name="common-Status"></a>

### Status
These status codes are intended to resemble selected HTTP status codes

| Name | Number | Description |
| ---- | ------ | ----------- |
| UNKNOWN | 0 |  |
| SUCCESS | 200 |  |
| BAD_REQUEST | 400 |  |
| FORBIDDEN | 403 |  |
| NOT_FOUND | 404 |  |
| REQUEST_ENTITY_TOO_LARGE | 413 |  |
| INTERNAL_SERVER_ERROR | 500 |  |
| NOT_IMPLEMENTED | 501 |  |
| SERVICE_UNAVAILABLE | 503 |  |


 

 

 



<a name="common_configtx-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/configtx.proto



<a name="common-Config"></a>

### Config
Config represents the config for a particular channel


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sequence | [uint64](#uint64) |  |  |
| channel_group | [ConfigGroup](#common-ConfigGroup) |  | channel_group is a bad name for this, it should be changed to root when API breakage is allowed |






<a name="common-ConfigEnvelope"></a>

### ConfigEnvelope
ConfigEnvelope is designed to contain _all_ configuration for a chain with no dependency
on previous configuration transactions.

It is generated with the following scheme:
  1. Retrieve the existing configuration
  2. Note the config properties (ConfigValue, ConfigPolicy, ConfigGroup) to be modified
  3. Add any intermediate ConfigGroups to the ConfigUpdate.read_set (sparsely)
  4. Add any additional desired dependencies to ConfigUpdate.read_set (sparsely)
  5. Modify the config properties, incrementing each version by 1, set them in the ConfigUpdate.write_set
     Note: any element not modified but specified should already be in the read_set, so may be specified sparsely
  6. Create ConfigUpdate message and marshal it into ConfigUpdateEnvelope.update and encode the required signatures
    a) Each signature is of type ConfigSignature
    b) The ConfigSignature signature is over the concatenation of signature_header and the ConfigUpdate bytes (which includes a ChainHeader)
  5. Submit new Config for ordering in Envelope signed by submitter
    a) The Envelope Payload has data set to the marshaled ConfigEnvelope
    b) The Envelope Payload has a header of type Header.Type.CONFIG_UPDATE

The configuration manager will verify:
  1. All items in the read_set exist at the read versions
  2. All items in the write_set at a different version than, or not in, the read_set have been appropriately signed according to their mod_policy
  3. The new configuration satisfies the ConfigSchema


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| config | [Config](#common-Config) |  | A marshaled Config structure |
| last_update | [Envelope](#common-Envelope) |  | The last CONFIG_UPDATE message which generated this current configuration |






<a name="common-ConfigGroup"></a>

### ConfigGroup
ConfigGroup is the hierarchical data structure for holding config


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [uint64](#uint64) |  |  |
| groups | [ConfigGroup.GroupsEntry](#common-ConfigGroup-GroupsEntry) | repeated |  |
| values | [ConfigGroup.ValuesEntry](#common-ConfigGroup-ValuesEntry) | repeated |  |
| policies | [ConfigGroup.PoliciesEntry](#common-ConfigGroup-PoliciesEntry) | repeated |  |
| mod_policy | [string](#string) |  |  |






<a name="common-ConfigGroup-GroupsEntry"></a>

### ConfigGroup.GroupsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [ConfigGroup](#common-ConfigGroup) |  |  |






<a name="common-ConfigGroup-PoliciesEntry"></a>

### ConfigGroup.PoliciesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [ConfigPolicy](#common-ConfigPolicy) |  |  |






<a name="common-ConfigGroup-ValuesEntry"></a>

### ConfigGroup.ValuesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [ConfigValue](#common-ConfigValue) |  |  |






<a name="common-ConfigPolicy"></a>

### ConfigPolicy



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [uint64](#uint64) |  |  |
| policy | [Policy](#common-Policy) |  |  |
| mod_policy | [string](#string) |  |  |






<a name="common-ConfigSignature"></a>

### ConfigSignature



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signature_header | [bytes](#bytes) |  | A marshaled SignatureHeader |
| signature | [bytes](#bytes) |  | Signature over the concatenation signatureHeader bytes and config bytes |






<a name="common-ConfigUpdate"></a>

### ConfigUpdate
ConfigUpdate is used to submit a subset of config and to have the orderer apply to Config
it is always submitted inside a ConfigUpdateEnvelope which allows the addition of signatures
resulting in a new total configuration.  The update is applied as follows:
1. The versions from all of the elements in the read_set is verified against the versions in the existing config.
   If there is a mismatch in the read versions, then the config update fails and is rejected.
2. Any elements in the write_set with the same version as the read_set are ignored.
3. The corresponding mod_policy for every remaining element in the write_set is collected.
4. Each policy is checked against the signatures from the ConfigUpdateEnvelope, any failing to verify are rejected
5. The write_set is applied to the Config and the ConfigGroupSchema verifies that the updates were legal


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| channel_id | [string](#string) |  | Which channel this config update is for |
| read_set | [ConfigGroup](#common-ConfigGroup) |  | ReadSet explicitly lists the portion of the config which was read, this should be sparse with only Version set |
| write_set | [ConfigGroup](#common-ConfigGroup) |  | WriteSet lists the portion of the config which was written, this should included updated Versions |
| isolated_data | [ConfigUpdate.IsolatedDataEntry](#common-ConfigUpdate-IsolatedDataEntry) | repeated | Data which is not to be reflected in the resulting Config, but is still needed for some other purpose. For instance, rscc_seed_data |






<a name="common-ConfigUpdate-IsolatedDataEntry"></a>

### ConfigUpdate.IsolatedDataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [bytes](#bytes) |  |  |






<a name="common-ConfigUpdateEnvelope"></a>

### ConfigUpdateEnvelope



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| config_update | [bytes](#bytes) |  | A marshaled ConfigUpdate structure |
| signatures | [ConfigSignature](#common-ConfigSignature) | repeated | Signatures over the config_update |






<a name="common-ConfigValue"></a>

### ConfigValue
ConfigValue represents an individual piece of config data


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [uint64](#uint64) |  |  |
| value | [bytes](#bytes) |  |  |
| mod_policy | [string](#string) |  |  |





 

 

 

 



<a name="common_configuration-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/configuration.proto



<a name="common-BlockDataHashingStructure"></a>

### BlockDataHashingStructure
BlockDataHashingStructure is encoded into the configuration transaction as a configuration item of
type Chain with a Key of &#34;BlockDataHashingStructure&#34; and a Value of HashingAlgorithm as marshaled protobuf bytes


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| width | [uint32](#uint32) |  | width specifies the width of the Merkle tree to use when computing the BlockDataHash in order to replicate flat hashing, set this width to MAX_UINT32 |






<a name="common-Capabilities"></a>

### Capabilities
Capabilities message defines the capabilities a particular binary must implement
for that binary to be able to safely participate in the channel.  The capabilities
message is defined at the /Channel level, the /Channel/Application level, and the
/Channel/Orderer level.

The /Channel level capabilties define capabilities which both the orderer and peer
binaries must satisfy.  These capabilties might be things like a new MSP type,
or a new policy type.

The /Channel/Orderer level capabilties define capabilities which must be supported
by the orderer, but which have no bearing on the behavior of the peer.  For instance
if the orderer changes the logic for how it constructs new channels, only all orderers
must agree on the new logic.  The peers do not need to be aware of this change as
they only interact with the channel after it has been constructed.

Finally, the /Channel/Application level capabilities define capabilities which the peer
binary must satisfy, but which have no bearing on the orderer.  For instance, if the
peer adds a new UTXO transaction type, or changes the chaincode lifecycle requirements,
all peers must agree on the new logic.  However, orderers never inspect transactions
this deeply, and therefore have no need to be aware of the change.

The capabilities strings defined in these messages typically correspond to release
binary versions (e.g. &#34;V1.1&#34;), and are used primarilly as a mechanism for a fully
upgraded network to switch from one set of logic to a new one.

Although for V1.1, the orderers must be upgraded to V1.1 prior to the rest of the
network, going forward, because of the split between the /Channel, /Channel/Orderer
and /Channel/Application capabilities.  It should be possible for the orderer and
application networks to upgrade themselves independently (with the exception of any
new capabilities defined at the /Channel level).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| capabilities | [Capabilities.CapabilitiesEntry](#common-Capabilities-CapabilitiesEntry) | repeated |  |






<a name="common-Capabilities-CapabilitiesEntry"></a>

### Capabilities.CapabilitiesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Capability](#common-Capability) |  |  |






<a name="common-Capability"></a>

### Capability
Capability is an empty message for the time being.  It is defined as a protobuf
message rather than a constant, so that we may extend capabilities with other fields
if the need arises in the future.  For the time being, a capability being in the
capabilities map requires that that capability be supported.






<a name="common-Consenter"></a>

### Consenter
Consenter represents a consenting node (i.e. replica).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [uint32](#uint32) |  |  |
| host | [string](#string) |  |  |
| port | [uint32](#uint32) |  |  |
| msp_id | [string](#string) |  |  |
| identity | [bytes](#bytes) |  |  |
| client_tls_cert | [bytes](#bytes) |  |  |
| server_tls_cert | [bytes](#bytes) |  |  |






<a name="common-Consortium"></a>

### Consortium
Consortium represents the consortium context in which the channel was created


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |






<a name="common-HashingAlgorithm"></a>

### HashingAlgorithm
HashingAlgorithm is encoded into the configuration transaction as a
configuration item of type Chain with a Key of &#34;HashingAlgorithm&#34; and a
Value of HashingAlgorithm as marshaled protobuf bytes


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | SHA256 is currently the only supported and tested algorithm. |






<a name="common-OrdererAddresses"></a>

### OrdererAddresses
OrdererAddresses is encoded into the configuration transaction as a configuration item of type Chain
with a Key of &#34;OrdererAddresses&#34; and a Value of OrdererAddresses as marshaled protobuf bytes


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| addresses | [string](#string) | repeated |  |






<a name="common-Orderers"></a>

### Orderers
Orderers is encoded into the configuration transaction as a configuration item of type Chain
with a Key of &#34;Orderers&#34; and a Value of Orderers as marshaled protobuf bytes


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| consenter_mapping | [Consenter](#common-Consenter) | repeated |  |





 

 

 

 



<a name="common_ledger-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/ledger.proto



<a name="common-BlockchainInfo"></a>

### BlockchainInfo
Contains information about the blockchain ledger such as height, current
block hash, and previous block hash.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| height | [uint64](#uint64) |  |  |
| currentBlockHash | [bytes](#bytes) |  |  |
| previousBlockHash | [bytes](#bytes) |  |  |
| bootstrappingSnapshotInfo | [BootstrappingSnapshotInfo](#common-BootstrappingSnapshotInfo) |  | Specifies bootstrapping snapshot info if the channel is bootstrapped from a snapshot. It is nil if the channel is not bootstrapped from a snapshot. |






<a name="common-BootstrappingSnapshotInfo"></a>

### BootstrappingSnapshotInfo
Contains information for the bootstrapping snapshot.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| lastBlockInSnapshot | [uint64](#uint64) |  |  |





 

 

 

 



<a name="peer_policy-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/policy.proto



<a name="protos-ApplicationPolicy"></a>

### ApplicationPolicy
ApplicationPolicy captures the diffenrent policy types that
are set and evaluted at the application level.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signature_policy | [common.SignaturePolicyEnvelope](#common-SignaturePolicyEnvelope) |  | SignaturePolicy type is used if the policy is specified as a combination (using threshold gates) of signatures from MSP principals |
| channel_config_policy_reference | [string](#string) |  | ChannelConfigPolicyReference is used when the policy is specified as a string that references a policy defined in the configuration of the channel |





 

 

 

 



<a name="peer_collection-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/collection.proto



<a name="protos-CollectionConfig"></a>

### CollectionConfig
CollectionConfig defines the configuration of a collection object;
it currently contains a single, static type.
Dynamic collections are deferred.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| static_collection_config | [StaticCollectionConfig](#protos-StaticCollectionConfig) |  |  |






<a name="protos-CollectionConfigPackage"></a>

### CollectionConfigPackage
CollectionConfigPackage represents an array of CollectionConfig
messages; the extra struct is required because repeated oneof is
forbidden by the protobuf syntax


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| config | [CollectionConfig](#protos-CollectionConfig) | repeated |  |






<a name="protos-CollectionPolicyConfig"></a>

### CollectionPolicyConfig
Collection policy configuration. Initially, the configuration can only
contain a SignaturePolicy. In the future, the SignaturePolicy may be a
more general Policy. Instead of containing the actual policy, the
configuration may in the future contain a string reference to a policy.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signature_policy | [common.SignaturePolicyEnvelope](#common-SignaturePolicyEnvelope) |  | Initially, only a signature policy is supported.

Later, the SignaturePolicy will be replaced by a Policy. Policy policy = 1; A reference to a Policy is planned to be added later. string reference = 2; |






<a name="protos-StaticCollectionConfig"></a>

### StaticCollectionConfig
StaticCollectionConfig constitutes the configuration parameters of a
static collection object. Static collections are collections that are
known at chaincode instantiation time, and that cannot be changed.
Dynamic collections are deferred.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | the name of the collection inside the denoted chaincode |
| member_orgs_policy | [CollectionPolicyConfig](#protos-CollectionPolicyConfig) |  | a reference to a policy residing / managed in the config block to define which orgs have access to this collection’s private data |
| required_peer_count | [int32](#int32) |  | The minimum number of peers private data will be sent to upon endorsement. The endorsement would fail if dissemination to at least this number of peers is not achieved. |
| maximum_peer_count | [int32](#int32) |  | The maximum number of peers that private data will be sent to upon endorsement. This number has to be bigger than required_peer_count. |
| block_to_live | [uint64](#uint64) |  | The number of blocks after which the collection data expires. For instance if the value is set to 10, a key last modified by block number 100 will be purged at block number 111. A zero value is treated same as MaxUint64 |
| member_only_read | [bool](#bool) |  | The member only read access denotes whether only collection member clients can read the private data (if set to true), or even non members can read the data (if set to false, for example if you want to implement more granular access logic in the chaincode) |
| member_only_write | [bool](#bool) |  | The member only write access denotes whether only collection member clients can write the private data (if set to true), or even non members can write the data (if set to false, for example if you want to implement more granular access logic in the chaincode) |
| endorsement_policy | [ApplicationPolicy](#protos-ApplicationPolicy) |  | a reference to a policy residing / managed in the config block to define the endorsement policy for this collection |





 

 

 

 



<a name="gossip_message-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## gossip/message.proto



<a name="gossip-Acknowledgement"></a>

### Acknowledgement



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| error | [string](#string) |  |  |






<a name="gossip-AliveMessage"></a>

### AliveMessage
AliveMessage is sent to inform remote peers
of a peer&#39;s existence and activity


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| membership | [Member](#gossip-Member) |  |  |
| timestamp | [PeerTime](#gossip-PeerTime) |  |  |
| identity | [bytes](#bytes) |  |  |






<a name="gossip-Chaincode"></a>

### Chaincode
Chaincode represents a Chaincode that is installed
on a peer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| version | [string](#string) |  |  |
| metadata | [bytes](#bytes) |  |  |






<a name="gossip-ConnEstablish"></a>

### ConnEstablish
ConnEstablish is the message used for the gossip handshake
Whenever a peer connects to another peer, it handshakes
with it by sending this message that proves its identity


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pki_id | [bytes](#bytes) |  |  |
| identity | [bytes](#bytes) |  |  |
| tls_cert_hash | [bytes](#bytes) |  |  |
| probe | [bool](#bool) |  |  |






<a name="gossip-DataDigest"></a>

### DataDigest
DataDigest is the message sent from the receiver peer
to the initator peer and contains the data items it has


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| nonce | [uint64](#uint64) |  |  |
| digests | [bytes](#bytes) | repeated | Maybe change this to bitmap later on |
| msg_type | [PullMsgType](#gossip-PullMsgType) |  |  |






<a name="gossip-DataMessage"></a>

### DataMessage
DataMessage is the message that contains a block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payload | [Payload](#gossip-Payload) |  |  |






<a name="gossip-DataRequest"></a>

### DataRequest
DataRequest is a message used for a peer to request
certain data blocks from a remote peer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| nonce | [uint64](#uint64) |  |  |
| digests | [bytes](#bytes) | repeated |  |
| msg_type | [PullMsgType](#gossip-PullMsgType) |  |  |






<a name="gossip-DataUpdate"></a>

### DataUpdate
DataUpdate is the final message in the pull phase
sent from the receiver to the initiator


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| nonce | [uint64](#uint64) |  |  |
| data | [Envelope](#gossip-Envelope) | repeated |  |
| msg_type | [PullMsgType](#gossip-PullMsgType) |  |  |






<a name="gossip-Empty"></a>

### Empty
Empty is used for pinging and in tests






<a name="gossip-Envelope"></a>

### Envelope
Envelope contains a marshalled
GossipMessage and a signature over it.
It may also contain a SecretEnvelope
which is a marshalled Secret


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payload | [bytes](#bytes) |  |  |
| signature | [bytes](#bytes) |  |  |
| secret_envelope | [SecretEnvelope](#gossip-SecretEnvelope) |  |  |






<a name="gossip-GossipHello"></a>

### GossipHello
GossipHello is the message that is used for the peer to initiate
a pull round with another peer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| nonce | [uint64](#uint64) |  |  |
| metadata | [bytes](#bytes) |  |  |
| msg_type | [PullMsgType](#gossip-PullMsgType) |  |  |






<a name="gossip-GossipMessage"></a>

### GossipMessage
GossipMessage defines the message sent in a gossip network


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| nonce | [uint64](#uint64) |  | used mainly for testing, but will might be used in the future for ensuring message delivery by acking |
| channel | [bytes](#bytes) |  | The channel of the message. Some GossipMessages may set this to nil, because they are cross-channels but some may not |
| tag | [GossipMessage.Tag](#gossip-GossipMessage-Tag) |  | determines to which peers it is allowed to forward the message |
| alive_msg | [AliveMessage](#gossip-AliveMessage) |  | Membership |
| mem_req | [MembershipRequest](#gossip-MembershipRequest) |  |  |
| mem_res | [MembershipResponse](#gossip-MembershipResponse) |  |  |
| data_msg | [DataMessage](#gossip-DataMessage) |  | Contains a ledger block |
| hello | [GossipHello](#gossip-GossipHello) |  | Used for push&amp;pull |
| data_dig | [DataDigest](#gossip-DataDigest) |  |  |
| data_req | [DataRequest](#gossip-DataRequest) |  |  |
| data_update | [DataUpdate](#gossip-DataUpdate) |  |  |
| empty | [Empty](#gossip-Empty) |  | Empty message, used for pinging |
| conn | [ConnEstablish](#gossip-ConnEstablish) |  | ConnEstablish, used for establishing a connection |
| state_info | [StateInfo](#gossip-StateInfo) |  | Used for relaying information about state |
| state_snapshot | [StateInfoSnapshot](#gossip-StateInfoSnapshot) |  | Used for sending sets of StateInfo messages |
| state_info_pull_req | [StateInfoPullRequest](#gossip-StateInfoPullRequest) |  | Used for asking for StateInfoSnapshots |
| state_request | [RemoteStateRequest](#gossip-RemoteStateRequest) |  | Used to ask from a remote peer a set of blocks |
| state_response | [RemoteStateResponse](#gossip-RemoteStateResponse) |  | Used to send a set of blocks to a remote peer |
| leadership_msg | [LeadershipMessage](#gossip-LeadershipMessage) |  | Used to indicate intent of peer to become leader |
| peer_identity | [PeerIdentity](#gossip-PeerIdentity) |  | Used to learn of a peer&#39;s certificate |
| ack | [Acknowledgement](#gossip-Acknowledgement) |  |  |
| privateReq | [RemotePvtDataRequest](#gossip-RemotePvtDataRequest) |  | Used to request private data |
| privateRes | [RemotePvtDataResponse](#gossip-RemotePvtDataResponse) |  | Used to respond to private data requests |
| private_data | [PrivateDataMessage](#gossip-PrivateDataMessage) |  | Encapsulates private data used to distribute private rwset after the endorsement |






<a name="gossip-LeadershipMessage"></a>

### LeadershipMessage
Leadership Message is sent during leader election to inform
remote peers about intent of peer to proclaim itself as leader


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pki_id | [bytes](#bytes) |  |  |
| timestamp | [PeerTime](#gossip-PeerTime) |  |  |
| is_declaration | [bool](#bool) |  |  |






<a name="gossip-Member"></a>

### Member
Member holds membership-related information
about a peer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint | [string](#string) |  |  |
| metadata | [bytes](#bytes) |  |  |
| pki_id | [bytes](#bytes) |  |  |






<a name="gossip-MembershipRequest"></a>

### MembershipRequest
MembershipRequest is used to ask membership information
from a remote peer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| self_information | [Envelope](#gossip-Envelope) |  |  |
| known | [bytes](#bytes) | repeated |  |






<a name="gossip-MembershipResponse"></a>

### MembershipResponse
MembershipResponse is used for replying to MembershipRequests


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| alive | [Envelope](#gossip-Envelope) | repeated |  |
| dead | [Envelope](#gossip-Envelope) | repeated |  |






<a name="gossip-Payload"></a>

### Payload
Payload contains a block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| seq_num | [uint64](#uint64) |  |  |
| data | [bytes](#bytes) |  |  |
| private_data | [bytes](#bytes) | repeated |  |






<a name="gossip-PeerIdentity"></a>

### PeerIdentity
PeerIdentity defines the identity of the peer
Used to make other peers learn of the identity
of a certain peer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pki_id | [bytes](#bytes) |  |  |
| cert | [bytes](#bytes) |  |  |
| metadata | [bytes](#bytes) |  |  |






<a name="gossip-PeerTime"></a>

### PeerTime
PeerTime defines the logical time of a peer&#39;s life


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| inc_num | [uint64](#uint64) |  |  |
| seq_num | [uint64](#uint64) |  |  |






<a name="gossip-PrivateDataMessage"></a>

### PrivateDataMessage
PrivateDataMessage message which includes private
data information to distributed once transaction
has been endorsed


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payload | [PrivatePayload](#gossip-PrivatePayload) |  |  |






<a name="gossip-PrivatePayload"></a>

### PrivatePayload
PrivatePayload payload to encapsulate private
data with collection name to enable routing
based on collection partitioning


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| collection_name | [string](#string) |  |  |
| namespace | [string](#string) |  |  |
| tx_id | [string](#string) |  |  |
| private_rwset | [bytes](#bytes) |  |  |
| private_sim_height | [uint64](#uint64) |  |  |
| collection_configs | [protos.CollectionConfigPackage](#protos-CollectionConfigPackage) |  |  |






<a name="gossip-Properties"></a>

### Properties



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ledger_height | [uint64](#uint64) |  |  |
| left_channel | [bool](#bool) |  |  |
| chaincodes | [Chaincode](#gossip-Chaincode) | repeated |  |






<a name="gossip-PvtDataDigest"></a>

### PvtDataDigest
PvtDataDigest defines a digest of private data


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tx_id | [string](#string) |  |  |
| namespace | [string](#string) |  |  |
| collection | [string](#string) |  |  |
| block_seq | [uint64](#uint64) |  |  |
| seq_in_block | [uint64](#uint64) |  |  |






<a name="gossip-PvtDataElement"></a>

### PvtDataElement



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| digest | [PvtDataDigest](#gossip-PvtDataDigest) |  |  |
| payload | [bytes](#bytes) | repeated | the payload is a marshaled kvrwset.KVRWSet |






<a name="gossip-PvtDataPayload"></a>

### PvtDataPayload
PvtPayload augments private rwset data and tx index
inside the block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tx_seq_in_block | [uint64](#uint64) |  |  |
| payload | [bytes](#bytes) |  | Encodes marhslaed bytes of rwset.TxPvtReadWriteSet defined in rwset.proto |






<a name="gossip-RemotePvtDataRequest"></a>

### RemotePvtDataRequest
RemotePrivateDataRequest message used to request
missing private rwset


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| digests | [PvtDataDigest](#gossip-PvtDataDigest) | repeated |  |






<a name="gossip-RemotePvtDataResponse"></a>

### RemotePvtDataResponse
RemotePrivateData message to response on private
data replication request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| elements | [PvtDataElement](#gossip-PvtDataElement) | repeated |  |






<a name="gossip-RemoteStateRequest"></a>

### RemoteStateRequest
RemoteStateRequest is used to ask a set of blocks
from a remote peer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| start_seq_num | [uint64](#uint64) |  |  |
| end_seq_num | [uint64](#uint64) |  |  |






<a name="gossip-RemoteStateResponse"></a>

### RemoteStateResponse
RemoteStateResponse is used to send a set of blocks
to a remote peer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payloads | [Payload](#gossip-Payload) | repeated |  |






<a name="gossip-Secret"></a>

### Secret
Secret is an entity that might be omitted
from an Envelope when the remote peer that is receiving
the Envelope shouldn&#39;t know the secret&#39;s content.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| internalEndpoint | [string](#string) |  |  |






<a name="gossip-SecretEnvelope"></a>

### SecretEnvelope
SecretEnvelope is a marshalled Secret
and a signature over it.
The signature should be validated by the peer
that signed the Envelope the SecretEnvelope
came with


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payload | [bytes](#bytes) |  |  |
| signature | [bytes](#bytes) |  |  |






<a name="gossip-StateInfo"></a>

### StateInfo
StateInfo is used for a peer to relay its state information
to other peers


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| timestamp | [PeerTime](#gossip-PeerTime) |  |  |
| pki_id | [bytes](#bytes) |  |  |
| channel_MAC | [bytes](#bytes) |  | channel_MAC is an authentication code that proves that the peer that sent this message knows the name of the channel. |
| properties | [Properties](#gossip-Properties) |  |  |






<a name="gossip-StateInfoPullRequest"></a>

### StateInfoPullRequest
StateInfoPullRequest is used to fetch a StateInfoSnapshot
from a remote peer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| channel_MAC | [bytes](#bytes) |  | channel_MAC is an authentication code that proves that the peer that sent this message knows the name of the channel. |






<a name="gossip-StateInfoSnapshot"></a>

### StateInfoSnapshot
StateInfoSnapshot is an aggregation of StateInfo messages


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| elements | [Envelope](#gossip-Envelope) | repeated |  |





 


<a name="gossip-GossipMessage-Tag"></a>

### GossipMessage.Tag


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNDEFINED | 0 |  |
| EMPTY | 1 |  |
| ORG_ONLY | 2 |  |
| CHAN_ONLY | 3 |  |
| CHAN_AND_ORG | 4 |  |
| CHAN_OR_ORG | 5 |  |



<a name="gossip-PullMsgType"></a>

### PullMsgType


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNDEFINED | 0 |  |
| BLOCK_MSG | 1 |  |
| IDENTITY_MSG | 2 |  |


 

 


<a name="gossip-Gossip"></a>

### Gossip
Gossip

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GossipStream | [Envelope](#gossip-Envelope) stream | [Envelope](#gossip-Envelope) stream | GossipStream is the gRPC stream used for sending and receiving messages |
| Ping | [Empty](#gossip-Empty) | [Empty](#gossip-Empty) | Ping is used to probe a remote peer&#39;s aliveness |

 



<a name="msp_msp_config-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## msp/msp_config.proto



<a name="msp-FabricCryptoConfig"></a>

### FabricCryptoConfig
FabricCryptoConfig contains configuration parameters
for the cryptographic algorithms used by the MSP
this configuration refers to


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signature_hash_family | [string](#string) |  | SignatureHashFamily is a string representing the hash family to be used during sign and verify operations. Allowed values are &#34;SHA2&#34; and &#34;SHA3&#34;. |
| identity_identifier_hash_function | [string](#string) |  | IdentityIdentifierHashFunction is a string representing the hash function to be used during the computation of the identity identifier of an MSP identity. Allowed values are &#34;SHA256&#34;, &#34;SHA384&#34; and &#34;SHA3_256&#34;, &#34;SHA3_384&#34;. |






<a name="msp-FabricMSPConfig"></a>

### FabricMSPConfig
FabricMSPConfig collects all the configuration information for
a Fabric MSP.
Here we assume a default certificate validation policy, where
any certificate signed by any of the listed rootCA certs would
be considered as valid under this MSP.
This MSP may or may not come with a signing identity. If it does,
it can also issue signing identities. If it does not, it can only
be used to validate and verify certificates.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Name holds the identifier of the MSP; MSP identifier is chosen by the application that governs this MSP. For example, and assuming the default implementation of MSP, that is X.509-based and considers a single Issuer, this can refer to the Subject OU field or the Issuer OU field. |
| root_certs | [bytes](#bytes) | repeated | List of root certificates trusted by this MSP they are used upon certificate validation (see comment for IntermediateCerts below) |
| intermediate_certs | [bytes](#bytes) | repeated | List of intermediate certificates trusted by this MSP; they are used upon certificate validation as follows: validation attempts to build a path from the certificate to be validated (which is at one end of the path) and one of the certs in the RootCerts field (which is at the other end of the path). If the path is longer than 2, certificates in the middle are searched within the IntermediateCerts pool |
| admins | [bytes](#bytes) | repeated | Identity denoting the administrator of this MSP |
| revocation_list | [bytes](#bytes) | repeated | Identity revocation list |
| signing_identity | [SigningIdentityInfo](#msp-SigningIdentityInfo) |  | SigningIdentity holds information on the signing identity this peer is to use, and which is to be imported by the MSP defined before |
| organizational_unit_identifiers | [FabricOUIdentifier](#msp-FabricOUIdentifier) | repeated | OrganizationalUnitIdentifiers holds one or more fabric organizational unit identifiers that belong to this MSP configuration |
| crypto_config | [FabricCryptoConfig](#msp-FabricCryptoConfig) |  | FabricCryptoConfig contains the configuration parameters for the cryptographic algorithms used by this MSP |
| tls_root_certs | [bytes](#bytes) | repeated | List of TLS root certificates trusted by this MSP. They are returned by GetTLSRootCerts. |
| tls_intermediate_certs | [bytes](#bytes) | repeated | List of TLS intermediate certificates trusted by this MSP; They are returned by GetTLSIntermediateCerts. |
| fabric_node_ous | [FabricNodeOUs](#msp-FabricNodeOUs) |  | fabric_node_ous contains the configuration to distinguish clients from peers from orderers based on the OUs. |






<a name="msp-FabricNodeOUs"></a>

### FabricNodeOUs
FabricNodeOUs contains configuration to tell apart clients from peers from orderers
based on OUs. If NodeOUs recognition is enabled then an msp identity
that does not contain any of the specified OU will be considered invalid.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| enable | [bool](#bool) |  | If true then an msp identity that does not contain any of the specified OU will be considered invalid. |
| client_ou_identifier | [FabricOUIdentifier](#msp-FabricOUIdentifier) |  | OU Identifier of the clients |
| peer_ou_identifier | [FabricOUIdentifier](#msp-FabricOUIdentifier) |  | OU Identifier of the peers |
| admin_ou_identifier | [FabricOUIdentifier](#msp-FabricOUIdentifier) |  | OU Identifier of the admins |
| orderer_ou_identifier | [FabricOUIdentifier](#msp-FabricOUIdentifier) |  | OU Identifier of the orderers |






<a name="msp-FabricOUIdentifier"></a>

### FabricOUIdentifier
FabricOUIdentifier represents an organizational unit and
its related chain of trust identifier.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| certificate | [bytes](#bytes) |  | Certificate represents the second certificate in a certification chain. (Notice that the first certificate in a certification chain is supposed to be the certificate of an identity). It must correspond to the certificate of root or intermediate CA recognized by the MSP this message belongs to. Starting from this certificate, a certification chain is computed and bound to the OrganizationUnitIdentifier specified |
| organizational_unit_identifier | [string](#string) |  | OrganizationUnitIdentifier defines the organizational unit under the MSP identified with MSPIdentifier |






<a name="msp-IdemixMSPConfig"></a>

### IdemixMSPConfig
IdemixMSPConfig collects all the configuration information for
an Idemix MSP.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Name holds the identifier of the MSP |
| ipk | [bytes](#bytes) |  | ipk represents the (serialized) issuer public key |
| signer | [IdemixMSPSignerConfig](#msp-IdemixMSPSignerConfig) |  | signer may contain crypto material to configure a default signer |
| revocation_pk | [bytes](#bytes) |  | revocation_pk is the public key used for revocation of credentials |
| epoch | [int64](#int64) |  | epoch represents the current epoch (time interval) used for revocation |






<a name="msp-IdemixMSPSignerConfig"></a>

### IdemixMSPSignerConfig
IdemixMSPSIgnerConfig contains the crypto material to set up an idemix signing identity


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cred | [bytes](#bytes) |  | cred represents the serialized idemix credential of the default signer |
| sk | [bytes](#bytes) |  | sk is the secret key of the default signer, corresponding to credential Cred |
| organizational_unit_identifier | [string](#string) |  | organizational_unit_identifier defines the organizational unit the default signer is in |
| role | [int32](#int32) |  | role defines whether the default signer is admin, peer, member or client |
| enrollment_id | [string](#string) |  | enrollment_id contains the enrollment id of this signer |
| credential_revocation_information | [bytes](#bytes) |  | credential_revocation_information contains a serialized CredentialRevocationInformation |






<a name="msp-KeyInfo"></a>

### KeyInfo
KeyInfo represents a (secret) key that is either already stored
in the bccsp/keystore or key material to be imported to the
bccsp key-store. In later versions it may contain also a
keystore identifier


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key_identifier | [string](#string) |  | Identifier of the key inside the default keystore; this for the case of Software BCCSP as well as the HSM BCCSP would be the SKI of the key |
| key_material | [bytes](#bytes) |  | KeyMaterial (optional) for the key to be imported; this is properly encoded key bytes, prefixed by the type of the key |






<a name="msp-MSPConfig"></a>

### MSPConfig
MSPConfig collects all the configuration information for
an MSP. The Config field should be unmarshalled in a way
that depends on the Type


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [int32](#int32) |  | Type holds the type of the MSP; the default one would be of type FABRIC implementing an X.509 based provider |
| config | [bytes](#bytes) |  | Config is MSP dependent configuration info |






<a name="msp-SigningIdentityInfo"></a>

### SigningIdentityInfo
SigningIdentityInfo represents the configuration information
related to the signing identity the peer is to use for generating
endorsements


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| public_signer | [bytes](#bytes) |  | PublicSigner carries the public information of the signing identity. For an X.509 provider this would be represented by an X.509 certificate |
| private_signer | [KeyInfo](#msp-KeyInfo) |  | PrivateSigner denotes a reference to the private key of the peer&#39;s signing identity |





 

 

 

 



<a name="peer_proposal_response-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/proposal_response.proto



<a name="protos-ChaincodeCall"></a>

### ChaincodeCall
ChaincodeCall defines a call to a chaincode.
It may have collections that are related to the chaincode


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| collection_names | [string](#string) | repeated |  |
| no_private_reads | [bool](#bool) |  | Indicates we do not need to read from private data |
| no_public_writes | [bool](#bool) |  | Indicates we do not need to write to the chaincode namespace |
| key_policies | [common.SignaturePolicyEnvelope](#common-SignaturePolicyEnvelope) | repeated | The set of signature policies associated with states in the write-set that have state-based endorsement policies. |
| disregard_namespace_policy | [bool](#bool) |  | Indicates we wish to ignore the namespace endorsement policy |






<a name="protos-ChaincodeInterest"></a>

### ChaincodeInterest
ChaincodeInterest defines an interest about an endorsement
for a specific single chaincode invocation.
Multiple chaincodes indicate chaincode to chaincode invocations.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincodes | [ChaincodeCall](#protos-ChaincodeCall) | repeated |  |






<a name="protos-Endorsement"></a>

### Endorsement
An endorsement is a signature of an endorser over a proposal response.  By
producing an endorsement message, an endorser implicitly &#34;approves&#34; that
proposal response and the actions contained therein. When enough
endorsements have been collected, a transaction can be generated out of a
set of proposal responses.  Note that this message only contains an identity
and a signature but no signed payload. This is intentional because
endorsements are supposed to be collected in a transaction, and they are all
expected to endorse a single proposal response/action (many endorsements
over a single proposal response)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endorser | [bytes](#bytes) |  | Identity of the endorser (e.g. its certificate) |
| signature | [bytes](#bytes) |  | Signature of the payload included in ProposalResponse concatenated with the endorser&#39;s certificate; ie, sign(ProposalResponse.payload &#43; endorser) |






<a name="protos-ProposalResponse"></a>

### ProposalResponse
A ProposalResponse is returned from an endorser to the proposal submitter.
The idea is that this message contains the endorser&#39;s response to the
request of a client to perform an action over a chaincode (or more
generically on the ledger); the response might be success/error (conveyed in
the Response field) together with a description of the action and a
signature over it by that endorser.  If a sufficient number of distinct
endorsers agree on the same action and produce signature to that effect, a
transaction can be generated and sent for ordering.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [int32](#int32) |  | Version indicates message protocol version |
| timestamp | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | Timestamp is the time that the message was created as defined by the sender |
| response | [Response](#protos-Response) |  | A response message indicating whether the endorsement of the action was successful |
| payload | [bytes](#bytes) |  | The payload of response. It is the bytes of ProposalResponsePayload |
| endorsement | [Endorsement](#protos-Endorsement) |  | The endorsement of the proposal, basically the endorser&#39;s signature over the payload |
| interest | [ChaincodeInterest](#protos-ChaincodeInterest) |  | The chaincode interest derived from simulating the proposal. |






<a name="protos-ProposalResponsePayload"></a>

### ProposalResponsePayload
ProposalResponsePayload is the payload of a proposal response.  This message
is the &#34;bridge&#34; between the client&#39;s request and the endorser&#39;s action in
response to that request. Concretely, for chaincodes, it contains a hashed
representation of the proposal (proposalHash) and a representation of the
chaincode state changes and events inside the extension field.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| proposal_hash | [bytes](#bytes) |  | Hash of the proposal that triggered this response. The hash is used to link a response with its proposal, both for bookeeping purposes on an asynchronous system and for security reasons (accountability, non-repudiation). The hash usually covers the entire Proposal message (byte-by-byte). |
| extension | [bytes](#bytes) |  | Extension should be unmarshaled to a type-specific message. The type of the extension in any proposal response depends on the type of the proposal that the client selected when the proposal was initially sent out. In particular, this information is stored in the type field of a Header. For chaincode, it&#39;s a ChaincodeAction message |






<a name="protos-Response"></a>

### Response
A response with a representation similar to an HTTP response that can
be used within another message.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [int32](#int32) |  | A status code that should follow the HTTP status codes. |
| message | [string](#string) |  | A message associated with the response code. |
| payload | [bytes](#bytes) |  | A payload that can be used to include metadata with this response. |





 

 

 

 



<a name="discovery_protocol-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## discovery/protocol.proto



<a name="discovery-AuthInfo"></a>

### AuthInfo
AuthInfo aggregates authentication information that the server uses
to authenticate the client


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| client_identity | [bytes](#bytes) |  | This is the identity of the client that is used to verify the signature on the SignedRequest&#39;s payload. It is a msp.SerializedIdentity in bytes form |
| client_tls_cert_hash | [bytes](#bytes) |  | This is the hash of the client&#39;s TLS cert. When the network is running with TLS, clients that don&#39;t include a certificate will be denied access to the service. Since the Request is encapsulated with a SignedRequest (which is signed), this binds the TLS session to the enrollement identity of the client and therefore both authenticates the client to the server, and also prevents the server from relaying the request message to another server. |






<a name="discovery-ChaincodeQuery"></a>

### ChaincodeQuery
ChaincodeQuery requests ChaincodeQueryResults for a given
list of chaincode invocations.
Each invocation is a separate one, and the endorsement policy
is evaluated independantly for each given interest.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| interests | [protos.ChaincodeInterest](#protos-ChaincodeInterest) | repeated |  |






<a name="discovery-ChaincodeQueryResult"></a>

### ChaincodeQueryResult
ChaincodeQueryResult contains EndorsementDescriptors for
chaincodes


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [EndorsementDescriptor](#discovery-EndorsementDescriptor) | repeated |  |






<a name="discovery-ConfigQuery"></a>

### ConfigQuery
ConfigQuery requests a ConfigResult






<a name="discovery-ConfigResult"></a>

### ConfigResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| msps | [ConfigResult.MspsEntry](#discovery-ConfigResult-MspsEntry) | repeated | msps is a map from MSP_ID to FabricMSPConfig |
| orderers | [ConfigResult.OrderersEntry](#discovery-ConfigResult-OrderersEntry) | repeated | orderers is a map from MSP_ID to endpoint lists of orderers |






<a name="discovery-ConfigResult-MspsEntry"></a>

### ConfigResult.MspsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [msp.FabricMSPConfig](#msp-FabricMSPConfig) |  |  |






<a name="discovery-ConfigResult-OrderersEntry"></a>

### ConfigResult.OrderersEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Endpoints](#discovery-Endpoints) |  |  |






<a name="discovery-EndorsementDescriptor"></a>

### EndorsementDescriptor
EndorsementDescriptor contains information about which peers can be used
to request endorsement from, such that the endorsement policy would be fulfilled.
Here is how to compute a set of peers to ask an endorsement from, given an EndorsementDescriptor:
Let e: G --&gt; P be the endorsers_by_groups field that maps a group to a set of peers.
Note that applying e on a group g yields a set of peers.
1) Select a layout l: G --&gt; N out of the layouts given.
   l is the quantities_by_group field of a Layout, and it maps a group to an integer.
2) R = {}  (an empty set of peers)
3) For each group g in the layout l, compute n = l(g)
   3.1) Denote P_g as a set of n random peers {p0, p1, ... p_n} selected from e(g)
   3.2) R = R U P_g  (add P_g to R)
4) The set of peers R is the peers the client needs to request endorsements from


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincode | [string](#string) |  |  |
| endorsers_by_groups | [EndorsementDescriptor.EndorsersByGroupsEntry](#discovery-EndorsementDescriptor-EndorsersByGroupsEntry) | repeated | Specifies the endorsers, separated to groups. |
| layouts | [Layout](#discovery-Layout) | repeated | Specifies options of fulfulling the endorsement policy. Each option lists the group names, and the amount of signatures needed from each group. |






<a name="discovery-EndorsementDescriptor-EndorsersByGroupsEntry"></a>

### EndorsementDescriptor.EndorsersByGroupsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Peers](#discovery-Peers) |  |  |






<a name="discovery-Endpoint"></a>

### Endpoint
Endpoint is a combination of a host and a port


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| host | [string](#string) |  |  |
| port | [uint32](#uint32) |  |  |






<a name="discovery-Endpoints"></a>

### Endpoints
Endpoints is a list of Endpoint(s)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint | [Endpoint](#discovery-Endpoint) | repeated |  |






<a name="discovery-Error"></a>

### Error
Error denotes that something went wrong and contains the error message


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [string](#string) |  |  |






<a name="discovery-Layout"></a>

### Layout
Layout contains a mapping from a group name to number of peers
that are needed for fulfilling an endorsement policy


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| quantities_by_group | [Layout.QuantitiesByGroupEntry](#discovery-Layout-QuantitiesByGroupEntry) | repeated | Specifies how many non repeated signatures of each group are needed for endorsement |






<a name="discovery-Layout-QuantitiesByGroupEntry"></a>

### Layout.QuantitiesByGroupEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [uint32](#uint32) |  |  |






<a name="discovery-LocalPeerQuery"></a>

### LocalPeerQuery
LocalPeerQuery queries for peers in a non channel context






<a name="discovery-Peer"></a>

### Peer
Peer contains information about the peer such as its channel specific
state, and membership information.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| state_info | [gossip.Envelope](#gossip-Envelope) |  | This is an Envelope of a GossipMessage with a gossip.StateInfo message |
| membership_info | [gossip.Envelope](#gossip-Envelope) |  | This is an Envelope of a GossipMessage with a gossip.AliveMessage message |
| identity | [bytes](#bytes) |  | This is the msp.SerializedIdentity of the peer, represented in bytes. |






<a name="discovery-PeerMembershipQuery"></a>

### PeerMembershipQuery
PeerMembershipQuery requests PeerMembershipResult.
The filter field may be optionally populated in order
for the peer membership to be filtered according to
chaincodes that are installed on peers and collection
access control policies.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [protos.ChaincodeInterest](#protos-ChaincodeInterest) |  |  |






<a name="discovery-PeerMembershipResult"></a>

### PeerMembershipResult
PeerMembershipResult contains peers mapped by their organizations (MSP_ID)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| peers_by_org | [PeerMembershipResult.PeersByOrgEntry](#discovery-PeerMembershipResult-PeersByOrgEntry) | repeated |  |






<a name="discovery-PeerMembershipResult-PeersByOrgEntry"></a>

### PeerMembershipResult.PeersByOrgEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [Peers](#discovery-Peers) |  |  |






<a name="discovery-Peers"></a>

### Peers
Peers contains a list of Peer(s)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| peers | [Peer](#discovery-Peer) | repeated |  |






<a name="discovery-Query"></a>

### Query
Query asks for information in the context of a specific channel


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| channel | [string](#string) |  |  |
| config_query | [ConfigQuery](#discovery-ConfigQuery) |  | ConfigQuery is used to query for the configuration of the channel, such as FabricMSPConfig, and rorderer endpoints. The client has to query a peer it trusts as it doesn&#39;t have means to self-verify the authenticity of the returned result. The result is returned in the form of ConfigResult. |
| peer_query | [PeerMembershipQuery](#discovery-PeerMembershipQuery) |  | PeerMembershipQuery queries for peers in a channel context, and returns PeerMembershipResult |
| cc_query | [ChaincodeQuery](#discovery-ChaincodeQuery) |  | ChaincodeQuery queries for chaincodes by their name and version. An empty version means any version can by returned. |
| local_peers | [LocalPeerQuery](#discovery-LocalPeerQuery) |  | LocalPeerQuery queries for peers in a non channel context, and returns PeerMembershipResult |






<a name="discovery-QueryResult"></a>

### QueryResult
QueryResult contains a result for a given Query.
The corresponding Query can be inferred by the index of the QueryResult from
its enclosing Response message.
QueryResults are ordered in the same order as the Queries are ordered in their enclosing Request.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| error | [Error](#discovery-Error) |  | Error indicates failure or refusal to process the query |
| config_result | [ConfigResult](#discovery-ConfigResult) |  | ConfigResult contains the configuration of the channel, such as FabricMSPConfig and orderer endpoints |
| cc_query_res | [ChaincodeQueryResult](#discovery-ChaincodeQueryResult) |  | ChaincodeQueryResult contains information about chaincodes, and their corresponding endorsers |
| members | [PeerMembershipResult](#discovery-PeerMembershipResult) |  | PeerMembershipResult contains information about peers, such as their identity, endpoints, and channel related state. |






<a name="discovery-Request"></a>

### Request
Request contains authentication info about the client that sent the request
and the queries it wishes to query the service


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| authentication | [AuthInfo](#discovery-AuthInfo) |  | authentication contains information that the service uses to check the client&#39;s eligibility for the queries. |
| queries | [Query](#discovery-Query) | repeated | queries |






<a name="discovery-Response"></a>

### Response



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| results | [QueryResult](#discovery-QueryResult) | repeated | The results are returned in the same order of the queries |






<a name="discovery-SignedRequest"></a>

### SignedRequest
SignedRequest contains a serialized Request in the payload field
and a signature.
The identity that is used to verify the signature
can be extracted from the authentication field of type AuthInfo
in the Request itself after deserializing it.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payload | [bytes](#bytes) |  |  |
| signature | [bytes](#bytes) |  |  |





 

 

 


<a name="discovery-Discovery"></a>

### Discovery
Discovery defines a service that serves information about the fabric network
like which peers, orderers, chaincodes, etc.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Discover | [SignedRequest](#discovery-SignedRequest) | [Response](#discovery-Response) | Discover receives a signed request, and returns a response. |

 



<a name="peer_chaincode_event-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/chaincode_event.proto



<a name="protos-ChaincodeEvent"></a>

### ChaincodeEvent
ChaincodeEvent is used for events and registrations that are specific to chaincode
string type - &#34;chaincode&#34;


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincode_id | [string](#string) |  |  |
| tx_id | [string](#string) |  |  |
| event_name | [string](#string) |  |  |
| payload | [bytes](#bytes) |  |  |





 

 

 

 



<a name="peer_chaincode-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/chaincode.proto



<a name="protos-CDSData"></a>

### CDSData
CDSData is data stored in the LSCC on instantiation of a CC
for CDSPackage.  This needs to be serialized for ChaincodeData
hence the protobuf format


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| hash | [bytes](#bytes) |  | hash of ChaincodeDeploymentSpec.code_package |
| metadatahash | [bytes](#bytes) |  | hash of ChaincodeID.name &#43; ChaincodeID.version |






<a name="protos-ChaincodeData"></a>

### ChaincodeData
ChaincodeData defines the datastructure for chaincodes to be serialized by proto
Type provides an additional check by directing to use a specific package after instantiation
Data is Type specific (see CDSPackage and SignedCDSPackage)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Name of the chaincode |
| version | [string](#string) |  | Version of the chaincode |
| escc | [string](#string) |  | Escc for the chaincode instance |
| vscc | [string](#string) |  | Vscc for the chaincode instance |
| policy | [common.SignaturePolicyEnvelope](#common-SignaturePolicyEnvelope) |  | Policy endorsement policy for the chaincode instance |
| data | [bytes](#bytes) |  | Data data specific to the package |
| id | [bytes](#bytes) |  | Id of the chaincode that&#39;s the unique fingerprint for the CC This is not currently used anywhere but serves as a good eyecatcher |
| instantiation_policy | [common.SignaturePolicyEnvelope](#common-SignaturePolicyEnvelope) |  | InstantiationPolicy for the chaincode |






<a name="protos-ChaincodeDeploymentSpec"></a>

### ChaincodeDeploymentSpec
Specify the deployment of a chaincode.
TODO: Define `codePackage`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincode_spec | [ChaincodeSpec](#protos-ChaincodeSpec) |  |  |
| code_package | [bytes](#bytes) |  |  |






<a name="protos-ChaincodeID"></a>

### ChaincodeID
ChaincodeID contains the path as specified by the deploy transaction
that created it as well as the hashCode that is generated by the
system for the path. From the user level (ie, CLI, REST API and so on)
deploy transaction is expected to provide the path and other requests
are expected to provide the hashCode. The other value will be ignored.
Internally, the structure could contain both values. For instance, the
hashCode will be set when first generated using the path


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| path | [string](#string) |  | deploy transaction will use the path |
| name | [string](#string) |  | all other requests will use the name (really a hashcode) generated by the deploy transaction |
| version | [string](#string) |  | user friendly version name for the chaincode |






<a name="protos-ChaincodeInput"></a>

### ChaincodeInput
Carries the chaincode function and its arguments.
UnmarshalJSON in transaction.go converts the string-based REST/JSON input to
the []byte-based current ChaincodeInput structure.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| args | [bytes](#bytes) | repeated |  |
| decorations | [ChaincodeInput.DecorationsEntry](#protos-ChaincodeInput-DecorationsEntry) | repeated |  |
| is_init | [bool](#bool) |  | is_init is used for the application to signal that an invocation is to be routed to the legacy &#39;Init&#39; function for compatibility with chaincodes which handled Init in the old way. New applications should manage their initialized state themselves. |






<a name="protos-ChaincodeInput-DecorationsEntry"></a>

### ChaincodeInput.DecorationsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [bytes](#bytes) |  |  |






<a name="protos-ChaincodeInvocationSpec"></a>

### ChaincodeInvocationSpec
Carries the chaincode function and its arguments.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincode_spec | [ChaincodeSpec](#protos-ChaincodeSpec) |  |  |






<a name="protos-ChaincodeSpec"></a>

### ChaincodeSpec
Carries the chaincode specification. This is the actual metadata required for
defining a chaincode.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [ChaincodeSpec.Type](#protos-ChaincodeSpec-Type) |  |  |
| chaincode_id | [ChaincodeID](#protos-ChaincodeID) |  |  |
| input | [ChaincodeInput](#protos-ChaincodeInput) |  |  |
| timeout | [int32](#int32) |  |  |






<a name="protos-LifecycleEvent"></a>

### LifecycleEvent
LifecycleEvent is used as the payload of the chaincode event emitted by LSCC


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincode_name | [string](#string) |  |  |





 


<a name="protos-ChaincodeSpec-Type"></a>

### ChaincodeSpec.Type


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNDEFINED | 0 |  |
| GOLANG | 1 |  |
| NODE | 2 |  |
| CAR | 3 |  |
| JAVA | 4 |  |


 

 

 



<a name="peer_proposal-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/proposal.proto



<a name="protos-ChaincodeAction"></a>

### ChaincodeAction
ChaincodeAction contains the executed chaincode results, response, and event.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| results | [bytes](#bytes) |  | This field contains the read set and the write set produced by the chaincode executing this invocation. |
| events | [bytes](#bytes) |  | This field contains the event generated by the chaincode. Only a single marshaled ChaincodeEvent is included. |
| response | [Response](#protos-Response) |  | This field contains the result of executing this invocation. |
| chaincode_id | [ChaincodeID](#protos-ChaincodeID) |  | This field contains the ChaincodeID of executing this invocation. Endorser will set it with the ChaincodeID called by endorser while simulating proposal. Committer will validate the version matching with latest chaincode version. Adding ChaincodeID to keep version opens up the possibility of multiple ChaincodeAction per transaction. |






<a name="protos-ChaincodeHeaderExtension"></a>

### ChaincodeHeaderExtension
ChaincodeHeaderExtension is the Header&#39;s extentions message to be used when
the Header&#39;s type is CHAINCODE.  This extensions is used to specify which
chaincode to invoke and what should appear on the ledger.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincode_id | [ChaincodeID](#protos-ChaincodeID) |  | The ID of the chaincode to target. |






<a name="protos-ChaincodeProposalPayload"></a>

### ChaincodeProposalPayload
ChaincodeProposalPayload is the Proposal&#39;s payload message to be used when
the Header&#39;s type is CHAINCODE.  It contains the arguments for this
invocation.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| input | [bytes](#bytes) |  | Input contains the arguments for this invocation. If this invocation deploys a new chaincode, ESCC/VSCC are part of this field. This is usually a marshaled ChaincodeInvocationSpec |
| TransientMap | [ChaincodeProposalPayload.TransientMapEntry](#protos-ChaincodeProposalPayload-TransientMapEntry) | repeated | TransientMap contains data (e.g. cryptographic material) that might be used to implement some form of application-level confidentiality. The contents of this field are supposed to always be omitted from the transaction and excluded from the ledger. |






<a name="protos-ChaincodeProposalPayload-TransientMapEntry"></a>

### ChaincodeProposalPayload.TransientMapEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [bytes](#bytes) |  |  |






<a name="protos-Proposal"></a>

### Proposal
A Proposal is sent to an endorser for endorsement.  The proposal contains:
1. A header which should be unmarshaled to a Header message.  Note that
   Header is both the header of a Proposal and of a Transaction, in that i)
   both headers should be unmarshaled to this message; and ii) it is used to
   compute cryptographic hashes and signatures.  The header has fields common
   to all proposals/transactions.  In addition it has a type field for
   additional customization. An example of this is the ChaincodeHeaderExtension
   message used to extend the Header for type CHAINCODE.
2. A payload whose type depends on the header&#39;s type field.
3. An extension whose type depends on the header&#39;s type field.

Let us see an example. For type CHAINCODE (see the Header message),
we have the following:
1. The header is a Header message whose extensions field is a
   ChaincodeHeaderExtension message.
2. The payload is a ChaincodeProposalPayload message.
3. The extension is a ChaincodeAction that might be used to ask the
   endorsers to endorse a specific ChaincodeAction, thus emulating the
   submitting peer model.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| header | [bytes](#bytes) |  | The header of the proposal. It is the bytes of the Header |
| payload | [bytes](#bytes) |  | The payload of the proposal as defined by the type in the proposal header. |
| extension | [bytes](#bytes) |  | Optional extensions to the proposal. Its content depends on the Header&#39;s type field. For the type CHAINCODE, it might be the bytes of a ChaincodeAction message. |






<a name="protos-SignedProposal"></a>

### SignedProposal
This structure is necessary to sign the proposal which contains the header
and the payload. Without this structure, we would have to concatenate the
header and the payload to verify the signature, which could be expensive
with large payload

When an endorser receives a SignedProposal message, it should verify the
signature over the proposal bytes. This verification requires the following
steps:
1. Verification of the validity of the certificate that was used to produce
   the signature.  The certificate will be available once proposalBytes has
   been unmarshalled to a Proposal message, and Proposal.header has been
   unmarshalled to a Header message. While this unmarshalling-before-verifying
   might not be ideal, it is unavoidable because i) the signature needs to also
   protect the signing certificate; ii) it is desirable that Header is created
   once by the client and never changed (for the sake of accountability and
   non-repudiation). Note also that it is actually impossible to conclusively
   verify the validity of the certificate included in a Proposal, because the
   proposal needs to first be endorsed and ordered with respect to certificate
   expiration transactions. Still, it is useful to pre-filter expired
   certificates at this stage.
2. Verification that the certificate is trusted (signed by a trusted CA) and
   that it is allowed to transact with us (with respect to some ACLs);
3. Verification that the signature on proposalBytes is valid;
4. Detect replay attacks;


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| proposal_bytes | [bytes](#bytes) |  | The bytes of Proposal |
| signature | [bytes](#bytes) |  | Signaure over proposalBytes; this signature is to be verified against the creator identity contained in the header of the Proposal message marshaled as proposalBytes |





 

 

 

 



<a name="peer_transaction-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/transaction.proto



<a name="protos-ChaincodeActionPayload"></a>

### ChaincodeActionPayload
ChaincodeActionPayload is the message to be used for the TransactionAction&#39;s
payload when the Header&#39;s type is set to CHAINCODE.  It carries the
chaincodeProposalPayload and an endorsed action to apply to the ledger.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincode_proposal_payload | [bytes](#bytes) |  | This field contains the bytes of the ChaincodeProposalPayload message from the original invocation (essentially the arguments) after the application of the visibility function. The main visibility modes are &#34;full&#34; (the entire ChaincodeProposalPayload message is included here), &#34;hash&#34; (only the hash of the ChaincodeProposalPayload message is included) or &#34;nothing&#34;. This field will be used to check the consistency of ProposalResponsePayload.proposalHash. For the CHAINCODE type, ProposalResponsePayload.proposalHash is supposed to be H(ProposalHeader || f(ChaincodeProposalPayload)) where f is the visibility function. |
| action | [ChaincodeEndorsedAction](#protos-ChaincodeEndorsedAction) |  | The list of actions to apply to the ledger |






<a name="protos-ChaincodeEndorsedAction"></a>

### ChaincodeEndorsedAction
ChaincodeEndorsedAction carries information about the endorsement of a
specific proposal


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| proposal_response_payload | [bytes](#bytes) |  | This is the bytes of the ProposalResponsePayload message signed by the endorsers. Recall that for the CHAINCODE type, the ProposalResponsePayload&#39;s extenstion field carries a ChaincodeAction |
| endorsements | [Endorsement](#protos-Endorsement) | repeated | The endorsement of the proposal, basically the endorser&#39;s signature over proposalResponsePayload |






<a name="protos-ProcessedTransaction"></a>

### ProcessedTransaction
ProcessedTransaction wraps an Envelope that includes a transaction along with an indication
of whether the transaction was validated or invalidated by committing peer.
The use case is that GetTransactionByID API needs to retrieve the transaction Envelope
from block storage, and return it to a client, and indicate whether the transaction
was validated or invalidated by committing peer. So that the originally submitted
transaction Envelope is not modified, the ProcessedTransaction wrapper is returned.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| transactionEnvelope | [common.Envelope](#common-Envelope) |  | An Envelope which includes a processed transaction |
| validationCode | [int32](#int32) |  | An indication of whether the transaction was validated or invalidated by committing peer |






<a name="protos-Transaction"></a>

### Transaction
The transaction to be sent to the ordering service. A transaction contains
one or more TransactionAction. Each TransactionAction binds a proposal to
potentially multiple actions. The transaction is atomic meaning that either
all actions in the transaction will be committed or none will.  Note that
while a Transaction might include more than one Header, the Header.creator
field must be the same in each.
A single client is free to issue a number of independent Proposal, each with
their header (Header) and request payload (ChaincodeProposalPayload).  Each
proposal is independently endorsed generating an action
(ProposalResponsePayload) with one signature per Endorser. Any number of
independent proposals (and their action) might be included in a transaction
to ensure that they are treated atomically.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| actions | [TransactionAction](#protos-TransactionAction) | repeated | The payload is an array of TransactionAction. An array is necessary to accommodate multiple actions per transaction |






<a name="protos-TransactionAction"></a>

### TransactionAction
TransactionAction binds a proposal to its action.  The type field in the
header dictates the type of action to be applied to the ledger.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| header | [bytes](#bytes) |  | The header of the proposal action, which is the proposal header |
| payload | [bytes](#bytes) |  | The payload of the action as defined by the type in the header For chaincode, it&#39;s the bytes of ChaincodeActionPayload |





 


<a name="protos-MetaDataKeys"></a>

### MetaDataKeys
Reserved entries in the key-level metadata map

| Name | Number | Description |
| ---- | ------ | ----------- |
| VALIDATION_PARAMETER | 0 |  |
| VALIDATION_PARAMETER_V2 | 1 |  |



<a name="protos-TxValidationCode"></a>

### TxValidationCode


| Name | Number | Description |
| ---- | ------ | ----------- |
| VALID | 0 |  |
| NIL_ENVELOPE | 1 |  |
| BAD_PAYLOAD | 2 |  |
| BAD_COMMON_HEADER | 3 |  |
| BAD_CREATOR_SIGNATURE | 4 |  |
| INVALID_ENDORSER_TRANSACTION | 5 |  |
| INVALID_CONFIG_TRANSACTION | 6 |  |
| UNSUPPORTED_TX_PAYLOAD | 7 |  |
| BAD_PROPOSAL_TXID | 8 |  |
| DUPLICATE_TXID | 9 |  |
| ENDORSEMENT_POLICY_FAILURE | 10 |  |
| MVCC_READ_CONFLICT | 11 |  |
| PHANTOM_READ_CONFLICT | 12 |  |
| UNKNOWN_TX_TYPE | 13 |  |
| TARGET_CHAIN_NOT_FOUND | 14 |  |
| MARSHAL_TX_ERROR | 15 |  |
| NIL_TXACTION | 16 |  |
| EXPIRED_CHAINCODE | 17 |  |
| CHAINCODE_VERSION_CONFLICT | 18 |  |
| BAD_HEADER_EXTENSION | 19 |  |
| BAD_CHANNEL_HEADER | 20 |  |
| BAD_RESPONSE_PAYLOAD | 21 |  |
| BAD_RWSET | 22 |  |
| ILLEGAL_WRITESET | 23 |  |
| INVALID_WRITESET | 24 |  |
| INVALID_CHAINCODE | 25 |  |
| NOT_VALIDATED | 254 |  |
| INVALID_OTHER_REASON | 255 |  |


 

 

 



<a name="orderer_ab-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## orderer/ab.proto



<a name="orderer-BroadcastResponse"></a>

### BroadcastResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [common.Status](#common-Status) |  | Status code, which may be used to programatically respond to success/failure |
| info | [string](#string) |  | Info string which may contain additional information about the status returned |






<a name="orderer-DeliverResponse"></a>

### DeliverResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [common.Status](#common-Status) |  |  |
| block | [common.Block](#common-Block) |  |  |






<a name="orderer-SeekInfo"></a>

### SeekInfo
SeekInfo specifies the range of requested blocks to return
If the start position is not found, an error is immediately returned
Otherwise, blocks are returned until a missing block is encountered, then behavior is dictated
by the SeekBehavior specified.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| start | [SeekPosition](#orderer-SeekPosition) |  | The position to start the deliver from |
| stop | [SeekPosition](#orderer-SeekPosition) |  | The position to stop the deliver |
| behavior | [SeekInfo.SeekBehavior](#orderer-SeekInfo-SeekBehavior) |  | The behavior when a missing block is encountered |
| error_response | [SeekInfo.SeekErrorResponse](#orderer-SeekInfo-SeekErrorResponse) |  | How to respond to errors reported to the deliver service |
| content_type | [SeekInfo.SeekContentType](#orderer-SeekInfo-SeekContentType) |  | Defines what type of content to deliver in response to a request |






<a name="orderer-SeekNewest"></a>

### SeekNewest







<a name="orderer-SeekNextCommit"></a>

### SeekNextCommit
SeekNextCommit refers to the next block that will be committed






<a name="orderer-SeekOldest"></a>

### SeekOldest







<a name="orderer-SeekPosition"></a>

### SeekPosition



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| newest | [SeekNewest](#orderer-SeekNewest) |  |  |
| oldest | [SeekOldest](#orderer-SeekOldest) |  |  |
| specified | [SeekSpecified](#orderer-SeekSpecified) |  |  |
| next_commit | [SeekNextCommit](#orderer-SeekNextCommit) |  |  |






<a name="orderer-SeekSpecified"></a>

### SeekSpecified



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| number | [uint64](#uint64) |  |  |





 


<a name="orderer-SeekInfo-SeekBehavior"></a>

### SeekInfo.SeekBehavior
If BLOCK_UNTIL_READY is specified, the reply will block until the requested blocks are available,
if FAIL_IF_NOT_READY is specified, the reply will return an error indicating that the block is not
found.  To request that all blocks be returned indefinitely as they are created, behavior should be
set to BLOCK_UNTIL_READY and the stop should be set to specified with a number of MAX_UINT64

| Name | Number | Description |
| ---- | ------ | ----------- |
| BLOCK_UNTIL_READY | 0 |  |
| FAIL_IF_NOT_READY | 1 |  |



<a name="orderer-SeekInfo-SeekContentType"></a>

### SeekInfo.SeekContentType
SeekContentType indicates what type of content to deliver in response to a request. If BLOCK is specified,
the orderer will stream blocks back to the peer. This is the default behavior. If HEADER_WITH_SIG is  specified, the
orderer will stream only a the header and the signature, and the payload field will be set to nil. This allows
the requester to ascertain that the respective signed block exists in the orderer (or cluster of orderers).

| Name | Number | Description |
| ---- | ------ | ----------- |
| BLOCK | 0 |  |
| HEADER_WITH_SIG | 1 |  |



<a name="orderer-SeekInfo-SeekErrorResponse"></a>

### SeekInfo.SeekErrorResponse
SeekErrorTolerance indicates to the server how block provider errors should be tolerated.  By default,
if the deliver service detects a problem in the underlying block source (typically, in the orderer,
a consenter error), it will begin to reject deliver requests.  This is to prevent a client from waiting
for blocks from an orderer which is stuck in an errored state.  This is almost always the desired behavior
and clients should stick with the default STRICT checking behavior.  However, in some scenarios, particularly
when attempting to recover from a crash or other corruption, it&#39;s desirable to force an orderer to respond
with blocks on a best effort basis, even if the backing consensus implementation is in an errored state.
In this case, set the SeekErrorResponse to BEST_EFFORT to ignore the consenter errors.

| Name | Number | Description |
| ---- | ------ | ----------- |
| STRICT | 0 |  |
| BEST_EFFORT | 1 |  |


 

 


<a name="orderer-AtomicBroadcast"></a>

### AtomicBroadcast


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Broadcast | [.common.Envelope](#common-Envelope) stream | [BroadcastResponse](#orderer-BroadcastResponse) stream | broadcast receives a reply of Acknowledgement for each common.Envelope in order, indicating success or type of failure |
| Deliver | [.common.Envelope](#common-Envelope) stream | [DeliverResponse](#orderer-DeliverResponse) stream | deliver first requires an Envelope of type DELIVER_SEEK_INFO with Payload data as a mashaled SeekInfo message, then a stream of block replies is received. |

 



<a name="gateway_gateway-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## gateway/gateway.proto



<a name="gateway-ChaincodeEventsRequest"></a>

### ChaincodeEventsRequest
ChaincodeEventsRequest contains details of the chaincode events that the caller wants to receive.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| channel_id | [string](#string) |  | Identifier of the channel this request is bound for. |
| chaincode_id | [string](#string) |  | Name of the chaincode for which events are requested. |
| identity | [bytes](#bytes) |  | Client requestor identity. |
| start_position | [orderer.SeekPosition](#orderer-SeekPosition) |  | Position within the ledger at which to start reading events. |
| after_transaction_id | [string](#string) |  | Only returns events after this transaction ID. Transactions up to and including this one should be ignored. This is used to allow resume of event listening from a certain position within a start block specified by start_position. |






<a name="gateway-ChaincodeEventsResponse"></a>

### ChaincodeEventsResponse
ChaincodeEventsResponse returns chaincode events emitted from a specific block.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| events | [protos.ChaincodeEvent](#protos-ChaincodeEvent) | repeated | Chaincode events emitted by the requested chaincode. The events are presented in the same order that the transactions that emitted them appear within the block. |
| block_number | [uint64](#uint64) |  | Block number in which the chaincode events were emitted. |






<a name="gateway-CommitStatusRequest"></a>

### CommitStatusRequest
CommitStatusRequest contains the details required to check whether a transaction has been
successfully committed.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| transaction_id | [string](#string) |  | Identifier of the transaction to check. |
| channel_id | [string](#string) |  | Identifier of the channel this request is bound for. |
| identity | [bytes](#bytes) |  | Client requestor identity. |






<a name="gateway-CommitStatusResponse"></a>

### CommitStatusResponse
CommitStatusResponse returns the result of committing a transaction.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [protos.TxValidationCode](#protos-TxValidationCode) |  | The result of the transaction commit, as defined in peer/transaction.proto. |
| block_number | [uint64](#uint64) |  | Block number that contains the transaction. |






<a name="gateway-EndorseRequest"></a>

### EndorseRequest
EndorseRequest contains the details required to obtain sufficient endorsements for a
transaction to be committed to the ledger.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| transaction_id | [string](#string) |  | The unique identifier for the transaction. |
| channel_id | [string](#string) |  | Identifier of the channel this request is bound for. |
| proposed_transaction | [protos.SignedProposal](#protos-SignedProposal) |  | The signed proposal ready for endorsement. |
| endorsing_organizations | [string](#string) | repeated | If targeting the peers of specific organizations (e.g. for private data scenarios), the list of organizations&#39; MSPIDs should be supplied here. |






<a name="gateway-EndorseResponse"></a>

### EndorseResponse
EndorseResponse returns the result of endorsing a transaction.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| prepared_transaction | [common.Envelope](#common-Envelope) |  | The unsigned set of transaction responses from the endorsing peers for signing by the client before submitting to ordering service (via gateway). |






<a name="gateway-ErrorDetail"></a>

### ErrorDetail
If any of the functions in the Gateway service returns an error, then it will be in the format of
a google.rpc.Status message. The &#39;details&#39; field of this message will be populated with extra
information if the error is a result of one or more failed requests to remote peers or orderer nodes.
ErrorDetail contains details of errors that are received by any of the endorsing peers
as a result of processing the Evaluate or Endorse services, or from the ordering node(s) as a result of
processing the Submit service.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [string](#string) |  | The address of the endorsing peer or ordering node that returned an error. |
| msp_id | [string](#string) |  | The MSP Identifier of this node. |
| message | [string](#string) |  | The error message returned by this node. |






<a name="gateway-EvaluateRequest"></a>

### EvaluateRequest
EvaluateRequest contains the details required to evaluate a transaction (query the ledger).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| transaction_id | [string](#string) |  | Identifier of the transaction to evaluate. |
| channel_id | [string](#string) |  | Identifier of the channel this request is bound for. |
| proposed_transaction | [protos.SignedProposal](#protos-SignedProposal) |  | The signed proposal ready for evaluation. |
| target_organizations | [string](#string) | repeated | If targeting the peers of specific organizations (e.g. for private data scenarios), the list of organizations&#39; MSPIDs should be supplied here. |






<a name="gateway-EvaluateResponse"></a>

### EvaluateResponse
EvaluateResponse returns the result of evaluating a transaction.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| result | [protos.Response](#protos-Response) |  | The response that is returned by the transaction function, as defined in peer/proposal_response.proto. |






<a name="gateway-PreparedTransaction"></a>

### PreparedTransaction
PreparedTransaction contains the details required for offline signing prior to submitting a transaction.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| transaction_id | [string](#string) |  | Identifier of the prepared transaction. |
| envelope | [common.Envelope](#common-Envelope) |  | The transaction envelope. |






<a name="gateway-ProposedTransaction"></a>

### ProposedTransaction
ProposedTransaction contains the details required for offline signing prior to evaluating or endorsing
a transaction.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| transaction_id | [string](#string) |  | Identifier of the proposed transaction. |
| proposal | [protos.SignedProposal](#protos-SignedProposal) |  | The signed proposal. |
| endorsing_organizations | [string](#string) | repeated | The list of endorsing organizations. |






<a name="gateway-SignedChaincodeEventsRequest"></a>

### SignedChaincodeEventsRequest
SignedChaincodeEventsRequest contains a serialized ChaincodeEventsRequest message, and a digital signature for the
serialized request message.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| request | [bytes](#bytes) |  | Serialized ChaincodeEventsRequest message. |
| signature | [bytes](#bytes) |  | Signature for request message. |






<a name="gateway-SignedCommitStatusRequest"></a>

### SignedCommitStatusRequest
SignedCommitStatusRequest contains a serialized CommitStatusRequest message, and a digital signature for the
serialized request message.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| request | [bytes](#bytes) |  | Serialized CommitStatusRequest message. |
| signature | [bytes](#bytes) |  | Signature for request message. |






<a name="gateway-SubmitRequest"></a>

### SubmitRequest
SubmitRequest contains the details required to submit a transaction (update the ledger).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| transaction_id | [string](#string) |  | Identifier of the transaction to submit. |
| channel_id | [string](#string) |  | Identifier of the channel this request is bound for. |
| prepared_transaction | [common.Envelope](#common-Envelope) |  | The signed set of endorsed transaction responses to submit. |






<a name="gateway-SubmitResponse"></a>

### SubmitResponse
SubmitResponse returns the result of submitting a transaction.

Nothing yet





 

 

 


<a name="gateway-Gateway"></a>

### Gateway
The Gateway API for evaluating and submitting transactions via the gateway.
Transaction evaluation (query) requires the invocation of the Evaluate service
Transaction submission (ledger updates) is a two step process invoking Endorse
followed by Submit. A third step, invoking CommitStatus, is required if the
clients wish to wait for a Transaction to be committed.
The proposal and transaction must be signed by the client before each step.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Endorse | [EndorseRequest](#gateway-EndorseRequest) | [EndorseResponse](#gateway-EndorseResponse) | The Endorse service passes a proposed transaction to the gateway in order to obtain sufficient endorsement. The gateway will determine the endorsement plan for the requested chaincode and forward to the appropriate peers for endorsement. It will return to the client a prepared transaction in the form of an Envelope message as defined in common/common.proto. The client must sign the contents of this envelope before invoking the Submit service. |
| Submit | [SubmitRequest](#gateway-SubmitRequest) | [SubmitResponse](#gateway-SubmitResponse) | The Submit service will process the prepared transaction returned from Endorse service once it has been signed by the client. It will wait for the transaction to be submitted to the ordering service but the client must invoke the CommitStatus service to wait for the transaction to be committed. |
| CommitStatus | [SignedCommitStatusRequest](#gateway-SignedCommitStatusRequest) | [CommitStatusResponse](#gateway-CommitStatusResponse) | The CommitStatus service will indicate whether a prepared transaction previously submitted to the Submit service has been committed. It will wait for the commit to occur if it hasn’t already committed. |
| Evaluate | [EvaluateRequest](#gateway-EvaluateRequest) | [EvaluateResponse](#gateway-EvaluateResponse) | The Evaluate service passes a proposed transaction to the gateway in order to invoke the transaction function and return the result to the client. No ledger updates are made. The gateway will select an appropriate peer to query based on block height and load. |
| ChaincodeEvents | [SignedChaincodeEventsRequest](#gateway-SignedChaincodeEventsRequest) | [ChaincodeEventsResponse](#gateway-ChaincodeEventsResponse) stream | The ChaincodeEvents service supplies a stream of responses, each containing all the events emitted by the requested chaincode for a specific block. The streamed responses are ordered by ascending block number. Responses are only returned for blocks that contain the requested events, while blocks not containing any of the requested events are skipped. |

 



<a name="google_rpc_status-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## google/rpc/status.proto



<a name="google-rpc-Status"></a>

### Status
The `Status` type defines a logical error model that is suitable for
different programming environments, including REST APIs and RPC APIs. It is
used by [gRPC](https://github.com/grpc). Each `Status` message contains
three pieces of data: error code, error message, and error details.

You can find out more about this error model and how to work with it in the
[API Design Guide](https://cloud.google.com/apis/design/errors).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| code | [int32](#int32) |  | The status code, which should be an enum value of [google.rpc.Code][google.rpc.Code]. |
| message | [string](#string) |  | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the [google.rpc.Status.details][google.rpc.Status.details] field, or localized by the client. |
| details | [google.protobuf.Any](#google-protobuf-Any) | repeated | A list of messages that carry the error details. There is a common set of message types for APIs to use. |





 

 

 

 



<a name="ledger_queryresult_kv_query_result-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ledger/queryresult/kv_query_result.proto



<a name="queryresult-KV"></a>

### KV
KV -- QueryResult for range/execute query. Holds a key and corresponding value.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| namespace | [string](#string) |  |  |
| key | [string](#string) |  |  |
| value | [bytes](#bytes) |  |  |






<a name="queryresult-KeyModification"></a>

### KeyModification
KeyModification -- QueryResult for history query. Holds a transaction ID, value,
timestamp, and delete marker which resulted from a history query.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tx_id | [string](#string) |  |  |
| value | [bytes](#bytes) |  |  |
| timestamp | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| is_delete | [bool](#bool) |  |  |





 

 

 

 



<a name="ledger_rwset_kvrwset_kv_rwset-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ledger/rwset/kvrwset/kv_rwset.proto



<a name="kvrwset-HashedRWSet"></a>

### HashedRWSet
HashedRWSet encapsulates hashed representation of a private read-write set for KV or Document data model


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| hashed_reads | [KVReadHash](#kvrwset-KVReadHash) | repeated |  |
| hashed_writes | [KVWriteHash](#kvrwset-KVWriteHash) | repeated |  |
| metadata_writes | [KVMetadataWriteHash](#kvrwset-KVMetadataWriteHash) | repeated |  |






<a name="kvrwset-KVMetadataEntry"></a>

### KVMetadataEntry
KVMetadataEntry captures a &#39;name&#39;ed entry in the metadata of a key/key-hash.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| value | [bytes](#bytes) |  |  |






<a name="kvrwset-KVMetadataWrite"></a>

### KVMetadataWrite
KVMetadataWrite captures all the entries in the metadata associated with a key


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| entries | [KVMetadataEntry](#kvrwset-KVMetadataEntry) | repeated |  |






<a name="kvrwset-KVMetadataWriteHash"></a>

### KVMetadataWriteHash
KVMetadataWriteHash captures all the upserts to the metadata associated with a key hash


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key_hash | [bytes](#bytes) |  |  |
| entries | [KVMetadataEntry](#kvrwset-KVMetadataEntry) | repeated |  |






<a name="kvrwset-KVRWSet"></a>

### KVRWSet
KVRWSet encapsulates the read-write set for a chaincode that operates upon a KV or Document data model
This structure is used for both the public data and the private data


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| reads | [KVRead](#kvrwset-KVRead) | repeated |  |
| range_queries_info | [RangeQueryInfo](#kvrwset-RangeQueryInfo) | repeated |  |
| writes | [KVWrite](#kvrwset-KVWrite) | repeated |  |
| metadata_writes | [KVMetadataWrite](#kvrwset-KVMetadataWrite) | repeated |  |






<a name="kvrwset-KVRead"></a>

### KVRead
KVRead captures a read operation performed during transaction simulation
A &#39;nil&#39; version indicates a non-existing key read by the transaction


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| version | [Version](#kvrwset-Version) |  |  |






<a name="kvrwset-KVReadHash"></a>

### KVReadHash
KVReadHash is similar to the KVRead in spirit. However, it captures the hash of the key instead of the key itself
version is kept as is for now. However, if the version also needs to be privacy-protected, it would need to be the
hash of the version and hence of &#39;bytes&#39; type


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key_hash | [bytes](#bytes) |  |  |
| version | [Version](#kvrwset-Version) |  |  |






<a name="kvrwset-KVWrite"></a>

### KVWrite
KVWrite captures a write (update/delete) operation performed during transaction simulation


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| is_delete | [bool](#bool) |  |  |
| value | [bytes](#bytes) |  |  |






<a name="kvrwset-KVWriteHash"></a>

### KVWriteHash
KVWriteHash is similar to the KVWrite. It captures a write (update/delete) operation performed during transaction simulation


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key_hash | [bytes](#bytes) |  |  |
| is_delete | [bool](#bool) |  |  |
| value_hash | [bytes](#bytes) |  |  |
| is_purge | [bool](#bool) |  |  |






<a name="kvrwset-QueryReads"></a>

### QueryReads
QueryReads encapsulates the KVReads for the items read by a transaction as a result of a query execution


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| kv_reads | [KVRead](#kvrwset-KVRead) | repeated |  |






<a name="kvrwset-QueryReadsMerkleSummary"></a>

### QueryReadsMerkleSummary
QueryReadsMerkleSummary encapsulates the Merkle-tree hashes for the QueryReads
This allows to reduce the size of RWSet in the presence of query results
by storing certain hashes instead of actual results.
maxDegree field refers to the maximum number of children in the tree at any level
maxLevel field contains the lowest level which has lesser nodes than maxDegree (starting from leaf level)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| max_degree | [uint32](#uint32) |  |  |
| max_level | [uint32](#uint32) |  |  |
| max_level_hashes | [bytes](#bytes) | repeated |  |






<a name="kvrwset-RangeQueryInfo"></a>

### RangeQueryInfo
RangeQueryInfo encapsulates the details of a range query performed by a transaction during simulation.
This helps protect transactions from phantom reads by varifying during validation whether any new items
got committed within the given range between transaction simuation and validation
(in addition to regular checks for updates/deletes of the existing items).
readInfo field contains either the KVReads (for the items read by the range query) or a merkle-tree hash
if the KVReads exceeds a pre-configured numbers


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| start_key | [string](#string) |  |  |
| end_key | [string](#string) |  |  |
| itr_exhausted | [bool](#bool) |  |  |
| raw_reads | [QueryReads](#kvrwset-QueryReads) |  |  |
| reads_merkle_hashes | [QueryReadsMerkleSummary](#kvrwset-QueryReadsMerkleSummary) |  |  |






<a name="kvrwset-Version"></a>

### Version
Version encapsulates the version of a Key
A version of a committed key is maintained as the height of the transaction that committed the key.
The height is represenetd as a tuple &lt;blockNum, txNum&gt; where the txNum is the position of the transaction
(starting with 0) within block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block_num | [uint64](#uint64) |  |  |
| tx_num | [uint64](#uint64) |  |  |





 

 

 

 



<a name="ledger_rwset_rwset-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## ledger/rwset/rwset.proto



<a name="rwset-CollectionHashedReadWriteSet"></a>

### CollectionHashedReadWriteSet
CollectionHashedReadWriteSet encapsulate the hashed representation for the private read-write set for a collection


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| collection_name | [string](#string) |  |  |
| hashed_rwset | [bytes](#bytes) |  | Data model specific serialized proto message (e.g., kvrwset.HashedRWSet for KV and Document data models) |
| pvt_rwset_hash | [bytes](#bytes) |  | Hash of entire private read-write set for a specific collection. This helps in authenticating the private read-write set efficiently |






<a name="rwset-CollectionPvtReadWriteSet"></a>

### CollectionPvtReadWriteSet
CollectionPvtReadWriteSet encapsulates the private read-write set for a collection


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| collection_name | [string](#string) |  |  |
| rwset | [bytes](#bytes) |  | Data model specific serialized proto message (e.g., kvrwset.KVRWSet for KV and Document data models) |






<a name="rwset-NsPvtReadWriteSet"></a>

### NsPvtReadWriteSet
NsPvtReadWriteSet encapsulates the private read-write set for a chaincode


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| namespace | [string](#string) |  |  |
| collection_pvt_rwset | [CollectionPvtReadWriteSet](#rwset-CollectionPvtReadWriteSet) | repeated |  |






<a name="rwset-NsReadWriteSet"></a>

### NsReadWriteSet
NsReadWriteSet encapsulates the read-write set for a chaincode


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| namespace | [string](#string) |  |  |
| rwset | [bytes](#bytes) |  | Data model specific serialized proto message (e.g., kvrwset.KVRWSet for KV and Document data models) |
| collection_hashed_rwset | [CollectionHashedReadWriteSet](#rwset-CollectionHashedReadWriteSet) | repeated |  |






<a name="rwset-TxPvtReadWriteSet"></a>

### TxPvtReadWriteSet
TxPvtReadWriteSet encapsulate the private read-write set for a transaction


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data_model | [TxReadWriteSet.DataModel](#rwset-TxReadWriteSet-DataModel) |  |  |
| ns_pvt_rwset | [NsPvtReadWriteSet](#rwset-NsPvtReadWriteSet) | repeated |  |






<a name="rwset-TxReadWriteSet"></a>

### TxReadWriteSet
TxReadWriteSet encapsulates a read-write set for a transaction
DataModel specifies the enum value of the data model
ns_rwset field specifies a list of chaincode specific read-write set (one for each chaincode)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data_model | [TxReadWriteSet.DataModel](#rwset-TxReadWriteSet-DataModel) |  |  |
| ns_rwset | [NsReadWriteSet](#rwset-NsReadWriteSet) | repeated |  |





 


<a name="rwset-TxReadWriteSet-DataModel"></a>

### TxReadWriteSet.DataModel


| Name | Number | Description |
| ---- | ------ | ----------- |
| KV | 0 |  |


 

 

 



<a name="msp_identities-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## msp/identities.proto



<a name="msp-SerializedIdemixIdentity"></a>

### SerializedIdemixIdentity
This struct represents an Idemix Identity
to be used to serialize it and deserialize it.
The IdemixMSP will first serialize an idemix identity to bytes using
this proto, and then uses these bytes as id_bytes in SerializedIdentity


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| nym_x | [bytes](#bytes) |  | nym_x is the X-component of the pseudonym elliptic curve point. It is a []byte representation of an amcl.BIG The pseudonym can be seen as a public key of the identity, it is used to verify signatures. |
| nym_y | [bytes](#bytes) |  | nym_y is the Y-component of the pseudonym elliptic curve point. It is a []byte representation of an amcl.BIG The pseudonym can be seen as a public key of the identity, it is used to verify signatures. |
| ou | [bytes](#bytes) |  | ou contains the organizational unit of the idemix identity |
| role | [bytes](#bytes) |  | role contains the role of this identity (e.g., ADMIN or MEMBER) |
| proof | [bytes](#bytes) |  | proof contains the cryptographic evidence that this identity is valid |






<a name="msp-SerializedIdentity"></a>

### SerializedIdentity
This struct represents an Identity
(with its MSP identifier) to be used
to serialize it and deserialize it


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| mspid | [string](#string) |  | The identifier of the associated membership service provider |
| id_bytes | [bytes](#bytes) |  | the Identity, serialized according to the rules of its MPS |





 

 

 

 



<a name="orderer_blockattestation-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## orderer/blockattestation.proto



<a name="orderer-BlockAttestation"></a>

### BlockAttestation



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| header | [common.BlockHeader](#common-BlockHeader) |  |  |
| metadata | [common.BlockMetadata](#common-BlockMetadata) |  |  |






<a name="orderer-BlockAttestationResponse"></a>

### BlockAttestationResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [common.Status](#common-Status) |  |  |
| block_attestation | [BlockAttestation](#orderer-BlockAttestation) |  |  |





 

 

 


<a name="orderer-BlockAttestations"></a>

### BlockAttestations


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| BlockAttestations | [.common.Envelope](#common-Envelope) | [BlockAttestationResponse](#orderer-BlockAttestationResponse) stream | BlockAttestations receives an Envelope of type DELIVER_SEEK_INFO , then sends back a stream of BlockAttestations. |

 



<a name="orderer_cluster-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## orderer/cluster.proto



<a name="orderer-ConsensusRequest"></a>

### ConsensusRequest
ConsensusRequest is a consensus specific message sent to a cluster member.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| channel | [string](#string) |  |  |
| payload | [bytes](#bytes) |  |  |
| metadata | [bytes](#bytes) |  |  |






<a name="orderer-StepRequest"></a>

### StepRequest
StepRequest wraps a message that is sent to a cluster member.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| consensus_request | [ConsensusRequest](#orderer-ConsensusRequest) |  | consensus_request is a consensus specific message. |
| submit_request | [SubmitRequest](#orderer-SubmitRequest) |  | submit_request is a relay of a transaction. |






<a name="orderer-StepResponse"></a>

### StepResponse
StepResponse is a message received from a cluster member.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| submit_res | [SubmitResponse](#orderer-SubmitResponse) |  |  |






<a name="orderer-SubmitRequest"></a>

### SubmitRequest
SubmitRequest wraps a transaction to be sent for ordering.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| channel | [string](#string) |  |  |
| last_validation_seq | [uint64](#uint64) |  | last_validation_seq denotes the last configuration sequence at which the sender validated this message. |
| payload | [common.Envelope](#common-Envelope) |  | content is the fabric transaction that is forwarded to the cluster member. |






<a name="orderer-SubmitResponse"></a>

### SubmitResponse
SubmitResponse returns a success
or failure status to the sender.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| channel | [string](#string) |  |  |
| status | [common.Status](#common-Status) |  | Status code, which may be used to programatically respond to success/failure. |
| info | [string](#string) |  | Info string which may contain additional information about the returned status. |





 

 

 


<a name="orderer-Cluster"></a>

### Cluster
Cluster defines communication between cluster members.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Step | [StepRequest](#orderer-StepRequest) stream | [StepResponse](#orderer-StepResponse) stream | Step passes an implementation-specific message to another cluster member. |

 



<a name="orderer_clusterserver-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## orderer/clusterserver.proto



<a name="orderer-ClusterNodeServiceStepRequest"></a>

### ClusterNodeServiceStepRequest
ClusterNodeServiceStepRequest wraps a message that is sent to a cluster member.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| node_conrequest | [NodeConsensusRequest](#orderer-NodeConsensusRequest) |  | node_conrequest is a consensus specific message between the cluster memebers. |
| node_tranrequest | [NodeTransactionOrderRequest](#orderer-NodeTransactionOrderRequest) |  | node_tranrequest is a relay of a transaction. |
| node_authrequest | [NodeAuthRequest](#orderer-NodeAuthRequest) |  | Auth authentiates the member that initiated the stream |






<a name="orderer-ClusterNodeServiceStepResponse"></a>

### ClusterNodeServiceStepResponse
ClusterNodeServiceStepResponse is a message received from a cluster member.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tranorder_res | [TransactionOrderResponse](#orderer-TransactionOrderResponse) |  |  |






<a name="orderer-NodeAuthRequest"></a>

### NodeAuthRequest
NodeAuthRequest for authenticate the stream 
between the cluster members


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [uint32](#uint32) |  | version represents the fields on which the signature is computed |
| signature | [bytes](#bytes) |  | signature is verifiable using the initiator&#39;s public key |
| timestamp | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | timestamp indicates the freshness of the request; expected to be within the margin of the responsder&#39;s local time |
| from_id | [uint64](#uint64) |  | from_id is the numerical identifier of the initiator of the connection |
| to_id | [uint64](#uint64) |  | to_id is the numerical identifier of the node that is being connected to |
| session_binding | [bytes](#bytes) |  | session_binding is verifiable using application level protocol |
| channel | [string](#string) |  |  |






<a name="orderer-NodeConsensusRequest"></a>

### NodeConsensusRequest
NodeConsensusRequest is a consensus specific message sent to a cluster member.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| payload | [bytes](#bytes) |  |  |
| metadata | [bytes](#bytes) |  |  |






<a name="orderer-NodeTransactionOrderRequest"></a>

### NodeTransactionOrderRequest
NodeTransactionOrderRequest wraps a transaction to be sent for ordering.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| last_validation_seq | [uint64](#uint64) |  | last_validation_seq denotes the last configuration sequence at which the sender validated this message. |
| payload | [common.Envelope](#common-Envelope) |  | content is the fabric transaction that is forwarded to the cluster member. |






<a name="orderer-TransactionOrderResponse"></a>

### TransactionOrderResponse
TransactionOrderResponse returns a success
or failure status to the sender.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| channel | [string](#string) |  |  |
| tx_id | [string](#string) |  |  |
| status | [common.Status](#common-Status) |  | Status code, which may be used to programatically respond to success/failure. |
| info | [string](#string) |  | Info string which may contain additional information about the returned status. |





 

 

 


<a name="orderer-ClusterNodeService"></a>

### ClusterNodeService
Service ClusterNodeService defines communication between cluster members.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Step | [ClusterNodeServiceStepRequest](#orderer-ClusterNodeServiceStepRequest) stream | [ClusterNodeServiceStepResponse](#orderer-ClusterNodeServiceStepResponse) stream | Step passes an implementation-specific message to another cluster member. |

 



<a name="orderer_configuration-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## orderer/configuration.proto



<a name="orderer-BatchSize"></a>

### BatchSize



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| max_message_count | [uint32](#uint32) |  | Simply specified as number of messages for now, in the future we may want to allow this to be specified by size in bytes |
| absolute_max_bytes | [uint32](#uint32) |  | The byte count of the serialized messages in a batch cannot exceed this value. |
| preferred_max_bytes | [uint32](#uint32) |  | The byte count of the serialized messages in a batch should not exceed this value. |






<a name="orderer-BatchTimeout"></a>

### BatchTimeout



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| timeout | [string](#string) |  | Any duration string parseable by ParseDuration(): https://golang.org/pkg/time/#ParseDuration |






<a name="orderer-ChannelRestrictions"></a>

### ChannelRestrictions
ChannelRestrictions is the mssage which conveys restrictions on channel creation for an orderer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| max_count | [uint64](#uint64) |  | The max count of channels to allow to be created, a value of 0 indicates no limit |






<a name="orderer-ConsensusType"></a>

### ConsensusType



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [string](#string) |  | The consensus type: &#34;solo&#34; or &#34;etcdraft&#34;. |
| metadata | [bytes](#bytes) |  | Opaque metadata, dependent on the consensus type. |
| state | [ConsensusType.State](#orderer-ConsensusType-State) |  | The state signals the ordering service to go into maintenance mode, typically for consensus-type migration. |






<a name="orderer-KafkaBrokers"></a>

### KafkaBrokers
Carries a list of bootstrap brokers, i.e. this is not the exclusive set of
brokers an ordering service


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| brokers | [string](#string) | repeated | Each broker here should be identified using the (IP|host):port notation, e.g. 127.0.0.1:7050, or localhost:7050 are valid entries |





 


<a name="orderer-ConsensusType-State"></a>

### ConsensusType.State
State defines the orderer mode of operation, typically for consensus-type migration.
NORMAL is during normal operation, when consensus-type migration is not, and can not, take place.
MAINTENANCE is when the consensus-type can be changed.

| Name | Number | Description |
| ---- | ------ | ----------- |
| STATE_NORMAL | 0 |  |
| STATE_MAINTENANCE | 1 |  |


 

 

 



<a name="orderer_etcdraft_configuration-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## orderer/etcdraft/configuration.proto



<a name="etcdraft-ConfigMetadata"></a>

### ConfigMetadata
ConfigMetadata is serialized and set as the value of ConsensusType.Metadata in
a channel configuration when the ConsensusType.Type is set &#34;etcdraft&#34;.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| consenters | [Consenter](#etcdraft-Consenter) | repeated |  |
| options | [Options](#etcdraft-Options) |  |  |






<a name="etcdraft-Consenter"></a>

### Consenter
Consenter represents a consenting node (i.e. replica).


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| host | [string](#string) |  |  |
| port | [uint32](#uint32) |  |  |
| client_tls_cert | [bytes](#bytes) |  |  |
| server_tls_cert | [bytes](#bytes) |  |  |






<a name="etcdraft-Options"></a>

### Options
Options to be specified for all the etcd/raft nodes. These can be modified on a
per-channel basis.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tick_interval | [string](#string) |  | time duration format, e.g. 500ms |
| election_tick | [uint32](#uint32) |  |  |
| heartbeat_tick | [uint32](#uint32) |  |  |
| max_inflight_blocks | [uint32](#uint32) |  |  |
| snapshot_interval_size | [uint32](#uint32) |  | Take snapshot when cumulative data exceeds certain size in bytes. |





 

 

 

 



<a name="orderer_etcdraft_metadata-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## orderer/etcdraft/metadata.proto



<a name="etcdraft-BlockMetadata"></a>

### BlockMetadata
BlockMetadata stores data used by the Raft OSNs when
coordinating with each other, to be serialized into
block meta dta field and used after failres and restarts.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| consenter_ids | [uint64](#uint64) | repeated | Maintains a mapping between the cluster&#39;s OSNs and their Raft IDs. |
| next_consenter_id | [uint64](#uint64) |  | Carries the Raft ID value that will be assigned to the next OSN that will join this cluster. |
| raft_index | [uint64](#uint64) |  | Index of etcd/raft entry for current block. |






<a name="etcdraft-ClusterMetadata"></a>

### ClusterMetadata
ClusterMetadata encapsulates metadata that is exchanged among cluster nodes


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| active_nodes | [uint64](#uint64) | repeated | Indicates active nodes in cluster that are reacheable by Raft leader |





 

 

 

 



<a name="orderer_smartbft_configuration-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## orderer/smartbft/configuration.proto



<a name="orderer-smartbft-Options"></a>

### Options
Options to be specified for all the smartbft nodes. These can be modified on a
per-channel basis.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| request_batch_max_count | [uint64](#uint64) |  |  |
| request_batch_max_bytes | [uint64](#uint64) |  |  |
| request_batch_max_interval | [string](#string) |  |  |
| incoming_message_buffer_size | [uint64](#uint64) |  |  |
| request_pool_size | [uint64](#uint64) |  |  |
| request_forward_timeout | [string](#string) |  |  |
| request_complain_timeout | [string](#string) |  |  |
| request_auto_remove_timeout | [string](#string) |  |  |
| request_max_bytes | [uint64](#uint64) |  |  |
| view_change_resend_interval | [string](#string) |  |  |
| view_change_timeout | [string](#string) |  |  |
| leader_heartbeat_timeout | [string](#string) |  |  |
| leader_heartbeat_count | [uint64](#uint64) |  |  |
| collect_timeout | [string](#string) |  |  |
| sync_on_start | [bool](#bool) |  |  |
| speed_up_view_change | [bool](#bool) |  |  |
| leader_rotation | [Options.Rotation](#orderer-smartbft-Options-Rotation) |  |  |
| decisions_per_leader | [uint64](#uint64) |  |  |





 


<a name="orderer-smartbft-Options-Rotation"></a>

### Options.Rotation


| Name | Number | Description |
| ---- | ------ | ----------- |
| ROTATION_UNSPECIFIED | 0 |  |
| ROTATION_OFF | 1 |  |
| ROTATION_ON | 2 |  |


 

 

 



<a name="peer_chaincode_shim-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/chaincode_shim.proto



<a name="protos-ChaincodeMessage"></a>

### ChaincodeMessage



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| type | [ChaincodeMessage.Type](#protos-ChaincodeMessage-Type) |  |  |
| timestamp | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| payload | [bytes](#bytes) |  |  |
| txid | [string](#string) |  |  |
| proposal | [SignedProposal](#protos-SignedProposal) |  |  |
| chaincode_event | [ChaincodeEvent](#protos-ChaincodeEvent) |  | event emitted by chaincode. Used only with Init or Invoke. This event is then stored (currently) with Block.NonHashData.TransactionResult |
| channel_id | [string](#string) |  | channel id |






<a name="protos-DelState"></a>

### DelState
DelState is the payload of a ChaincodeMessage. It contains a key which
needs to be recorded in the transaction&#39;s write set as a delete operation.
If the collection is specified, the key needs to be recorded in the
transaction&#39;s private write set as a delete operation.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| collection | [string](#string) |  |  |






<a name="protos-GetHistoryForKey"></a>

### GetHistoryForKey
GetHistoryForKey is the payload of a ChaincodeMessage. It contains a key
for which the historical values need to be retrieved.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |






<a name="protos-GetQueryResult"></a>

### GetQueryResult
GetQueryResult is the payload of a ChaincodeMessage. It contains a query
string in the form that is supported by the underlying state database.
If the collection is specified, the query needs to be executed on the
private data.  The metadata hold the byte representation of QueryMetadata.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| query | [string](#string) |  |  |
| collection | [string](#string) |  |  |
| metadata | [bytes](#bytes) |  |  |






<a name="protos-GetState"></a>

### GetState
GetState is the payload of a ChaincodeMessage. It contains a key which
is to be fetched from the ledger. If the collection is specified, the key
would be fetched from the collection (i.e., private state)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| collection | [string](#string) |  |  |






<a name="protos-GetStateByRange"></a>

### GetStateByRange
GetStateByRange is the payload of a ChaincodeMessage. It contains a start key and
a end key required to execute range query. If the collection is specified,
the range query needs to be executed on the private data. The metadata hold
the byte representation of QueryMetadata.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| startKey | [string](#string) |  |  |
| endKey | [string](#string) |  |  |
| collection | [string](#string) |  |  |
| metadata | [bytes](#bytes) |  |  |






<a name="protos-GetStateMetadata"></a>

### GetStateMetadata



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| collection | [string](#string) |  |  |






<a name="protos-PurgePrivateState"></a>

### PurgePrivateState



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| collection | [string](#string) |  |  |






<a name="protos-PutState"></a>

### PutState
PutState is the payload of a ChaincodeMessage. It contains a key and value
which needs to be written to the transaction&#39;s write set. If the collection is
specified, the key and value would be written to the transaction&#39;s private
write set.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [bytes](#bytes) |  |  |
| collection | [string](#string) |  |  |






<a name="protos-PutStateMetadata"></a>

### PutStateMetadata



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| collection | [string](#string) |  |  |
| metadata | [StateMetadata](#protos-StateMetadata) |  |  |






<a name="protos-QueryMetadata"></a>

### QueryMetadata
QueryMetadata is the metadata of a GetStateByRange and GetQueryResult.
It contains a pageSize which denotes the number of records to be fetched
and a bookmark.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| pageSize | [int32](#int32) |  |  |
| bookmark | [string](#string) |  |  |






<a name="protos-QueryResponse"></a>

### QueryResponse
QueryResponse is returned by the peer as a result of a GetStateByRange,
GetQueryResult, and GetHistoryForKey. It holds a bunch of records in
results field, a flag to denote whether more results need to be fetched from
the peer in has_more field, transaction id in id field, and a QueryResponseMetadata
in metadata field.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| results | [QueryResultBytes](#protos-QueryResultBytes) | repeated |  |
| has_more | [bool](#bool) |  |  |
| id | [string](#string) |  |  |
| metadata | [bytes](#bytes) |  |  |






<a name="protos-QueryResponseMetadata"></a>

### QueryResponseMetadata
QueryResponseMetadata is the metadata of a QueryResponse. It contains a count
which denotes the number of records fetched from the ledger and a bookmark.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| fetched_records_count | [int32](#int32) |  |  |
| bookmark | [string](#string) |  |  |






<a name="protos-QueryResultBytes"></a>

### QueryResultBytes
QueryResultBytes hold the byte representation of a record returned by the peer.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| resultBytes | [bytes](#bytes) |  |  |






<a name="protos-QueryStateClose"></a>

### QueryStateClose



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="protos-QueryStateNext"></a>

### QueryStateNext



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="protos-StateMetadata"></a>

### StateMetadata



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metakey | [string](#string) |  |  |
| value | [bytes](#bytes) |  |  |






<a name="protos-StateMetadataResult"></a>

### StateMetadataResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| entries | [StateMetadata](#protos-StateMetadata) | repeated |  |





 


<a name="protos-ChaincodeMessage-Type"></a>

### ChaincodeMessage.Type


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNDEFINED | 0 |  |
| REGISTER | 1 |  |
| REGISTERED | 2 |  |
| INIT | 3 |  |
| READY | 4 |  |
| TRANSACTION | 5 |  |
| COMPLETED | 6 |  |
| ERROR | 7 |  |
| GET_STATE | 8 |  |
| PUT_STATE | 9 |  |
| DEL_STATE | 10 |  |
| INVOKE_CHAINCODE | 11 |  |
| RESPONSE | 13 |  |
| GET_STATE_BY_RANGE | 14 |  |
| GET_QUERY_RESULT | 15 |  |
| QUERY_STATE_NEXT | 16 |  |
| QUERY_STATE_CLOSE | 17 |  |
| KEEPALIVE | 18 |  |
| GET_HISTORY_FOR_KEY | 19 |  |
| GET_STATE_METADATA | 20 |  |
| PUT_STATE_METADATA | 21 |  |
| GET_PRIVATE_DATA_HASH | 22 |  |
| PURGE_PRIVATE_DATA | 23 |  |


 

 


<a name="protos-Chaincode"></a>

### Chaincode
Chaincode as a server - peer establishes a connection to the chaincode as a client
Currently only supports a stream connection.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Connect | [ChaincodeMessage](#protos-ChaincodeMessage) stream | [ChaincodeMessage](#protos-ChaincodeMessage) stream |  |


<a name="protos-ChaincodeSupport"></a>

### ChaincodeSupport
Interface that provides support to chaincode execution. ChaincodeContext
provides the context necessary for the server to respond appropriately.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Register | [ChaincodeMessage](#protos-ChaincodeMessage) stream | [ChaincodeMessage](#protos-ChaincodeMessage) stream |  |

 



<a name="peer_configuration-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/configuration.proto



<a name="protos-ACLs"></a>

### ACLs
ACLs provides mappings for resources in a channel. APIResource encapsulates
reference to a policy used to determine ACL for the resource


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| acls | [ACLs.AclsEntry](#protos-ACLs-AclsEntry) | repeated |  |






<a name="protos-ACLs-AclsEntry"></a>

### ACLs.AclsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [APIResource](#protos-APIResource) |  |  |






<a name="protos-APIResource"></a>

### APIResource
APIResource represents an API resource in the peer whose ACL
is determined by the policy_ref field


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| policy_ref | [string](#string) |  | The policy name to use for this API |






<a name="protos-AnchorPeer"></a>

### AnchorPeer
AnchorPeer message structure which provides information about anchor peer, it includes host name,
port number and peer certificate.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| host | [string](#string) |  | DNS host name of the anchor peer |
| port | [int32](#int32) |  | The port number |






<a name="protos-AnchorPeers"></a>

### AnchorPeers
AnchorPeers simply represents list of anchor peers which is used in ConfigurationItem


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| anchor_peers | [AnchorPeer](#protos-AnchorPeer) | repeated |  |





 

 

 

 



<a name="peer_events-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/events.proto



<a name="protos-BlockAndPrivateData"></a>

### BlockAndPrivateData
BlockAndPrivateData contains Block and a map from tx_seq_in_block to rwset.TxPvtReadWriteSet


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block | [common.Block](#common-Block) |  |  |
| private_data_map | [BlockAndPrivateData.PrivateDataMapEntry](#protos-BlockAndPrivateData-PrivateDataMapEntry) | repeated | map from tx_seq_in_block to rwset.TxPvtReadWriteSet |






<a name="protos-BlockAndPrivateData-PrivateDataMapEntry"></a>

### BlockAndPrivateData.PrivateDataMapEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [uint64](#uint64) |  |  |
| value | [rwset.TxPvtReadWriteSet](#rwset-TxPvtReadWriteSet) |  |  |






<a name="protos-DeliverResponse"></a>

### DeliverResponse
DeliverResponse


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [common.Status](#common-Status) |  |  |
| block | [common.Block](#common-Block) |  |  |
| filtered_block | [FilteredBlock](#protos-FilteredBlock) |  |  |
| block_and_private_data | [BlockAndPrivateData](#protos-BlockAndPrivateData) |  |  |






<a name="protos-FilteredBlock"></a>

### FilteredBlock
FilteredBlock is a minimal set of information about a block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| channel_id | [string](#string) |  |  |
| number | [uint64](#uint64) |  | The position in the blockchain |
| filtered_transactions | [FilteredTransaction](#protos-FilteredTransaction) | repeated |  |






<a name="protos-FilteredChaincodeAction"></a>

### FilteredChaincodeAction
FilteredChaincodeAction is a minimal set of information about an action
within a transaction


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincode_event | [ChaincodeEvent](#protos-ChaincodeEvent) |  |  |






<a name="protos-FilteredTransaction"></a>

### FilteredTransaction
FilteredTransaction is a minimal set of information about a transaction
within a block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| txid | [string](#string) |  |  |
| type | [common.HeaderType](#common-HeaderType) |  |  |
| tx_validation_code | [TxValidationCode](#protos-TxValidationCode) |  |  |
| transaction_actions | [FilteredTransactionActions](#protos-FilteredTransactionActions) |  |  |






<a name="protos-FilteredTransactionActions"></a>

### FilteredTransactionActions
FilteredTransactionActions is a wrapper for array of TransactionAction
message from regular block


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincode_actions | [FilteredChaincodeAction](#protos-FilteredChaincodeAction) | repeated |  |





 

 

 


<a name="protos-Deliver"></a>

### Deliver


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Deliver | [.common.Envelope](#common-Envelope) stream | [DeliverResponse](#protos-DeliverResponse) stream | Deliver first requires an Envelope of type ab.DELIVER_SEEK_INFO with Payload data as a marshaled orderer.SeekInfo message, then a stream of block replies is received |
| DeliverFiltered | [.common.Envelope](#common-Envelope) stream | [DeliverResponse](#protos-DeliverResponse) stream | DeliverFiltered first requires an Envelope of type ab.DELIVER_SEEK_INFO with Payload data as a marshaled orderer.SeekInfo message, then a stream of **filtered** block replies is received |
| DeliverWithPrivateData | [.common.Envelope](#common-Envelope) stream | [DeliverResponse](#protos-DeliverResponse) stream | DeliverWithPrivateData first requires an Envelope of type ab.DELIVER_SEEK_INFO with Payload data as a marshaled orderer.SeekInfo message, then a stream of block and private data replies is received |

 



<a name="peer_lifecycle_chaincode_definition-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/lifecycle/chaincode_definition.proto



<a name="lifecycle-ChaincodeEndorsementInfo"></a>

### ChaincodeEndorsementInfo
ChaincodeEndorsementInfo is (most) everything the peer needs to know in order
to execute a chaincode


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [string](#string) |  |  |
| init_required | [bool](#bool) |  |  |
| endorsement_plugin | [string](#string) |  |  |






<a name="lifecycle-ChaincodeValidationInfo"></a>

### ChaincodeValidationInfo
ValidationInfo is (most) everything the peer needs to know in order
to validate a transaction


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| validation_plugin | [string](#string) |  |  |
| validation_parameter | [bytes](#bytes) |  |  |





 

 

 

 



<a name="peer_lifecycle_db-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/lifecycle/db.proto



<a name="lifecycle-StateData"></a>

### StateData
StateData encodes a particular field of a datatype


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| Int64 | [int64](#int64) |  |  |
| Bytes | [bytes](#bytes) |  |  |
| String | [string](#string) |  |  |






<a name="lifecycle-StateMetadata"></a>

### StateMetadata
StateMetadata describes the keys in a namespace.  It is necessary because
in collections, range scans are not possible during transactions which
write.  Therefore we must track the keys in our namespace ourselves.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| datatype | [string](#string) |  |  |
| fields | [string](#string) | repeated |  |





 

 

 

 



<a name="peer_lifecycle_lifecycle-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/lifecycle/lifecycle.proto



<a name="lifecycle-ApproveChaincodeDefinitionForMyOrgArgs"></a>

### ApproveChaincodeDefinitionForMyOrgArgs
ApproveChaincodeDefinitionForMyOrgArgs is the message used as arguments to
`_lifecycle.ApproveChaincodeDefinitionForMyOrg`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sequence | [int64](#int64) |  |  |
| name | [string](#string) |  |  |
| version | [string](#string) |  |  |
| endorsement_plugin | [string](#string) |  |  |
| validation_plugin | [string](#string) |  |  |
| validation_parameter | [bytes](#bytes) |  |  |
| collections | [protos.CollectionConfigPackage](#protos-CollectionConfigPackage) |  |  |
| init_required | [bool](#bool) |  |  |
| source | [ChaincodeSource](#lifecycle-ChaincodeSource) |  |  |






<a name="lifecycle-ApproveChaincodeDefinitionForMyOrgResult"></a>

### ApproveChaincodeDefinitionForMyOrgResult
ApproveChaincodeDefinitionForMyOrgResult is the message returned by
`_lifecycle.ApproveChaincodeDefinitionForMyOrg`. Currently it returns
nothing, but may be extended in the future.






<a name="lifecycle-ChaincodeSource"></a>

### ChaincodeSource



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| unavailable | [ChaincodeSource.Unavailable](#lifecycle-ChaincodeSource-Unavailable) |  |  |
| local_package | [ChaincodeSource.Local](#lifecycle-ChaincodeSource-Local) |  |  |






<a name="lifecycle-ChaincodeSource-Local"></a>

### ChaincodeSource.Local



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| package_id | [string](#string) |  |  |






<a name="lifecycle-ChaincodeSource-Unavailable"></a>

### ChaincodeSource.Unavailable







<a name="lifecycle-CheckCommitReadinessArgs"></a>

### CheckCommitReadinessArgs
CheckCommitReadinessArgs is the message used as arguments to
`_lifecycle.CheckCommitReadiness`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sequence | [int64](#int64) |  |  |
| name | [string](#string) |  |  |
| version | [string](#string) |  |  |
| endorsement_plugin | [string](#string) |  |  |
| validation_plugin | [string](#string) |  |  |
| validation_parameter | [bytes](#bytes) |  |  |
| collections | [protos.CollectionConfigPackage](#protos-CollectionConfigPackage) |  |  |
| init_required | [bool](#bool) |  |  |






<a name="lifecycle-CheckCommitReadinessResult"></a>

### CheckCommitReadinessResult
CheckCommitReadinessResult is the message returned by
`_lifecycle.CheckCommitReadiness`. It returns a map of
orgs to their approval (true/false) for the definition
supplied as args. Additionally, it returns a map of
parameter mismatches between each organization&#39;s
approved definition and the definition supplied as args.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| approvals | [CheckCommitReadinessResult.ApprovalsEntry](#lifecycle-CheckCommitReadinessResult-ApprovalsEntry) | repeated |  |
| mismatches | [CheckCommitReadinessResult.MismatchesEntry](#lifecycle-CheckCommitReadinessResult-MismatchesEntry) | repeated |  |






<a name="lifecycle-CheckCommitReadinessResult-ApprovalsEntry"></a>

### CheckCommitReadinessResult.ApprovalsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [bool](#bool) |  |  |






<a name="lifecycle-CheckCommitReadinessResult-Mismatches"></a>

### CheckCommitReadinessResult.Mismatches



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [string](#string) | repeated |  |






<a name="lifecycle-CheckCommitReadinessResult-MismatchesEntry"></a>

### CheckCommitReadinessResult.MismatchesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [CheckCommitReadinessResult.Mismatches](#lifecycle-CheckCommitReadinessResult-Mismatches) |  |  |






<a name="lifecycle-CommitChaincodeDefinitionArgs"></a>

### CommitChaincodeDefinitionArgs
CommitChaincodeDefinitionArgs is the message used as arguments to
`_lifecycle.CommitChaincodeDefinition`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sequence | [int64](#int64) |  |  |
| name | [string](#string) |  |  |
| version | [string](#string) |  |  |
| endorsement_plugin | [string](#string) |  |  |
| validation_plugin | [string](#string) |  |  |
| validation_parameter | [bytes](#bytes) |  |  |
| collections | [protos.CollectionConfigPackage](#protos-CollectionConfigPackage) |  |  |
| init_required | [bool](#bool) |  |  |






<a name="lifecycle-CommitChaincodeDefinitionResult"></a>

### CommitChaincodeDefinitionResult
CommitChaincodeDefinitionResult is the message returned by
`_lifecycle.CommitChaincodeDefinition`. Currently it returns
nothing, but may be extended in the future.






<a name="lifecycle-GetInstalledChaincodePackageArgs"></a>

### GetInstalledChaincodePackageArgs
GetInstalledChaincodePackageArgs is the message used as the argument to
&#39;_lifecycle.GetInstalledChaincodePackage&#39;.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| package_id | [string](#string) |  |  |






<a name="lifecycle-GetInstalledChaincodePackageResult"></a>

### GetInstalledChaincodePackageResult
GetInstalledChaincodePackageResult is the message returned by
&#39;_lifecycle.GetInstalledChaincodePackage&#39;.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincode_install_package | [bytes](#bytes) |  |  |






<a name="lifecycle-InstallChaincodeArgs"></a>

### InstallChaincodeArgs
InstallChaincodeArgs is the message used as the argument to
&#39;_lifecycle.InstallChaincode&#39;.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincode_install_package | [bytes](#bytes) |  | This should be a marshaled lifecycle.ChaincodePackage |






<a name="lifecycle-InstallChaincodeResult"></a>

### InstallChaincodeResult
InstallChaincodeArgs is the message returned by
&#39;_lifecycle.InstallChaincode&#39;.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| package_id | [string](#string) |  |  |
| label | [string](#string) |  |  |






<a name="lifecycle-QueryApprovedChaincodeDefinitionArgs"></a>

### QueryApprovedChaincodeDefinitionArgs
QueryApprovedChaincodeDefinitionArgs is the message used as arguments to
`_lifecycle.QueryApprovedChaincodeDefinition`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| sequence | [int64](#int64) |  |  |






<a name="lifecycle-QueryApprovedChaincodeDefinitionResult"></a>

### QueryApprovedChaincodeDefinitionResult
QueryApprovedChaincodeDefinitionResult is the message returned by
`_lifecycle.QueryApprovedChaincodeDefinition`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sequence | [int64](#int64) |  |  |
| version | [string](#string) |  |  |
| endorsement_plugin | [string](#string) |  |  |
| validation_plugin | [string](#string) |  |  |
| validation_parameter | [bytes](#bytes) |  |  |
| collections | [protos.CollectionConfigPackage](#protos-CollectionConfigPackage) |  |  |
| init_required | [bool](#bool) |  |  |
| source | [ChaincodeSource](#lifecycle-ChaincodeSource) |  |  |






<a name="lifecycle-QueryApprovedChaincodeDefinitionsArgs"></a>

### QueryApprovedChaincodeDefinitionsArgs
QueryApprovedChaincodeDefinitionsArgs is the message used as arguments to
`_lifecycle.QueryApprovedChaincodeDefinitions`.






<a name="lifecycle-QueryApprovedChaincodeDefinitionsResult"></a>

### QueryApprovedChaincodeDefinitionsResult
QueryApprovedChaincodeDefinitionsResult is the message returned by
`_lifecycle.QueryApprovedChaincodeDefinitions`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| approved_chaincode_definitions | [QueryApprovedChaincodeDefinitionsResult.ApprovedChaincodeDefinition](#lifecycle-QueryApprovedChaincodeDefinitionsResult-ApprovedChaincodeDefinition) | repeated |  |






<a name="lifecycle-QueryApprovedChaincodeDefinitionsResult-ApprovedChaincodeDefinition"></a>

### QueryApprovedChaincodeDefinitionsResult.ApprovedChaincodeDefinition



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| sequence | [int64](#int64) |  |  |
| version | [string](#string) |  |  |
| endorsement_plugin | [string](#string) |  |  |
| validation_plugin | [string](#string) |  |  |
| validation_parameter | [bytes](#bytes) |  |  |
| collections | [protos.CollectionConfigPackage](#protos-CollectionConfigPackage) |  |  |
| init_required | [bool](#bool) |  |  |
| source | [ChaincodeSource](#lifecycle-ChaincodeSource) |  |  |






<a name="lifecycle-QueryChaincodeDefinitionArgs"></a>

### QueryChaincodeDefinitionArgs
QueryChaincodeDefinitionArgs is the message used as arguments to
`_lifecycle.QueryChaincodeDefinition`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |






<a name="lifecycle-QueryChaincodeDefinitionResult"></a>

### QueryChaincodeDefinitionResult
QueryChaincodeDefinitionResult is the message returned by
`_lifecycle.QueryChaincodeDefinition`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sequence | [int64](#int64) |  |  |
| version | [string](#string) |  |  |
| endorsement_plugin | [string](#string) |  |  |
| validation_plugin | [string](#string) |  |  |
| validation_parameter | [bytes](#bytes) |  |  |
| collections | [protos.CollectionConfigPackage](#protos-CollectionConfigPackage) |  |  |
| init_required | [bool](#bool) |  |  |
| approvals | [QueryChaincodeDefinitionResult.ApprovalsEntry](#lifecycle-QueryChaincodeDefinitionResult-ApprovalsEntry) | repeated |  |






<a name="lifecycle-QueryChaincodeDefinitionResult-ApprovalsEntry"></a>

### QueryChaincodeDefinitionResult.ApprovalsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [bool](#bool) |  |  |






<a name="lifecycle-QueryChaincodeDefinitionsArgs"></a>

### QueryChaincodeDefinitionsArgs
QueryChaincodeDefinitionsArgs is the message used as arguments to
`_lifecycle.QueryChaincodeDefinitions`.






<a name="lifecycle-QueryChaincodeDefinitionsResult"></a>

### QueryChaincodeDefinitionsResult
QueryChaincodeDefinitionsResult is the message returned by
`_lifecycle.QueryChaincodeDefinitions`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincode_definitions | [QueryChaincodeDefinitionsResult.ChaincodeDefinition](#lifecycle-QueryChaincodeDefinitionsResult-ChaincodeDefinition) | repeated |  |






<a name="lifecycle-QueryChaincodeDefinitionsResult-ChaincodeDefinition"></a>

### QueryChaincodeDefinitionsResult.ChaincodeDefinition



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| sequence | [int64](#int64) |  |  |
| version | [string](#string) |  |  |
| endorsement_plugin | [string](#string) |  |  |
| validation_plugin | [string](#string) |  |  |
| validation_parameter | [bytes](#bytes) |  |  |
| collections | [protos.CollectionConfigPackage](#protos-CollectionConfigPackage) |  |  |
| init_required | [bool](#bool) |  |  |






<a name="lifecycle-QueryInstalledChaincodeArgs"></a>

### QueryInstalledChaincodeArgs
QueryInstalledChaincodeArgs is the message used as arguments
&#39;_lifecycle.QueryInstalledChaincode&#39;


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| package_id | [string](#string) |  |  |






<a name="lifecycle-QueryInstalledChaincodeResult"></a>

### QueryInstalledChaincodeResult
QueryInstalledChaincodeResult is the message returned by
&#39;_lifecycle.QueryInstalledChaincode&#39;


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| package_id | [string](#string) |  |  |
| label | [string](#string) |  |  |
| references | [QueryInstalledChaincodeResult.ReferencesEntry](#lifecycle-QueryInstalledChaincodeResult-ReferencesEntry) | repeated |  |






<a name="lifecycle-QueryInstalledChaincodeResult-Chaincode"></a>

### QueryInstalledChaincodeResult.Chaincode



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| version | [string](#string) |  |  |






<a name="lifecycle-QueryInstalledChaincodeResult-References"></a>

### QueryInstalledChaincodeResult.References



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincodes | [QueryInstalledChaincodeResult.Chaincode](#lifecycle-QueryInstalledChaincodeResult-Chaincode) | repeated |  |






<a name="lifecycle-QueryInstalledChaincodeResult-ReferencesEntry"></a>

### QueryInstalledChaincodeResult.ReferencesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [QueryInstalledChaincodeResult.References](#lifecycle-QueryInstalledChaincodeResult-References) |  |  |






<a name="lifecycle-QueryInstalledChaincodesArgs"></a>

### QueryInstalledChaincodesArgs
QueryInstalledChaincodesArgs currently is an empty argument to
&#39;_lifecycle.QueryInstalledChaincodes&#39;.   In the future, it may be
extended to have parameters.






<a name="lifecycle-QueryInstalledChaincodesResult"></a>

### QueryInstalledChaincodesResult
QueryInstalledChaincodesResult is the message returned by
&#39;_lifecycle.QueryInstalledChaincodes&#39;.  It returns a list of installed
chaincodes, including a map of channel name to chaincode name and version
pairs of chaincode definitions that reference this chaincode package.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| installed_chaincodes | [QueryInstalledChaincodesResult.InstalledChaincode](#lifecycle-QueryInstalledChaincodesResult-InstalledChaincode) | repeated |  |






<a name="lifecycle-QueryInstalledChaincodesResult-Chaincode"></a>

### QueryInstalledChaincodesResult.Chaincode



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| version | [string](#string) |  |  |






<a name="lifecycle-QueryInstalledChaincodesResult-InstalledChaincode"></a>

### QueryInstalledChaincodesResult.InstalledChaincode



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| package_id | [string](#string) |  |  |
| label | [string](#string) |  |  |
| references | [QueryInstalledChaincodesResult.InstalledChaincode.ReferencesEntry](#lifecycle-QueryInstalledChaincodesResult-InstalledChaincode-ReferencesEntry) | repeated |  |






<a name="lifecycle-QueryInstalledChaincodesResult-InstalledChaincode-ReferencesEntry"></a>

### QueryInstalledChaincodesResult.InstalledChaincode.ReferencesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [QueryInstalledChaincodesResult.References](#lifecycle-QueryInstalledChaincodesResult-References) |  |  |






<a name="lifecycle-QueryInstalledChaincodesResult-References"></a>

### QueryInstalledChaincodesResult.References



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincodes | [QueryInstalledChaincodesResult.Chaincode](#lifecycle-QueryInstalledChaincodesResult-Chaincode) | repeated |  |





 

 

 

 



<a name="peer_peer-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/peer.proto


 

 

 


<a name="protos-Endorser"></a>

### Endorser


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ProcessProposal | [SignedProposal](#protos-SignedProposal) | [ProposalResponse](#protos-ProposalResponse) |  |

 



<a name="peer_query-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/query.proto



<a name="protos-ChaincodeInfo"></a>

### ChaincodeInfo
ChaincodeInfo contains general information about an installed/instantiated
chaincode


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| version | [string](#string) |  |  |
| path | [string](#string) |  | the path as specified by the install/instantiate transaction |
| input | [string](#string) |  | the chaincode function upon instantiation and its arguments. This will be blank if the query is returning information about installed chaincodes. |
| escc | [string](#string) |  | the name of the ESCC for this chaincode. This will be blank if the query is returning information about installed chaincodes. |
| vscc | [string](#string) |  | the name of the VSCC for this chaincode. This will be blank if the query is returning information about installed chaincodes. |
| id | [bytes](#bytes) |  | the chaincode unique id. computed as: H( H(name || version) || H(CodePackage) ) |






<a name="protos-ChaincodeQueryResponse"></a>

### ChaincodeQueryResponse
ChaincodeQueryResponse returns information about each chaincode that pertains
to a query in lscc.go, such as GetChaincodes (returns all chaincodes
instantiated on a channel), and GetInstalledChaincodes (returns all chaincodes
installed on a peer)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincodes | [ChaincodeInfo](#protos-ChaincodeInfo) | repeated |  |






<a name="protos-ChannelInfo"></a>

### ChannelInfo
ChannelInfo contains general information about channels


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| channel_id | [string](#string) |  |  |






<a name="protos-ChannelQueryResponse"></a>

### ChannelQueryResponse
ChannelQueryResponse returns information about each channel that pertains
to a query in lscc.go, such as GetChannels (returns all channels for a
given peer)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| channels | [ChannelInfo](#protos-ChannelInfo) | repeated |  |






<a name="protos-JoinBySnapshotStatus"></a>

### JoinBySnapshotStatus
JoinBySnapshotStatus contains information about whether or a JoinBySnapshot operation
is in progress and the related bootstrap dir if it is running.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| in_progress | [bool](#bool) |  |  |
| bootstrapping_snapshot_dir | [string](#string) |  |  |





 

 

 

 



<a name="peer_resources-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/resources.proto



<a name="protos-ChaincodeEndorsement"></a>

### ChaincodeEndorsement
ChaincodeEndorsement instructs the peer how transactions should be endorsed.  The only
endorsement mechanism which ships with the fabric today is the standard &#39;escc&#39; mechanism.
This code simply simulates the proposal to generate a RW set, then signs the result
using the peer&#39;s local signing identity.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Specifies what code to run for endorsements, defaults &#39;escc&#39; |






<a name="protos-ChaincodeIdentifier"></a>

### ChaincodeIdentifier
ChaincodeIdentifier identifies a piece of chaincode.  For a peer to accept invocations of
this chaincode, the hash of the installed code must match, as must the version string
included with the install command.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| hash | [bytes](#bytes) |  | The hash of the chaincode bytes |
| version | [string](#string) |  | A user friendly human readable name corresponding to the ID |






<a name="protos-ChaincodeValidation"></a>

### ChaincodeValidation
ChaincodeValidation instructs the peer how transactions for this chaincode should be
validated.  The only validation mechanism which ships with fabric today is the standard
&#39;vscc&#39; validation mechanism.  This built in validation method utilizes an endorsement policy
which checks that a sufficient number of signatures have been included.  The &#39;arguement&#39;
field encodes any parameters required by the validation implementation.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Specifies which code to run to validate transactions, defaults to &#39;vscc&#39; |
| argument | [bytes](#bytes) |  | When &#39;vscc&#39; a marshaled VSCCArgs |






<a name="protos-ConfigTree"></a>

### ConfigTree
ConfigTree encapsulates channel and resources configuration of a channel.
Both configurations are represented as common.Config


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| channel_config | [common.Config](#common-Config) |  |  |
| resources_config | [common.Config](#common-Config) |  |  |






<a name="protos-VSCCArgs"></a>

### VSCCArgs
VSCCArgs is passed (marshaled) as a parameter to the VSCC imlementation via the
argument field of the ChaincodeValidation message.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endorsement_policy_ref | [string](#string) |  | A named reference to an endorsement policy, |





 

 

 

 



<a name="peer_signed_cc_dep_spec-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/signed_cc_dep_spec.proto



<a name="protos-SignedChaincodeDeploymentSpec"></a>

### SignedChaincodeDeploymentSpec
SignedChaincodeDeploymentSpec carries the CDS along with endorsements


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| chaincode_deployment_spec | [bytes](#bytes) |  | This is the bytes of the ChaincodeDeploymentSpec |
| instantiation_policy | [bytes](#bytes) |  | This is the instantiation policy which is identical in structure to endorsement policy. This policy is checked by the VSCC at commit time on the instantiation (all peers will get the same policy as it will be part of the LSCC instantation record and will be part of the hash as well) |
| owner_endorsements | [Endorsement](#protos-Endorsement) | repeated | The endorsements of the above deployment spec, the owner&#39;s signature over chaincode_deployment_spec and Endorsement.endorser. |





 

 

 

 



<a name="peer_snapshot-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## peer/snapshot.proto



<a name="protos-QueryPendingSnapshotsResponse"></a>

### QueryPendingSnapshotsResponse
QueryPendingSnapshotsResponse specifies the response payload of a query pending snapshots request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| block_numbers | [uint64](#uint64) | repeated |  |






<a name="protos-SignedSnapshotRequest"></a>

### SignedSnapshotRequest
SignedSnapshotRequest contains marshalled request bytes and signature


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| request | [bytes](#bytes) |  | The bytes of SnapshotRequest or SnapshotQuery |
| signature | [bytes](#bytes) |  | Signaure over request bytes; this signature is to be verified against the client identity |






<a name="protos-SnapshotQuery"></a>

### SnapshotQuery
SnapshotQuery contains information for a query snapshot request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signature_header | [common.SignatureHeader](#common-SignatureHeader) |  | The signature header that contains creator identity and nonce |
| channel_id | [string](#string) |  | The channel ID |






<a name="protos-SnapshotRequest"></a>

### SnapshotRequest
SnapshotRequest contains information for a generate/cancel snapshot request


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| signature_header | [common.SignatureHeader](#common-SignatureHeader) |  | The signature header that contains creator identity and nonce |
| channel_id | [string](#string) |  | The channel ID |
| block_number | [uint64](#uint64) |  | The block number to generate a snapshot |





 

 

 


<a name="protos-Snapshot"></a>

### Snapshot


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Generate | [SignedSnapshotRequest](#protos-SignedSnapshotRequest) | [.google.protobuf.Empty](#google-protobuf-Empty) | Generate a snapshot reqeust. SignedSnapshotRequest contains marshalled bytes for SnaphostRequest |
| Cancel | [SignedSnapshotRequest](#protos-SignedSnapshotRequest) | [.google.protobuf.Empty](#google-protobuf-Empty) | Cancel a snapshot reqeust. SignedSnapshotRequest contains marshalled bytes for SnaphostRequest |
| QueryPendings | [SignedSnapshotRequest](#protos-SignedSnapshotRequest) | [QueryPendingSnapshotsResponse](#protos-QueryPendingSnapshotsResponse) | Query pending snapshots query. SignedSnapshotRequest contains marshalled bytes for SnaphostQuery |

 



<a name="transientstore_transientstore-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## transientstore/transientstore.proto



<a name="transientstore-TxPvtReadWriteSetWithConfigInfo"></a>

### TxPvtReadWriteSetWithConfigInfo
TxPvtReadWriteSetWithConfigInfo encapsulates the transaction&#39;s private
read-write set and additional information about the configurations such as
the latest collection config when the transaction is simulated


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endorsed_at | [uint64](#uint64) |  |  |
| pvt_rwset | [rwset.TxPvtReadWriteSet](#rwset-TxPvtReadWriteSet) |  |  |
| collection_configs | [TxPvtReadWriteSetWithConfigInfo.CollectionConfigsEntry](#transientstore-TxPvtReadWriteSetWithConfigInfo-CollectionConfigsEntry) | repeated |  |






<a name="transientstore-TxPvtReadWriteSetWithConfigInfo-CollectionConfigsEntry"></a>

### TxPvtReadWriteSetWithConfigInfo.CollectionConfigsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [protos.CollectionConfigPackage](#protos-CollectionConfigPackage) |  |  |





 

 

 

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

