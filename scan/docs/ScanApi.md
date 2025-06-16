# ScanApi

All URIs are relative to */api/scan*

Method | HTTP request | Description
------------- | ------------- | -------------
[**featureSupport**](ScanApi.md#featureSupport) | **GET** /v0/feature-support | 
[**forceAcsSnapshotNow**](ScanApi.md#forceAcsSnapshotNow) | **POST** /v0/state/acs/force | 
[**getAcsSnapshotAt**](ScanApi.md#getAcsSnapshotAt) | **POST** /v0/state/acs | 
[**getAmuletRules**](ScanApi.md#getAmuletRules) | **POST** /v0/amulet-rules | 
[**getAnsRules**](ScanApi.md#getAnsRules) | **POST** /v0/ans-rules | 
[**getBackfillingStatus**](ScanApi.md#getBackfillingStatus) | **GET** /v0/backfilling/status | 
[**getClosedRounds**](ScanApi.md#getClosedRounds) | **GET** /v0/closed-rounds | 
[**getDateOfMostRecentSnapshotBefore**](ScanApi.md#getDateOfMostRecentSnapshotBefore) | **GET** /v0/state/acs/snapshot-timestamp | 
[**getDsoInfo**](ScanApi.md#getDsoInfo) | **GET** /v0/dso | 
[**getDsoPartyId**](ScanApi.md#getDsoPartyId) | **GET** /v0/dso-party-id | 
[**getExternalPartyAmuletRules**](ScanApi.md#getExternalPartyAmuletRules) | **POST** /v0/external-party-amulet-rules | 
[**getHoldingsStateAt**](ScanApi.md#getHoldingsStateAt) | **POST** /v0/holdings/state | 
[**getHoldingsSummaryAt**](ScanApi.md#getHoldingsSummaryAt) | **POST** /v0/holdings/summary | 
[**getImportUpdates**](ScanApi.md#getImportUpdates) | **POST** /v0/backfilling/import-updates | 
[**getMemberTrafficStatus**](ScanApi.md#getMemberTrafficStatus) | **GET** /v0/domains/{domain_id}/members/{member_id}/traffic-status | 
[**getMigrationInfo**](ScanApi.md#getMigrationInfo) | **POST** /v0/backfilling/migration-info | 
[**getMigrationSchedule**](ScanApi.md#getMigrationSchedule) | **GET** /v0/migrations/schedule | 
[**getOpenAndIssuingMiningRounds**](ScanApi.md#getOpenAndIssuingMiningRounds) | **POST** /v0/open-and-issuing-mining-rounds | 
[**getPartyToParticipant**](ScanApi.md#getPartyToParticipant) | **GET** /v0/domains/{domain_id}/parties/{party_id}/participant-id | 
[**getRewardsCollected**](ScanApi.md#getRewardsCollected) | **GET** /v0/rewards-collected | 
[**getRoundOfLatestData**](ScanApi.md#getRoundOfLatestData) | **GET** /v0/round-of-latest-data | 
[**getSpliceInstanceNames**](ScanApi.md#getSpliceInstanceNames) | **GET** /v0/splice-instance-names | 
[**getSynchronizerBootstrappingTransactions**](ScanApi.md#getSynchronizerBootstrappingTransactions) | **GET** /v0/synchronizer-bootstrapping-transactions/{domain_id_prefix} | 
[**getSynchronizerIdentities**](ScanApi.md#getSynchronizerIdentities) | **GET** /v0/synchronizer-identities/{domain_id_prefix} | 
[**getTopProvidersByAppRewards**](ScanApi.md#getTopProvidersByAppRewards) | **GET** /v0/top-providers-by-app-rewards | 
[**getTopValidatorsByPurchasedTraffic**](ScanApi.md#getTopValidatorsByPurchasedTraffic) | **GET** /v0/top-validators-by-purchased-traffic | 
[**getTopValidatorsByValidatorFaucets**](ScanApi.md#getTopValidatorsByValidatorFaucets) | **GET** /v0/top-validators-by-validator-faucets | 
[**getTopValidatorsByValidatorRewards**](ScanApi.md#getTopValidatorsByValidatorRewards) | **GET** /v0/top-validators-by-validator-rewards | 
[**getTotalAmuletBalance**](ScanApi.md#getTotalAmuletBalance) | **GET** /v0/total-amulet-balance | 
[**getUpdateByIdV2**](ScanApi.md#getUpdateByIdV2) | **GET** /v2/updates/{update_id} | 
[**getUpdateHistoryV2**](ScanApi.md#getUpdateHistoryV2) | **POST** /v2/updates | 
[**getUpdatesBefore**](ScanApi.md#getUpdatesBefore) | **POST** /v0/backfilling/updates-before | 
[**getValidatorFaucetsByValidator**](ScanApi.md#getValidatorFaucetsByValidator) | **GET** /v0/validators/validator-faucets | 
[**listActivity**](ScanApi.md#listActivity) | **POST** /v0/activities | 
[**listAmuletPriceVotes**](ScanApi.md#listAmuletPriceVotes) | **GET** /v0/amulet-price/votes | 
[**listAnsEntries**](ScanApi.md#listAnsEntries) | **GET** /v0/ans-entries | 
[**listDsoRulesVoteRequests**](ScanApi.md#listDsoRulesVoteRequests) | **GET** /v0/admin/sv/voterequests | 
[**listDsoScans**](ScanApi.md#listDsoScans) | **GET** /v0/scans | 
[**listDsoSequencers**](ScanApi.md#listDsoSequencers) | **GET** /v0/dso-sequencers | 
[**listFeaturedAppRights**](ScanApi.md#listFeaturedAppRights) | **GET** /v0/featured-apps | 
[**listSvBftSequencers**](ScanApi.md#listSvBftSequencers) | **GET** /v0/sv-bft-sequencers | 
[**listValidatorLicenses**](ScanApi.md#listValidatorLicenses) | **GET** /v0/admin/validator/licenses | 
[**listVoteRequestResults**](ScanApi.md#listVoteRequestResults) | **POST** /v0/admin/sv/voteresults | 
[**listVoteRequestsByTrackingCid**](ScanApi.md#listVoteRequestsByTrackingCid) | **POST** /v0/voterequest | 
[**lookupAnsEntryByName**](ScanApi.md#lookupAnsEntryByName) | **GET** /v0/ans-entries/by-name/{name} | 
[**lookupAnsEntryByParty**](ScanApi.md#lookupAnsEntryByParty) | **GET** /v0/ans-entries/by-party/{party} | 
[**lookupDsoRulesVoteRequest**](ScanApi.md#lookupDsoRulesVoteRequest) | **GET** /v0/voterequests/{vote_request_contract_id} | 
[**lookupFeaturedAppRight**](ScanApi.md#lookupFeaturedAppRight) | **GET** /v0/featured-apps/{provider_party_id} | 
[**lookupTransferCommandCounterByParty**](ScanApi.md#lookupTransferCommandCounterByParty) | **GET** /v0/transfer-command-counter/{party} | 
[**lookupTransferCommandStatus**](ScanApi.md#lookupTransferCommandStatus) | **GET** /v0/transfer-command/status | 
[**lookupTransferPreapprovalByParty**](ScanApi.md#lookupTransferPreapprovalByParty) | **GET** /v0/transfer-preapprovals/by-party/{party} | 



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


## forceAcsSnapshotNow



Takes a snapshot of the ACS at the current time.
The responses can be used as parameters to '/v0/state/acs' to retrieve the snapshot.
Disabled in production environments due to its persistent alteration of
the behavior of future invocations of '/v0/state/acs', as it causes an
immediate internal snapshot and delay in the next automatic snapshot.

### Example

```bash
scan-api forceAcsSnapshotNow
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ForceAcsSnapshotResponse**](ForceAcsSnapshotResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAcsSnapshotAt



Returns the ACS in creation date ascending order, paged, for a given migration id and record time.

### Example

```bash
scan-api getAcsSnapshotAt
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acsRequest** | [**AcsRequest**](AcsRequest.md) |  |

### Return type

[**AcsResponse**](AcsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
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


## getClosedRounds



Every closed mining round on the ledger still in post-close process for
the connected Splice network, in round number order, earliest-first.

### Example

```bash
scan-api getClosedRounds
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetClosedRoundsResponse**](GetClosedRoundsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDateOfMostRecentSnapshotBefore



Returns the timestamp of the most recent snapshot before the given date, for the given migration_id.
This corresponds to the record time of the last transaction in the snapshot.

### Example

```bash
scan-api getDateOfMostRecentSnapshotBefore  before=value  migration_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **string** |  | [default to null]
 **migrationId** | **integer** |  | [default to null]

### Return type

[**AcsSnapshotTimestampResponse**](AcsSnapshotTimestampResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDsoInfo



### Example

```bash
scan-api getDsoInfo
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetDsoInfoResponse**](GetDsoInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getDsoPartyId



The party ID of the DSO for the Splice network connected by this Scan app.

### Example

```bash
scan-api getDsoPartyId
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetDsoPartyIdResponse**](GetDsoPartyIdResponse.md)

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


## getHoldingsStateAt



Returns the active amulet contracts for a given migration id and record time, in creation date ascending order, paged.

### Example

```bash
scan-api getHoldingsStateAt
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **holdingsStateRequest** | [**HoldingsStateRequest**](HoldingsStateRequest.md) |  |

### Return type

[**AcsResponse**](AcsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getHoldingsSummaryAt



Returns the summary of active amulet contracts for a given migration id and record time, for the given parties.
This is an aggregate of '/v0/holdings/state' by owner party ID with better performance than client-side computation.

### Example

```bash
scan-api getHoldingsSummaryAt
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **holdingsSummaryRequest** | [**HoldingsSummaryRequest**](HoldingsSummaryRequest.md) |  |

### Return type

[**HoldingsSummaryResponse**](HoldingsSummaryResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getImportUpdates



### Example

```bash
scan-api getImportUpdates
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getImportUpdatesRequest** | [**GetImportUpdatesRequest**](GetImportUpdatesRequest.md) |  |

### Return type

[**GetImportUpdatesResponse**](GetImportUpdatesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getMemberTrafficStatus



Get a member's traffic status as reported by the sequencer, according to
ledger state at the time of the request.

### Example

```bash
scan-api getMemberTrafficStatus domain_id=value member_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **string** | The synchronizer ID to look up traffic for. | [default to null]
 **memberId** | **string** | The participant or mediator whose traffic to look up, in the format
'code::id::fingerprint' where 'code' is 'PAR' or 'MED'. | [default to null]

### Return type

[**GetMemberTrafficStatusResponse**](GetMemberTrafficStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
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


## getOpenAndIssuingMiningRounds



All current open and issuing mining rounds, if the request is empty;
passing contract IDs in the request can reduce the response data for
polling/client-cache-update efficiency.

### Example

```bash
scan-api getOpenAndIssuingMiningRounds
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getOpenAndIssuingMiningRoundsRequest** | [**GetOpenAndIssuingMiningRoundsRequest**](GetOpenAndIssuingMiningRoundsRequest.md) |  |

### Return type

[**GetOpenAndIssuingMiningRoundsResponse**](GetOpenAndIssuingMiningRoundsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getPartyToParticipant



Get the ID of the participant hosting a given party.  This will fail if
there are multiple party-to-participant mappings for the given
synchronizer and party, which is not currently supported.

### Example

```bash
scan-api getPartyToParticipant domain_id=value party_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domainId** | **string** | The synchronizer ID to look up a mapping for. | [default to null]
 **partyId** | **string** | The party ID to lookup a participant ID for. | [default to null]

### Return type

[**GetPartyToParticipantResponse**](GetPartyToParticipantResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRewardsCollected



**Deprecated**. Get the total rewards collected ever

### Example

```bash
scan-api getRewardsCollected  round=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **round** | **integer** |  | [optional] [default to null]

### Return type

[**GetRewardsCollectedResponse**](GetRewardsCollectedResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getRoundOfLatestData



**Deprecated**. Get the latest round number for which aggregated data is available and
the ledger effective time at which the round was closed.

### Example

```bash
scan-api getRoundOfLatestData
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetRoundOfLatestDataResponse**](GetRoundOfLatestDataResponse.md)

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


## getTopProvidersByAppRewards



**Deprecated**. Get a list of top-earning app providers, and the total earned app
rewards for each

### Example

```bash
scan-api getTopProvidersByAppRewards  round=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **round** | **integer** |  | [default to null]
 **limit** | **integer** |  | [default to null]

### Return type

[**GetTopProvidersByAppRewardsResponse**](GetTopProvidersByAppRewardsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTopValidatorsByPurchasedTraffic



**Deprecated**. Get a list of validators and their domain fees spends, sorted by the
amount of extra traffic purchased

### Example

```bash
scan-api getTopValidatorsByPurchasedTraffic  round=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **round** | **integer** |  | [default to null]
 **limit** | **integer** |  | [default to null]

### Return type

[**GetTopValidatorsByPurchasedTrafficResponse**](GetTopValidatorsByPurchasedTrafficResponse.md)

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


## getTopValidatorsByValidatorRewards



**Deprecated**. Get a list of top-earning validators, and the total earned validator
rewards for each

### Example

```bash
scan-api getTopValidatorsByValidatorRewards  round=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **round** | **integer** |  | [default to null]
 **limit** | **integer** |  | [default to null]

### Return type

[**GetTopValidatorsByValidatorRewardsResponse**](GetTopValidatorsByValidatorRewardsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTotalAmuletBalance



**Deprecated**. Get the total balance of Amulet in the network

### Example

```bash
scan-api getTotalAmuletBalance  asOfEndOfRound=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asOfEndOfRound** | **integer** |  | [default to null]

### Return type

[**GetTotalAmuletBalanceResponse**](GetTotalAmuletBalanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getUpdateByIdV2



Returns the update with the given update_id.
Compared to '/v1/updates/{update_id}', the '/v2/updates/{update_id}' removes the 'offset' field in responses,
which was hardcoded to 1 in '/v1/updates/{update_id}' for compatibility, and is now removed.
'/v2/updates/{update_id}' sorts events lexicographically in 'events_by_id' by 'ID' for convenience, which should not be confused with the
order of events in the transaction, for this you should rely on the order of 'root_event_ids' and 'child_event_ids'.

### Example

```bash
scan-api getUpdateByIdV2 update_id=value  daml_value_encoding=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateId** | **string** |  | [default to null]
 **damlValueEncoding** | [**DamlValueEncoding**](.md) |  | [optional] [default to null]

### Return type

[**UpdateHistoryItemV2**](UpdateHistoryItemV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getUpdateHistoryV2



Returns the update history in ascending order, paged, from ledger begin or optionally starting after a record time.
Compared to '/v1/updates', the '/v2/updates' removes the 'offset' field in responses,
which was hardcoded to 1 in '/v1/updates' for compatibility, and is now removed.
'/v2/updates' sorts events lexicographically in 'events_by_id' by 'ID' for convenience, which should not be confused with the
order of events in the transaction, for this you should rely on the order of 'root_event_ids' and 'child_event_ids'.
Updates are ordered lexicographically by '(migration id, record time)'.
For a given migration id, each update has a unique record time.
The record time ranges of different migrations may overlap, i.e.,
it is not guaranteed that the maximum record time of one migration is smaller than the minimum record time of the next migration,
and there may be two updates with the same record time but different migration ids.

### Example

```bash
scan-api getUpdateHistoryV2
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateHistoryRequestV2** | [**UpdateHistoryRequestV2**](UpdateHistoryRequestV2.md) |  |

### Return type

[**UpdateHistoryResponseV2**](UpdateHistoryResponseV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
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


## getValidatorFaucetsByValidator



For every argument that is a valid onboarded validator, return
statistics on its liveness activity, according to on-ledger state at the
time of the request.

### Example

```bash
scan-api getValidatorFaucetsByValidator  Specify as:  validator_ids=value1 validator_ids=value2 validator_ids=...
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validatorIds** | [**array[string]**](string.md) | A list of validator party IDs, one per specification of the parameter.
Any party IDs not matching onboarded validators will be ignored | [default to null]

### Return type

[**GetValidatorFaucetsByValidatorResponse**](GetValidatorFaucetsByValidatorResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listActivity



**Deprecated**. Lists activities in descending order, paged, optionally starting after a provided event id.

### Example

```bash
scan-api listActivity
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listActivityRequest** | [**ListActivityRequest**](ListActivityRequest.md) |  |

### Return type

[**ListActivityResponse**](ListActivityResponse.md)

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


## listAnsEntries



Lists all non-expired ANS entries whose names are prefixed with the
'name_prefix', up to 'page_size' entries.

### Example

```bash
scan-api listAnsEntries  page_size=value  name_prefix=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **integer** | The maximum number of results returned.
Older (but still non-expired) results are listed first. | [default to null]
 **namePrefix** | **string** | Every result's name will start with this substring; if empty or absent,
all entries will be listed.
Does not have to be a whole word or segment; any substring will be accepted. | [optional] [default to null]

### Return type

[**ListEntriesResponse**](ListEntriesResponse.md)

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


## listDsoScans



Retrieve Canton scan configuration for all SVs, grouped by
connected synchronizer ID

### Example

```bash
scan-api listDsoScans
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListDsoScansResponse**](ListDsoScansResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listDsoSequencers



Retrieve Canton sequencer configuration for all SVs, grouped by
connected synchronizer ID

### Example

```bash
scan-api listDsoSequencers
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListDsoSequencersResponse**](ListDsoSequencersResponse.md)

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


## listValidatorLicenses



List all validators currently approved by members of the DSO, paginated,
sorted newest-first.

### Example

```bash
scan-api listValidatorLicenses  after=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **integer** | A 'next_page_token' from a prior response; if absent, return the first page. | [optional] [default to null]
 **limit** | **integer** | Maximum number of elements to return, 1000 by default. | [optional] [default to null]

### Return type

[**ListValidatorLicensesResponse**](ListValidatorLicensesResponse.md)

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


## lookupAnsEntryByName



If present, the ANS entry named exactly 'name'.

### Example

```bash
scan-api lookupAnsEntryByName name=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string** |  | [default to null]

### Return type

[**LookupEntryByNameResponse**](LookupEntryByNameResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## lookupAnsEntryByParty



If present, the first ANS entry for user 'party' according to
'name' lexicographic order.

### Example

```bash
scan-api lookupAnsEntryByParty party=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **party** | **string** | The user party ID that holds the ANS entry. | [default to null]

### Return type

[**LookupEntryByPartyResponse**](LookupEntryByPartyResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
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

