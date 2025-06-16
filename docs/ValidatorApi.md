# ValidatorApi

All URIs are relative to */api/validator*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelTransferPreapprovalByParty**](ValidatorApi.md#cancelTransferPreapprovalByParty) | **DELETE** /v0/admin/transfer-preapprovals/by-party/{receiver-party} | 
[**createExternalPartySetupProposal**](ValidatorApi.md#createExternalPartySetupProposal) | **POST** /v0/admin/external-party/setup-proposal | 
[**dumpParticipantIdentities**](ValidatorApi.md#dumpParticipantIdentities) | **GET** /v0/admin/participant/identities | 
[**generateExternalPartyTopology**](ValidatorApi.md#generateExternalPartyTopology) | **POST** /v0/admin/external-party/topology/generate | 
[**getDecentralizedSynchronizerConnectionConfig**](ValidatorApi.md#getDecentralizedSynchronizerConnectionConfig) | **GET** /v0/admin/participant/global-domain-connection-config | 
[**getExternalPartyBalance**](ValidatorApi.md#getExternalPartyBalance) | **GET** /v0/admin/external-party/balance | 
[**getValidatorDomainDataSnapshot**](ValidatorApi.md#getValidatorDomainDataSnapshot) | **GET** /v0/admin/domain/data-snapshot | 
[**listExternalPartySetupProposals**](ValidatorApi.md#listExternalPartySetupProposals) | **GET** /v0/admin/external-party/setup-proposal | 
[**listTransferPreapprovals**](ValidatorApi.md#listTransferPreapprovals) | **GET** /v0/admin/transfer-preapprovals | 
[**listUsers**](ValidatorApi.md#listUsers) | **GET** /v0/admin/users | 
[**lookupTransferPreapprovalByParty**](ValidatorApi.md#lookupTransferPreapprovalByParty) | **GET** /v0/admin/transfer-preapprovals/by-party/{receiver-party} | 
[**offboardUser**](ValidatorApi.md#offboardUser) | **POST** /v0/admin/users/offboard | 
[**onboardUser**](ValidatorApi.md#onboardUser) | **POST** /v0/admin/users | 
[**prepareAcceptExternalPartySetupProposal**](ValidatorApi.md#prepareAcceptExternalPartySetupProposal) | **POST** /v0/admin/external-party/setup-proposal/prepare-accept | 
[**prepareTransferPreapprovalSend**](ValidatorApi.md#prepareTransferPreapprovalSend) | **POST** /v0/admin/external-party/transfer-preapproval/prepare-send | 
[**register**](ValidatorApi.md#register) | **POST** /v0/register | 
[**submitAcceptExternalPartySetupProposal**](ValidatorApi.md#submitAcceptExternalPartySetupProposal) | **POST** /v0/admin/external-party/setup-proposal/submit-accept | 
[**submitExternalPartyTopology**](ValidatorApi.md#submitExternalPartyTopology) | **POST** /v0/admin/external-party/topology/submit | 
[**submitTransferPreapprovalSend**](ValidatorApi.md#submitTransferPreapprovalSend) | **POST** /v0/admin/external-party/transfer-preapproval/submit-send | 



## cancelTransferPreapprovalByParty



Remove the 'Splice.AmuletRules.TransferPreapproval' contract for the given receiver party.

### Example

```bash
 cancelTransferPreapprovalByParty receiver-party=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receiverParty** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createExternalPartySetupProposal



Create the ExternalPartySetupProposal contract as the validator operator
which then has to be accepted by the external party using /v0/admin/external-party/setup-proposal/prepare-accept
and /v0/admin/external-party/setup-proposal/submit-accept

### Example

```bash
 createExternalPartySetupProposal
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createExternalPartySetupProposalRequest** | [**CreateExternalPartySetupProposalRequest**](CreateExternalPartySetupProposalRequest.md) |  |

### Return type

[**CreateExternalPartySetupProposalResponse**](CreateExternalPartySetupProposalResponse.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dumpParticipantIdentities



Returns a dump of participant identities.

Use this endpoint if instructed to do so by an operational manual or support.

### Example

```bash
 dumpParticipantIdentities
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**NodeIdentitiesDump**](NodeIdentitiesDump.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## generateExternalPartyTopology



Creates a root namespace topology transaction, which will create the party and sets the public key
controlling the party namespace,
a party to participant mapping topology transaction, which hosts the party on the participant with Confirmation rights,
and a party to key mapping topology transaction, which sets the key to authorize daml transactions.
The hash of each of these transactions will be signed along with the corresponding topology transaction (unchanged)
in the /v0/admin/external-party/topology/submit endpoint

### Example

```bash
 generateExternalPartyTopology
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generateExternalPartyTopologyRequest** | [**GenerateExternalPartyTopologyRequest**](GenerateExternalPartyTopologyRequest.md) |  |

### Return type

[**GenerateExternalPartyTopologyResponse**](GenerateExternalPartyTopologyResponse.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDecentralizedSynchronizerConnectionConfig



Returns the connection configuration for the global synchronizer.

Use this endpoint if instructed to do so by an operational manual or support.

### Example

```bash
 getDecentralizedSynchronizerConnectionConfig
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetDecentralizedSynchronizerConnectionConfigResponse**](GetDecentralizedSynchronizerConnectionConfigResponse.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getExternalPartyBalance



Get the balance of an external party.

### Example

```bash
 getExternalPartyBalance  party_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partyId** | **string** |  | [default to null]

### Return type

[**ExternalPartyBalanceResponse**](ExternalPartyBalanceResponse.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getValidatorDomainDataSnapshot



Returns a snapshot of the global synchronizer data for this validator.
The snapshot includes a list of parties, the active contract set (ACS), and node identities.

Use this endpoint if instructed to do so by an operational manual or support.

### Example

```bash
 getValidatorDomainDataSnapshot  timestamp=value  migration_id=value  force=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **string** | The timestamp as of which the dump (in particular, the ACS) is valid.

Must in the ISO-8601 format in UTC timezone, e.g.,
'yyyy-MM-dd'T'HH:mm:ss.SSS'Z''. | [default to null]
 **migrationId** | **integer** | The current migration id. | [optional] [default to null]
 **force** | **boolean** | If true, do not check whether the provided timestamp is clean.
Not recommended for production,
see the 'ExportAcs' endpoint of the 'ParticipantRepairService' participant gRPC API. | [optional] [default to null]

### Return type

[**GetValidatorDomainDataSnapshotResponse**](GetValidatorDomainDataSnapshotResponse.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listExternalPartySetupProposals



List all ExternalPartySetupProposal contracts.

### Example

```bash
 listExternalPartySetupProposals
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListExternalPartySetupProposalsResponse**](ListExternalPartySetupProposalsResponse.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listTransferPreapprovals



List all 'Splice.AmuletRules.TransferPreapproval' contracts where the preapproval provider is the validator operator.

### Example

```bash
 listTransferPreapprovals
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListTransferPreapprovalsResponse**](ListTransferPreapprovalsResponse.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listUsers



Lists all users onboarded onto this validator.

### Example

```bash
 listUsers
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListUsersResponse**](ListUsersResponse.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## lookupTransferPreapprovalByParty



Lookup the 'Splice.AmuletRules.TransferPreapproval' contract for the given receiver party.

### Example

```bash
 lookupTransferPreapprovalByParty receiver-party=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **receiverParty** | **string** |  | [default to null]

### Return type

[**LookupTransferPreapprovalByPartyResponse**](LookupTransferPreapprovalByPartyResponse.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## offboardUser



As the validator operator, offboard the user specified in the request.
Offboarding archives the daml contracts required for the user to use a wallet on this validator.
Offboarding does not delete the ledger API user, and does not archive any other daml contracts owned by the user.

### Example

```bash
 offboardUser  username=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## onboardUser



As the validator operator, onboard an arbitrary user specified in the request.
Onboarding includes allocating a ledger API user and daml party,
and setting up daml contracts required for the user to use a wallet on this validator.

Once this call returns a successful response, the user is fully onboarded.
Use [v0/wallet/user-status](../../../../wallet/src/main/openapi/wallet-internal.yaml#/paths/v0/wallet/user-status)
to check the status of the user onboarding.

### Example

```bash
 onboardUser
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **onboardUserRequest** | [**OnboardUserRequest**](OnboardUserRequest.md) |  |

### Return type

[**OnboardUserResponse**](OnboardUserResponse.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## prepareAcceptExternalPartySetupProposal



Given a contract id of an ExternalPartySetupProposal, prepare the transaction
to accept it such that it can be signed externally and then submitted using
/v0/admin/external-party/setup-proposal/submit-accept

### Example

```bash
 prepareAcceptExternalPartySetupProposal
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prepareAcceptExternalPartySetupProposalRequest** | [**PrepareAcceptExternalPartySetupProposalRequest**](PrepareAcceptExternalPartySetupProposalRequest.md) |  |

### Return type

[**PrepareAcceptExternalPartySetupProposalResponse**](PrepareAcceptExternalPartySetupProposalResponse.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## prepareTransferPreapprovalSend



Prepare a transaction to create a TransferCommand with the given CC amount to the specified receiver
from the externally hosted sender.
The transaction then needs to be signed and submitted through
/v0/admin/external-party/transfer-preapproval/submit-send.

### Example

```bash
 prepareTransferPreapprovalSend
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prepareTransferPreapprovalSendRequest** | [**PrepareTransferPreapprovalSendRequest**](PrepareTransferPreapprovalSendRequest.md) |  |

### Return type

[**PrepareTransferPreapprovalSendResponse**](PrepareTransferPreapprovalSendResponse.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## register



As an authenticated user, onboard yourself.
Onboarding includes allocating a ledger API user and daml party,
and setting up daml contracts required for the user to use a wallet on this validator.

The ledger API user name is taken from the subject claim of the JWT token.

Once this call returns a successful response, the user is fully onboarded.
Use [v0/wallet/user-status](../../../../wallet/src/main/openapi/wallet-internal.yaml#/paths/v0/wallet/user-status)
to check the status of the user onboarding.

### Example

```bash
 register
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **map** |  | [optional]

### Return type

[**RegistrationResponse**](RegistrationResponse.md)

### Authorization

[userAuth](../README.md#userAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## submitAcceptExternalPartySetupProposal



Submit a transaction prepared using /v0/admin/external-party/setup-proposal/prepare-accept
together with its signature.

### Example

```bash
 submitAcceptExternalPartySetupProposal
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submitAcceptExternalPartySetupProposalRequest** | [**SubmitAcceptExternalPartySetupProposalRequest**](SubmitAcceptExternalPartySetupProposalRequest.md) |  |

### Return type

[**SubmitAcceptExternalPartySetupProposalResponse**](SubmitAcceptExternalPartySetupProposalResponse.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## submitExternalPartyTopology



Constructs a SignedTopologyTransaction and writes the topology transactions to the authorized store.
The input will consist of the unchanged topology transaction and the signed hash from the /v0/external-party-topology/generate endpoint

### Example

```bash
 submitExternalPartyTopology
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submitExternalPartyTopologyRequest** | [**SubmitExternalPartyTopologyRequest**](SubmitExternalPartyTopologyRequest.md) |  |

### Return type

[**SubmitExternalPartyTopologyResponse**](SubmitExternalPartyTopologyResponse.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## submitTransferPreapprovalSend



Submit transaction generated by /v0/admin/transfer-preapproval/prepare-send
together with its signature. Note that this only waits until the TransferCommand is created.
The actual transfer will happen afterwards through automation run by the SVs.

### Example

```bash
 submitTransferPreapprovalSend
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submitTransferPreapprovalSendRequest** | [**SubmitTransferPreapprovalSendRequest**](SubmitTransferPreapprovalSendRequest.md) |  |

### Return type

[**SubmitTransferPreapprovalSendResponse**](SubmitTransferPreapprovalSendResponse.md)

### Authorization

[adminAuth](../README.md#adminAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

