# WalletApi

All URIs are relative to */api/validator*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBuyTrafficRequest**](WalletApi.md#createBuyTrafficRequest) | **POST** /v0/wallet/buy-traffic-requests | 
[**createTransferOffer**](WalletApi.md#createTransferOffer) | **POST** /v0/wallet/transfer-offers | 
[**getBuyTrafficRequestStatus**](WalletApi.md#getBuyTrafficRequestStatus) | **POST** /v0/wallet/buy-traffic-requests/{tracking_id}/status | 
[**getTransferOfferStatus**](WalletApi.md#getTransferOfferStatus) | **POST** /v0/wallet/transfer-offers/{tracking_id}/status | 
[**listTransferOffers**](WalletApi.md#listTransferOffers) | **GET** /v0/wallet/transfer-offers | 



## createBuyTrafficRequest



Create a request to buy traffic. Note that this only creates the request to do so. Refer to the status endpoint to check if the request succeeded.

### Example

```bash
wallet-external-api createBuyTrafficRequest
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createBuyTrafficRequest** | [**CreateBuyTrafficRequest**](CreateBuyTrafficRequest.md) |  |

### Return type

[**CreateBuyTrafficRequestResponse**](CreateBuyTrafficRequestResponse.md)

### Authorization

[walletUserAuth](../README.md#walletUserAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createTransferOffer



Create an offer to directly transfer a given amount of Amulet to another party.
Direct transfers are a three-step process:
1. The sender creates a transfer offer
2. The receiver accepts the offer
3. The sender's wallet automation consumes the accepted offer and transfers the amount.
   Amulets are not locked for direct transfers.
   If the sender's wallet does not have enough Amulet to fulfill the offer at this point,
   the transfer will fail.

### Example

```bash
wallet-external-api createTransferOffer
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTransferOfferRequest** | [**CreateTransferOfferRequest**](CreateTransferOfferRequest.md) |  |

### Return type

[**CreateTransferOfferResponse**](CreateTransferOfferResponse.md)

### Authorization

[walletUserAuth](../README.md#walletUserAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBuyTrafficRequestStatus



Check the status of a buy traffic request with a given tracking id.

### Example

```bash
wallet-external-api getBuyTrafficRequestStatus tracking_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trackingId** | **string** |  | [default to null]

### Return type

[**GetBuyTrafficRequestStatusResponse**](GetBuyTrafficRequestStatusResponse.md)

### Authorization

[walletUserAuth](../README.md#walletUserAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getTransferOfferStatus



Check the status of a transfer offer with a given tracking id.

### Example

```bash
wallet-external-api getTransferOfferStatus tracking_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trackingId** | **string** |  | [default to null]

### Return type

[**GetTransferOfferStatusResponse**](GetTransferOfferStatusResponse.md)

### Authorization

[walletUserAuth](../README.md#walletUserAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listTransferOffers



List all open transfer offers where the user is either sender or receiver.

### Example

```bash
wallet-external-api listTransferOffers
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListTransferOffersResponse**](ListTransferOffersResponse.md)

### Authorization

[walletUserAuth](../README.md#walletUserAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

