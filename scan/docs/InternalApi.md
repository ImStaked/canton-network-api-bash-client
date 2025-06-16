# InternalApi

All URIs are relative to */api/scan*

Method | HTTP request | Description
------------- | ------------- | -------------
[**featureSupport**](InternalApi.md#featureSupport) | **GET** /v0/feature-support | 
[**getAmuletRules**](InternalApi.md#getAmuletRules) | **POST** /v0/amulet-rules | 
[**getAnsRules**](InternalApi.md#getAnsRules) | **POST** /v0/ans-rules | 
[**getBackfillingStatus**](InternalApi.md#getBackfillingStatus) | **GET** /v0/backfilling/status | 
[**getExternalPartyAmuletRules**](InternalApi.md#getExternalPartyAmuletRules) | **POST** /v0/external-party-amulet-rules | 
[**getMigrationInfo**](InternalApi.md#getMigrationInfo) | **POST** /v0/backfilling/migration-info | 
[**getMigrationSchedule**](InternalApi.md#getMigrationSchedule) | **GET** /v0/migrations/schedule | 
[**getSpliceInstanceNames**](InternalApi.md#getSpliceInstanceNames) | **GET** /v0/splice-instance-names | 
[**getSynchronizerBootstrappingTransactions**](InternalApi.md#getSynchronizerBootstrappingTransactions) | **GET** /v0/synchronizer-bootstrapping-transactions/{domain_id_prefix} | 
[**getSynchronizerIdentities**](InternalApi.md#getSynchronizerIdentities) | **GET** /v0/synchronizer-identities/{domain_id_prefix} | 
[**getTopValidatorsByValidatorFaucets**](InternalApi.md#getTopValidatorsByValidatorFaucets) | **GET** /v0/top-validators-by-validator-faucets | 
[**getUpdatesBefore**](InternalApi.md#getUpdatesBefore) | **POST** /v0/backfilling/updates-before | 
[**listAmuletPriceVotes**](InternalApi.md#listAmuletPriceVotes) | **GET** /v0/amulet-price/votes | 
[**listDsoRulesVoteRequests**](InternalApi.md#listDsoRulesVoteRequests) | **GET** /v0/admin/sv/voterequests | 
[**listFeaturedAppRights**](InternalApi.md#listFeaturedAppRights) | **GET** /v0/featured-apps | 
[**listSvBftSequencers**](InternalApi.md#listSvBftSequencers) | **GET** /v0/sv-bft-sequencers | 
[**listVoteRequestResults**](InternalApi.md#listVoteRequestResults) | **POST** /v0/admin/sv/voteresults | 
[**listVoteRequestsByTrackingCid**](InternalApi.md#listVoteRequestsByTrackingCid) | **POST** /v0/voterequest | 
[**lookupDsoRulesVoteRequest**](InternalApi.md#lookupDsoRulesVoteRequest) | **GET** /v0/voterequests/{vote_request_contract_id} | 
[**lookupFeaturedAppRight**](InternalApi.md#lookupFeaturedAppRight) | **GET** /v0/featured-apps/{provider_party_id} | 
[**lookupTransferCommandCounterByParty**](InternalApi.md#lookupTransferCommandCounterByParty) | **GET** /v0/transfer-command-counter/{party} | 
[**lookupTransferCommandStatus**](InternalApi.md#lookupTransferCommandStatus) | **GET** /v0/transfer-command/status | 
[**lookupTransferPreapprovalByParty**](InternalApi.md#lookupTransferPreapprovalByParty) | **GET** /v0/transfer-preapprovals/by-party/{party} | 



## featureSupport



### Example

```bash
scan-api featureSupport
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**FeatureSupportResponse**](FeatureSupportResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAmuletRules



### Example

```bash
scan-api getAmuletRules
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getAmuletRulesRequest** | [**GetAmuletRulesRequest**](GetAmuletRulesRequest.md) |  |

### Return type

[**GetAmuletRulesResponse**](GetAmuletRulesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAnsRules



### Example

```bash
scan-api getAnsRules
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getAnsRulesRequest** | [**GetAnsRulesRequest**](GetAnsRulesRequest.md) |  |

### Return type

[**GetAnsRulesResponse**](GetAnsRulesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBackfillingStatus



Retrieve the status of the backfilling process.

### Example

```bash
scan-api getBackfillingStatus
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetBackfillingStatusResponse**](GetBackfillingStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getExternalPartyAmuletRules



### Example

```bash
scan-api getExternalPartyAmuletRules
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getExternalPartyAmuletRulesRequest** | [**GetExternalPartyAmuletRulesRequest**](GetExternalPartyAmuletRulesRequest.md) |  |

### Return type

[**GetExternalPartyAmuletRulesResponse**](GetExternalPartyAmuletRulesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMigrationInfo



List all previous synchronizer migrations in this Splice network's history.

### Example

```bash
scan-api getMigrationInfo
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getMigrationInfoRequest** | [**GetMigrationInfoRequest**](GetMigrationInfoRequest.md) |  |

### Return type

[**GetMigrationInfoResponse**](GetMigrationInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMigrationSchedule



If the DSO has scheduled a synchronizer upgrade, return its planned time
and the new migration ID.

### Example

```bash
scan-api getMigrationSchedule
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MigrationSchedule**](MigrationSchedule.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSpliceInstanceNames



Retrieve the UI names of various elements of this Splice network.

### Example

```bash
scan-api getSpliceInstanceNames
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetSpliceInstanceNamesResponse**](GetSpliceInstanceNamesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSynchronizerBootstrappingTransactions



### Example

```bash
scan-api getSynchronizerBootstrappingTransactions domain_id_prefix=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainIdPrefix** | **string** |  | [default to null]

### Return type

[**SynchronizerBootstrappingTransactions**](SynchronizerBootstrappingTransactions.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSynchronizerIdentities



### Example

```bash
scan-api getSynchronizerIdentities domain_id_prefix=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainIdPrefix** | **string** |  | [default to null]

### Return type

[**SynchronizerIdentities**](SynchronizerIdentities.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTopValidatorsByValidatorFaucets



Get a list of top validators by number of rounds in which they collected
faucets, and basis statistics on their round collection history

### Example

```bash
scan-api getTopValidatorsByValidatorFaucets  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **integer** | Maximum number of validator records that may be returned in the
response | [default to null]

### Return type

[**GetTopValidatorsByValidatorFaucetsResponse**](GetTopValidatorsByValidatorFaucetsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getUpdatesBefore



Retrieve transactions and synchronizer reassignments prior to the
request's specification.

### Example

```bash
scan-api getUpdatesBefore
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getUpdatesBeforeRequest** | [**GetUpdatesBeforeRequest**](GetUpdatesBeforeRequest.md) |  |

### Return type

[**GetUpdatesBeforeResponse**](GetUpdatesBeforeResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listAmuletPriceVotes



Retrieve a list of the latest amulet price votes

### Example

```bash
scan-api listAmuletPriceVotes
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAmuletPriceVotesResponse**](ListAmuletPriceVotesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listDsoRulesVoteRequests



List all active 'VoteRequest'\\ s.

### Example

```bash
scan-api listDsoRulesVoteRequests
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListDsoRulesVoteRequestsResponse**](ListDsoRulesVoteRequestsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listFeaturedAppRights



List every 'FeaturedAppRight' registered with the DSO on the ledger.

### Example

```bash
scan-api listFeaturedAppRights
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListFeaturedAppRightsResponse**](ListFeaturedAppRightsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listSvBftSequencers



Retrieve Canton BFT sequencer configuration for this SV, for each configured Synchronizer

### Example

```bash
scan-api listSvBftSequencers
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListSvBftSequencersResponse**](ListSvBftSequencersResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listVoteRequestResults



### Example

```bash
scan-api listVoteRequestResults
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listVoteResultsRequest** | [**ListVoteResultsRequest**](ListVoteResultsRequest.md) |  |

### Return type

[**ListDsoRulesVoteResultsResponse**](ListDsoRulesVoteResultsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listVoteRequestsByTrackingCid



Look up several 'VoteRequest'\\ s at once by their contract IDs.

### Example

```bash
scan-api listVoteRequestsByTrackingCid
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchListVotesByVoteRequestsRequest** | [**BatchListVotesByVoteRequestsRequest**](BatchListVotesByVoteRequestsRequest.md) |  |

### Return type

[**ListVoteRequestByTrackingCidResponse**](ListVoteRequestByTrackingCidResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## lookupDsoRulesVoteRequest



Look up a 'VoteRequest' by contract ID.

### Example

```bash
scan-api lookupDsoRulesVoteRequest vote_request_contract_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **voteRequestContractId** | **string** |  | [default to null]

### Return type

[**LookupDsoRulesVoteRequestResponse**](LookupDsoRulesVoteRequestResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## lookupFeaturedAppRight



If 'provider_party_id' has a 'FeaturedAppRight' registered with the DSO,
return it; 'featured_app_right' will be empty otherwise.

### Example

```bash
scan-api lookupFeaturedAppRight provider_party_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerPartyId** | **string** |  | [default to null]

### Return type

[**LookupFeaturedAppRightResponse**](LookupFeaturedAppRightResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## lookupTransferCommandCounterByParty



Lookup a TransferCommandCounter by the receiver party.

### Example

```bash
scan-api lookupTransferCommandCounterByParty party=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **party** | **string** |  | [default to null]

### Return type

[**LookupTransferCommandCounterByPartyResponse**](LookupTransferCommandCounterByPartyResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## lookupTransferCommandStatus



Retrieve the status of all transfer commands (up to a limit of 100) of the given sender for the specified nonce.

### Example

```bash
scan-api lookupTransferCommandStatus  sender=value  nonce=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender** | **string** |  | [default to null]
 **nonce** | **integer** |  | [default to null]

### Return type

[**LookupTransferCommandStatusResponse**](LookupTransferCommandStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## lookupTransferPreapprovalByParty



Lookup a TransferPreapproval by the receiver party.

### Example

```bash
scan-api lookupTransferPreapprovalByParty party=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **party** | **string** |  | [default to null]

### Return type

[**LookupTransferPreapprovalByPartyResponse**](LookupTransferPreapprovalByPartyResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

