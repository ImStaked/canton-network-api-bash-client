# AnsApi

All URIs are relative to */api/validator*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAnsEntry**](AnsApi.md#createAnsEntry) | **POST** /v0/entry/create | 
[**listAnsEntries**](AnsApi.md#listAnsEntries) | **GET** /v0/entry/all | 



## createAnsEntry



Requests the creation of a new ANS entry.
ANS entries need to be paid and renewed via subscription payments.

Upon requesting the creation of the ANS entry, a subscription request is created.
The user may accept the subscription request via their wallet by offering the initial payment.
Once the subscription request is accepted, the DSO automation burns the payment and creates the ANS entry.

### Example

```bash
ans-external-api createAnsEntry
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAnsEntryRequest** | [**CreateAnsEntryRequest**](CreateAnsEntryRequest.md) |  |

### Return type

[**CreateAnsEntryResponse**](CreateAnsEntryResponse.md)

### Authorization

[userAuth](../README.md#userAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listAnsEntries



Lists all ANS entries owned by the user.
Expired entries are not included in the response, even if the corresponding contracts are still active on the ledger.

### Example

```bash
ans-external-api listAnsEntries
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAnsEntriesResponse**](ListAnsEntriesResponse.md)

### Authorization

[userAuth](../README.md#userAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

