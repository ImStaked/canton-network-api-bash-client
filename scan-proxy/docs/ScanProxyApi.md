# ScanProxyApi

All URIs are relative to */api/validator*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAmuletRules**](ScanProxyApi.md#getAmuletRules) | **GET** /v0/scan-proxy/amulet-rules | 
[**getAnsRules**](ScanProxyApi.md#getAnsRules) | **POST** /v0/scan-proxy/ans-rules | 
[**getDsoPartyId**](ScanProxyApi.md#getDsoPartyId) | **GET** /v0/scan-proxy/dso-party-id | 
[**getOpenAndIssuingMiningRounds**](ScanProxyApi.md#getOpenAndIssuingMiningRounds) | **GET** /v0/scan-proxy/open-and-issuing-mining-rounds | 
[**listAnsEntries**](ScanProxyApi.md#listAnsEntries) | **GET** /v0/scan-proxy/ans-entries | 
[**lookupAnsEntryByName**](ScanProxyApi.md#lookupAnsEntryByName) | **GET** /v0/scan-proxy/ans-entries/by-name/{name} | 
[**lookupAnsEntryByParty**](ScanProxyApi.md#lookupAnsEntryByParty) | **GET** /v0/scan-proxy/ans-entries/by-party/{party} | 
[**lookupFeaturedAppRight**](ScanProxyApi.md#lookupFeaturedAppRight) | **GET** /v0/scan-proxy/featured-apps/{provider_party_id} | 
[**lookupTransferCommandCounterByParty**](ScanProxyApi.md#lookupTransferCommandCounterByParty) | **GET** /v0/scan-proxy/transfer-command-counter/{party} | 
[**lookupTransferCommandStatus**](ScanProxyApi.md#lookupTransferCommandStatus) | **GET** /v0/scan-proxy/transfer-command/status | 
[**lookupTransferPreapprovalByParty**](ScanProxyApi.md#lookupTransferPreapprovalByParty) | **GET** /v0/scan-proxy/transfer-preapprovals/by-party/{party} | 



## getAmuletRules



### Example

```bash
scan-proxy-api getAmuletRules
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAmuletRulesProxyResponse**](GetAmuletRulesProxyResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAnsRules



### Example

```bash
scan-proxy-api getAnsRules
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


## getDsoPartyId



### Example

```bash
scan-proxy-api getDsoPartyId
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


## getOpenAndIssuingMiningRounds



### Example

```bash
scan-proxy-api getOpenAndIssuingMiningRounds
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetOpenAndIssuingMiningRoundsProxyResponse**](GetOpenAndIssuingMiningRoundsProxyResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listAnsEntries



### Example

```bash
scan-proxy-api listAnsEntries  page_size=value  name_prefix=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **integer** |  | [default to null]
 **namePrefix** | **string** |  | [optional] [default to null]

### Return type

[**ListEntriesResponse**](ListEntriesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## lookupAnsEntryByName



### Example

```bash
scan-proxy-api lookupAnsEntryByName name=value
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



### Example

```bash
scan-proxy-api lookupAnsEntryByParty party=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **party** | **string** |  | [default to null]

### Return type

[**LookupEntryByPartyResponse**](LookupEntryByPartyResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## lookupFeaturedAppRight



### Example

```bash
scan-proxy-api lookupFeaturedAppRight provider_party_id=value
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



### Example

```bash
scan-proxy-api lookupTransferCommandCounterByParty party=value
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



Retrieve the status of all transfer commands of the given sender for the specified nonce.

### Example

```bash
scan-proxy-api lookupTransferCommandStatus  sender=value  nonce=value
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



### Example

```bash
scan-proxy-api lookupTransferPreapprovalByParty party=value
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

