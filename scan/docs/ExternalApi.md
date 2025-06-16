# ExternalApi

All URIs are relative to */api/scan*

Method | HTTP request | Description
------------- | ------------- | -------------
[**forceAcsSnapshotNow**](ExternalApi.md#forceAcsSnapshotNow) | **POST** /v0/state/acs/force | 
[**getAcsSnapshotAt**](ExternalApi.md#getAcsSnapshotAt) | **POST** /v0/state/acs | 
[**getClosedRounds**](ExternalApi.md#getClosedRounds) | **GET** /v0/closed-rounds | 
[**getDateOfMostRecentSnapshotBefore**](ExternalApi.md#getDateOfMostRecentSnapshotBefore) | **GET** /v0/state/acs/snapshot-timestamp | 
[**getDsoInfo**](ExternalApi.md#getDsoInfo) | **GET** /v0/dso | 
[**getDsoPartyId**](ExternalApi.md#getDsoPartyId) | **GET** /v0/dso-party-id | 
[**getHoldingsStateAt**](ExternalApi.md#getHoldingsStateAt) | **POST** /v0/holdings/state | 
[**getHoldingsSummaryAt**](ExternalApi.md#getHoldingsSummaryAt) | **POST** /v0/holdings/summary | 
[**getMemberTrafficStatus**](ExternalApi.md#getMemberTrafficStatus) | **GET** /v0/domains/{domain_id}/members/{member_id}/traffic-status | 
[**getOpenAndIssuingMiningRounds**](ExternalApi.md#getOpenAndIssuingMiningRounds) | **POST** /v0/open-and-issuing-mining-rounds | 
[**getPartyToParticipant**](ExternalApi.md#getPartyToParticipant) | **GET** /v0/domains/{domain_id}/parties/{party_id}/participant-id | 
[**getUpdateByIdV2**](ExternalApi.md#getUpdateByIdV2) | **GET** /v2/updates/{update_id} | 
[**getUpdateHistoryV2**](ExternalApi.md#getUpdateHistoryV2) | **POST** /v2/updates | 
[**getValidatorFaucetsByValidator**](ExternalApi.md#getValidatorFaucetsByValidator) | **GET** /v0/validators/validator-faucets | 
[**listAnsEntries**](ExternalApi.md#listAnsEntries) | **GET** /v0/ans-entries | 
[**listDsoScans**](ExternalApi.md#listDsoScans) | **GET** /v0/scans | 
[**listDsoSequencers**](ExternalApi.md#listDsoSequencers) | **GET** /v0/dso-sequencers | 
[**listValidatorLicenses**](ExternalApi.md#listValidatorLicenses) | **GET** /v0/admin/validator/licenses | 
[**lookupAnsEntryByName**](ExternalApi.md#lookupAnsEntryByName) | **GET** /v0/ans-entries/by-name/{name} | 
[**lookupAnsEntryByParty**](ExternalApi.md#lookupAnsEntryByParty) | **GET** /v0/ans-entries/by-party/{party} | 



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

