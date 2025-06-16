# DeprecatedApi

All URIs are relative to */api/scan*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAcsSnapshot**](DeprecatedApi.md#getAcsSnapshot) | **GET** /v0/acs/{party} | 
[**getAggregatedRounds**](DeprecatedApi.md#getAggregatedRounds) | **GET** /v0/aggregated-rounds | 
[**getAmuletConfigForRound**](DeprecatedApi.md#getAmuletConfigForRound) | **GET** /v0/amulet-config-for-round | 
[**getRewardsCollected**](DeprecatedApi.md#getRewardsCollected) | **GET** /v0/rewards-collected | 
[**getRoundOfLatestData**](DeprecatedApi.md#getRoundOfLatestData) | **GET** /v0/round-of-latest-data | 
[**getTopProvidersByAppRewards**](DeprecatedApi.md#getTopProvidersByAppRewards) | **GET** /v0/top-providers-by-app-rewards | 
[**getTopValidatorsByPurchasedTraffic**](DeprecatedApi.md#getTopValidatorsByPurchasedTraffic) | **GET** /v0/top-validators-by-purchased-traffic | 
[**getTopValidatorsByValidatorRewards**](DeprecatedApi.md#getTopValidatorsByValidatorRewards) | **GET** /v0/top-validators-by-validator-rewards | 
[**getTotalAmuletBalance**](DeprecatedApi.md#getTotalAmuletBalance) | **GET** /v0/total-amulet-balance | 
[**getUpdateById**](DeprecatedApi.md#getUpdateById) | **GET** /v0/updates/{update_id} | 
[**getUpdateByIdV1**](DeprecatedApi.md#getUpdateByIdV1) | **GET** /v1/updates/{update_id} | 
[**getUpdateHistory**](DeprecatedApi.md#getUpdateHistory) | **POST** /v0/updates | 
[**getUpdateHistoryV1**](DeprecatedApi.md#getUpdateHistoryV1) | **POST** /v1/updates | 
[**getWalletBalance**](DeprecatedApi.md#getWalletBalance) | **GET** /v0/wallet-balance | 
[**listActivity**](DeprecatedApi.md#listActivity) | **POST** /v0/activities | 
[**listRoundPartyTotals**](DeprecatedApi.md#listRoundPartyTotals) | **POST** /v0/round-party-totals | 
[**listRoundTotals**](DeprecatedApi.md#listRoundTotals) | **POST** /v0/round-totals | 
[**listTransactionHistory**](DeprecatedApi.md#listTransactionHistory) | **POST** /v0/transactions | 



## getAcsSnapshot



**Deprecated**. Fetch the current SV participant ACS snapshot for the DSO and 'party'.

### Example

```bash
 getAcsSnapshot party=value  record_time=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **party** | **string** |  | [default to null]
 **recordTime** | **string** |  | [optional] [default to null]

### Return type

[**GetAcsSnapshotResponse**](GetAcsSnapshotResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAggregatedRounds



**Deprecated**. Retrieve the current earliest and latest rounds aggregated for this Scan.

### Example

```bash
 getAggregatedRounds
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAggregatedRoundsResponse**](GetAggregatedRoundsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAmuletConfigForRound



**Deprecated**. Retrieve some information from the 'AmuletRules' selected for the given round

### Example

```bash
 getAmuletConfigForRound  round=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **round** | **integer** |  | [default to null]

### Return type

[**GetAmuletConfigForRoundResponse**](GetAmuletConfigForRoundResponse.md)

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
 getRewardsCollected  round=value
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
 getRoundOfLatestData
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


## getTopProvidersByAppRewards



**Deprecated**. Get a list of top-earning app providers, and the total earned app
rewards for each

### Example

```bash
 getTopProvidersByAppRewards  round=value  limit=value
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
 getTopValidatorsByPurchasedTraffic  round=value  limit=value
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


## getTopValidatorsByValidatorRewards



**Deprecated**. Get a list of top-earning validators, and the total earned validator
rewards for each

### Example

```bash
 getTopValidatorsByValidatorRewards  round=value  limit=value
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
 getTotalAmuletBalance  asOfEndOfRound=value
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


## getUpdateById



**Deprecated**, use /v2/updates/{update_id} instead.

### Example

```bash
 getUpdateById update_id=value  lossless=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateId** | **string** |  | [default to null]
 **lossless** | **boolean** | Whether contract payload should be encoded into json using a lossless, but much harder to process, encoding.
This is mostly used for backend calls, and is not recommended for external users.
Optional and defaults to false. | [optional] [default to null]

### Return type

[**UpdateHistoryItem**](UpdateHistoryItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getUpdateByIdV1



Returns the update with the given update_id.
Unlike /v0/updates/{update_id}, this endpoint returns responses that are consistent across different
scan instances. Event ids returned by this endpoint are not comparable to event ids returned by /v0/updates.
The order of items in events_by_id is not defined.

### Example

```bash
 getUpdateByIdV1 update_id=value  daml_value_encoding=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateId** | **string** |  | [default to null]
 **damlValueEncoding** | [**DamlValueEncoding**](.md) |  | [optional] [default to null]

### Return type

[**UpdateHistoryItem**](UpdateHistoryItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getUpdateHistory



**Deprecated**, use /v2/updates instead.
Returns the update history in ascending order, paged, from ledger begin or optionally starting after a record time.

### Example

```bash
 getUpdateHistory
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateHistoryRequest** | [**UpdateHistoryRequest**](UpdateHistoryRequest.md) |  |

### Return type

[**UpdateHistoryResponse**](UpdateHistoryResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getUpdateHistoryV1



Returns the update history in ascending order, paged, from ledger begin or optionally starting after a record time.
Unlike /v0/updates, this endpoint returns responses that are consistent across different
scan instances. Event ids returned by this endpoint are not comparable to event ids returned by /v0/updates.

Updates are ordered lexicographically by '(migration id, record time)'.
For a given migration id, each update has a unique record time.
The record time ranges of different migrations may overlap, i.e.,
it is not guaranteed that the maximum record time of one migration is smaller than the minimum record time of the next migration,
and there may be two updates with the same record time but different migration ids.
The order of items in events_by_id is not defined.

### Example

```bash
 getUpdateHistoryV1
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateHistoryRequestV1** | [**UpdateHistoryRequestV1**](UpdateHistoryRequestV1.md) |  |

### Return type

[**UpdateHistoryResponse**](UpdateHistoryResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getWalletBalance



**Deprecated**, use /v0/holdings/summary with /v0/state/acs/snapshot-timestamp instead. Get the Amulet balance for a specific party at the end of a closed round

### Example

```bash
 getWalletBalance  party_id=value  asOfEndOfRound=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partyId** | **string** |  | [default to null]
 **asOfEndOfRound** | **integer** |  | [default to null]

### Return type

[**GetWalletBalanceResponse**](GetWalletBalanceResponse.md)

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
 listActivity
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


## listRoundPartyTotals



**Deprecated**. Retrieve per-party Amulet statistics for up to 50 closed rounds.

### Example

```bash
 listRoundPartyTotals
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listRoundPartyTotalsRequest** | [**ListRoundPartyTotalsRequest**](ListRoundPartyTotalsRequest.md) |  |

### Return type

[**ListRoundPartyTotalsResponse**](ListRoundPartyTotalsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listRoundTotals



**Deprecated**. List Amulet statistics for up to 200 closed rounds.

### Example

```bash
 listRoundTotals
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listRoundTotalsRequest** | [**ListRoundTotalsRequest**](ListRoundTotalsRequest.md) |  |

### Return type

[**ListRoundTotalsResponse**](ListRoundTotalsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listTransactionHistory



**Deprecated**. Lists transactions, by default in ascending order, paged, from ledger begin or optionally starting after a provided event id.

### Example

```bash
 listTransactionHistory
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionHistoryRequest** | [**TransactionHistoryRequest**](TransactionHistoryRequest.md) |  |

### Return type

[**TransactionHistoryResponse**](TransactionHistoryResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

