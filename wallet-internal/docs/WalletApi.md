# WalletApi

All URIs are relative to */api/validator*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptAppPaymentRequest**](WalletApi.md#acceptAppPaymentRequest) | **POST** /v0/wallet/app-payment-requests/{contract_id}/accept | 
[**acceptSubscriptionRequest**](WalletApi.md#acceptSubscriptionRequest) | **POST** /v0/wallet/subscription-requests/{contract_id}/accept | 
[**acceptTokenStandardTransfer**](WalletApi.md#acceptTokenStandardTransfer) | **POST** /v0/wallet/token-standard/transfers/{contract_id}/accept | 
[**acceptTransferOffer**](WalletApi.md#acceptTransferOffer) | **POST** /v0/wallet/transfer-offers/{contract_id}/accept | 
[**cancelFeaturedAppRights**](WalletApi.md#cancelFeaturedAppRights) | **DELETE** /v0/wallet/cancel-featured-app-rights | 
[**cancelSubscriptionRequest**](WalletApi.md#cancelSubscriptionRequest) | **DELETE** /v0/wallet/subscription-requests/{contract_id} | 
[**createTokenStandardTransfer**](WalletApi.md#createTokenStandardTransfer) | **POST** /v0/wallet/token-standard/transfers | 
[**createTransferPreapproval**](WalletApi.md#createTransferPreapproval) | **POST** /v0/wallet/transfer-preapproval | 
[**featureSupport**](WalletApi.md#featureSupport) | **GET** /v0/feature-support | 
[**getAppPaymentRequest**](WalletApi.md#getAppPaymentRequest) | **GET** /v0/wallet/app-payment-requests/{contract_id} | 
[**getBalance**](WalletApi.md#getBalance) | **GET** /v0/wallet/balance | 
[**getSubscriptionRequest**](WalletApi.md#getSubscriptionRequest) | **GET** /v0/wallet/subscription-requests/{contract_id} | 
[**list**](WalletApi.md#list) | **GET** /v0/wallet/amulets | 
[**listAcceptedAppPayments**](WalletApi.md#listAcceptedAppPayments) | **GET** /v0/wallet/accepted-app-payments | 
[**listAcceptedTransferOffers**](WalletApi.md#listAcceptedTransferOffers) | **GET** /v0/wallet/accepted-transfer-offers | 
[**listAppPaymentRequests**](WalletApi.md#listAppPaymentRequests) | **GET** /v0/wallet/app-payment-requests | 
[**listAppRewardCoupons**](WalletApi.md#listAppRewardCoupons) | **GET** /v0/wallet/app-reward-coupons | 
[**listSubscriptionInitialPayments**](WalletApi.md#listSubscriptionInitialPayments) | **GET** /v0/wallet/subscription-initial-payments | 
[**listSubscriptionRequests**](WalletApi.md#listSubscriptionRequests) | **GET** /v0/wallet/subscription-requests | 
[**listSubscriptions**](WalletApi.md#listSubscriptions) | **GET** /v0/wallet/subscriptions | 
[**listSvRewardCoupons**](WalletApi.md#listSvRewardCoupons) | **GET** /v0/wallet/sv-reward-coupons | 
[**listTokenStandardTransfers**](WalletApi.md#listTokenStandardTransfers) | **GET** /v0/wallet/token-standard/transfers | 
[**listTransactions**](WalletApi.md#listTransactions) | **POST** /v0/wallet/transactions | 
[**listValidatorFaucetCoupons**](WalletApi.md#listValidatorFaucetCoupons) | **GET** /v0/wallet/validator-faucet-coupons | 
[**listValidatorLivenessActivityRecords**](WalletApi.md#listValidatorLivenessActivityRecords) | **GET** /v0/wallet/validator-liveness-activity-records | 
[**listValidatorRewardCoupons**](WalletApi.md#listValidatorRewardCoupons) | **GET** /v0/wallet/validator-reward-coupons | 
[**rejectAppPaymentRequest**](WalletApi.md#rejectAppPaymentRequest) | **POST** /v0/wallet/app-payment-requests/{contract_id}/reject | 
[**rejectSubscriptionRequest**](WalletApi.md#rejectSubscriptionRequest) | **POST** /v0/wallet/subscription-requests/{contract_id}/reject | 
[**rejectTokenStandardTransfer**](WalletApi.md#rejectTokenStandardTransfer) | **POST** /v0/wallet/token-standard/transfers/{contract_id}/reject | 
[**rejectTransferOffer**](WalletApi.md#rejectTransferOffer) | **POST** /v0/wallet/transfer-offers/{contract_id}/reject | 
[**selfGrantFeatureAppRight**](WalletApi.md#selfGrantFeatureAppRight) | **POST** /v0/wallet/self-grant-feature-app-right | 
[**tap**](WalletApi.md#tap) | **POST** /v0/wallet/tap | 
[**transferPreapprovalSend**](WalletApi.md#transferPreapprovalSend) | **POST** /v0/wallet/transfer-preapproval/send | 
[**userStatus**](WalletApi.md#userStatus) | **GET** /v0/wallet/user-status | 
[**withdrawTokenStandardTransfer**](WalletApi.md#withdrawTokenStandardTransfer) | **POST** /v0/wallet/token-standard/transfers/{contract_id}/withdraw | 
[**withdrawTransferOffer**](WalletApi.md#withdrawTransferOffer) | **POST** /v0/wallet/transfer-offers/{contract_id}/withdraw | 



## acceptAppPaymentRequest



### Example

```bash
wallet-internal-api acceptAppPaymentRequest contract_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **string** |  | [default to null]

### Return type

[**AcceptAppPaymentRequestResponse**](AcceptAppPaymentRequestResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## acceptSubscriptionRequest



### Example

```bash
wallet-internal-api acceptSubscriptionRequest contract_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **string** |  | [default to null]

### Return type

[**AcceptSubscriptionRequestResponse**](AcceptSubscriptionRequestResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## acceptTokenStandardTransfer



### Example

```bash
wallet-internal-api acceptTokenStandardTransfer contract_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **string** |  | [default to null]

### Return type

[**TransferInstructionResultResponse**](TransferInstructionResultResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## acceptTransferOffer



### Example

```bash
wallet-internal-api acceptTransferOffer contract_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **string** |  | [default to null]

### Return type

[**AcceptTransferOfferResponse**](AcceptTransferOfferResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## cancelFeaturedAppRights



### Example

```bash
wallet-internal-api cancelFeaturedAppRights
```

### Parameters

This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## cancelSubscriptionRequest



### Example

```bash
wallet-internal-api cancelSubscriptionRequest contract_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createTokenStandardTransfer



### Example

```bash
wallet-internal-api createTokenStandardTransfer
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTokenStandardTransferRequest** | [**CreateTokenStandardTransferRequest**](CreateTokenStandardTransferRequest.md) |  |

### Return type

[**TransferInstructionResultResponse**](TransferInstructionResultResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## createTransferPreapproval



### Example

```bash
wallet-internal-api createTransferPreapproval
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CreateTransferPreapprovalResponse**](CreateTransferPreapprovalResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## featureSupport



### Example

```bash
wallet-internal-api featureSupport
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WalletFeatureSupportResponse**](WalletFeatureSupportResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getAppPaymentRequest



### Example

```bash
wallet-internal-api getAppPaymentRequest contract_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **string** |  | [default to null]

### Return type

[**ContractWithState**](ContractWithState.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getBalance



### Example

```bash
wallet-internal-api getBalance
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetBalanceResponse**](GetBalanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## getSubscriptionRequest



### Example

```bash
wallet-internal-api getSubscriptionRequest contract_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **string** |  | [default to null]

### Return type

[**Contract**](Contract.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list



### Example

```bash
wallet-internal-api list
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListResponse**](ListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listAcceptedAppPayments



### Example

```bash
wallet-internal-api listAcceptedAppPayments
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAcceptedAppPaymentsResponse**](ListAcceptedAppPaymentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listAcceptedTransferOffers



### Example

```bash
wallet-internal-api listAcceptedTransferOffers
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAcceptedTransferOffersResponse**](ListAcceptedTransferOffersResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listAppPaymentRequests



### Example

```bash
wallet-internal-api listAppPaymentRequests
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAppPaymentRequestsResponse**](ListAppPaymentRequestsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listAppRewardCoupons



### Example

```bash
wallet-internal-api listAppRewardCoupons
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAppRewardCouponsResponse**](ListAppRewardCouponsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listSubscriptionInitialPayments



### Example

```bash
wallet-internal-api listSubscriptionInitialPayments
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListSubscriptionInitialPaymentsResponse**](ListSubscriptionInitialPaymentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listSubscriptionRequests



### Example

```bash
wallet-internal-api listSubscriptionRequests
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListSubscriptionRequestsResponse**](ListSubscriptionRequestsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listSubscriptions



### Example

```bash
wallet-internal-api listSubscriptions
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListSubscriptionsResponse**](ListSubscriptionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listSvRewardCoupons



### Example

```bash
wallet-internal-api listSvRewardCoupons
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListSvRewardCouponsResponse**](ListSvRewardCouponsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listTokenStandardTransfers



List all open transfers where the user is either sender or receiver.

### Example

```bash
wallet-internal-api listTokenStandardTransfers
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListTokenStandardTransfersResponse**](ListTokenStandardTransfersResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listTransactions



### Example

```bash
wallet-internal-api listTransactions
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listTransactionsRequest** | [**ListTransactionsRequest**](ListTransactionsRequest.md) |  |

### Return type

[**ListTransactionsResponse**](ListTransactionsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listValidatorFaucetCoupons



### Example

```bash
wallet-internal-api listValidatorFaucetCoupons
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListValidatorFaucetCouponsResponse**](ListValidatorFaucetCouponsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listValidatorLivenessActivityRecords



### Example

```bash
wallet-internal-api listValidatorLivenessActivityRecords
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListValidatorLivenessActivityRecordsResponse**](ListValidatorLivenessActivityRecordsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listValidatorRewardCoupons



### Example

```bash
wallet-internal-api listValidatorRewardCoupons
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListValidatorRewardCouponsResponse**](ListValidatorRewardCouponsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## rejectAppPaymentRequest



### Example

```bash
wallet-internal-api rejectAppPaymentRequest contract_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## rejectSubscriptionRequest



### Example

```bash
wallet-internal-api rejectSubscriptionRequest contract_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## rejectTokenStandardTransfer



### Example

```bash
wallet-internal-api rejectTokenStandardTransfer contract_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **string** |  | [default to null]

### Return type

[**TransferInstructionResultResponse**](TransferInstructionResultResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## rejectTransferOffer



### Example

```bash
wallet-internal-api rejectTransferOffer contract_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## selfGrantFeatureAppRight



### Example

```bash
wallet-internal-api selfGrantFeatureAppRight
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **map** |  | [optional]

### Return type

[**SelfGrantFeaturedAppRightResponse**](SelfGrantFeaturedAppRightResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## tap



### Example

```bash
wallet-internal-api tap
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tapRequest** | [**TapRequest**](TapRequest.md) |  |

### Return type

[**TapResponse**](TapResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## transferPreapprovalSend



### Example

```bash
wallet-internal-api transferPreapprovalSend
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transferPreapprovalSendRequest** | [**TransferPreapprovalSendRequest**](TransferPreapprovalSendRequest.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not Applicable

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## userStatus



### Example

```bash
wallet-internal-api userStatus
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UserStatusResponse**](UserStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## withdrawTokenStandardTransfer



### Example

```bash
wallet-internal-api withdrawTokenStandardTransfer contract_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **string** |  | [default to null]

### Return type

[**TransferInstructionResultResponse**](TransferInstructionResultResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## withdrawTransferOffer



### Example

```bash
wallet-internal-api withdrawTransferOffer contract_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractId** | **string** |  | [default to null]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

