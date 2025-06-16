# Wallet API Bash client

## Overview

This is a Bash client script for accessing Wallet API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
chmod u+x ./internal-wallet-api.sh

# Print the list of operations available on the service
./internal-wallet-api.shinternal-wallet-api.sh -h

# Print the service description
./internal-wallet-api.shinternal-wallet-api.sh --about

# Print detailed information about specific operation
./internal-wallet-api.shinternal-wallet-api.sh <operationId> -h

# Make GET request
./internal-wallet-api.sh --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
./internal-wallet-api.sh -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
echo '<body_content>' | ./internal-wallet-api.sh --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
echo '<body_content>' | ./internal-wallet-api.sh --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
./internal-wallet-api.sh --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
./internal-wallet-api.sh --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to */api/validator*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*WalletApi* | [**acceptAppPaymentRequest**](docs/WalletApi.md#acceptapppaymentrequest) | **POST** /v0/wallet/app-payment-requests/{contract_id}/accept | 
*WalletApi* | [**acceptSubscriptionRequest**](docs/WalletApi.md#acceptsubscriptionrequest) | **POST** /v0/wallet/subscription-requests/{contract_id}/accept | 
*WalletApi* | [**acceptTokenStandardTransfer**](docs/WalletApi.md#accepttokenstandardtransfer) | **POST** /v0/wallet/token-standard/transfers/{contract_id}/accept | 
*WalletApi* | [**acceptTransferOffer**](docs/WalletApi.md#accepttransferoffer) | **POST** /v0/wallet/transfer-offers/{contract_id}/accept | 
*WalletApi* | [**cancelFeaturedAppRights**](docs/WalletApi.md#cancelfeaturedapprights) | **DELETE** /v0/wallet/cancel-featured-app-rights | 
*WalletApi* | [**cancelSubscriptionRequest**](docs/WalletApi.md#cancelsubscriptionrequest) | **DELETE** /v0/wallet/subscription-requests/{contract_id} | 
*WalletApi* | [**createTokenStandardTransfer**](docs/WalletApi.md#createtokenstandardtransfer) | **POST** /v0/wallet/token-standard/transfers | 
*WalletApi* | [**createTransferPreapproval**](docs/WalletApi.md#createtransferpreapproval) | **POST** /v0/wallet/transfer-preapproval | 
*WalletApi* | [**featureSupport**](docs/WalletApi.md#featuresupport) | **GET** /v0/feature-support | 
*WalletApi* | [**getAppPaymentRequest**](docs/WalletApi.md#getapppaymentrequest) | **GET** /v0/wallet/app-payment-requests/{contract_id} | 
*WalletApi* | [**getBalance**](docs/WalletApi.md#getbalance) | **GET** /v0/wallet/balance | 
*WalletApi* | [**getSubscriptionRequest**](docs/WalletApi.md#getsubscriptionrequest) | **GET** /v0/wallet/subscription-requests/{contract_id} | 
*WalletApi* | [**list**](docs/WalletApi.md#list) | **GET** /v0/wallet/amulets | 
*WalletApi* | [**listAcceptedAppPayments**](docs/WalletApi.md#listacceptedapppayments) | **GET** /v0/wallet/accepted-app-payments | 
*WalletApi* | [**listAcceptedTransferOffers**](docs/WalletApi.md#listacceptedtransferoffers) | **GET** /v0/wallet/accepted-transfer-offers | 
*WalletApi* | [**listAppPaymentRequests**](docs/WalletApi.md#listapppaymentrequests) | **GET** /v0/wallet/app-payment-requests | 
*WalletApi* | [**listAppRewardCoupons**](docs/WalletApi.md#listapprewardcoupons) | **GET** /v0/wallet/app-reward-coupons | 
*WalletApi* | [**listSubscriptionInitialPayments**](docs/WalletApi.md#listsubscriptioninitialpayments) | **GET** /v0/wallet/subscription-initial-payments | 
*WalletApi* | [**listSubscriptionRequests**](docs/WalletApi.md#listsubscriptionrequests) | **GET** /v0/wallet/subscription-requests | 
*WalletApi* | [**listSubscriptions**](docs/WalletApi.md#listsubscriptions) | **GET** /v0/wallet/subscriptions | 
*WalletApi* | [**listSvRewardCoupons**](docs/WalletApi.md#listsvrewardcoupons) | **GET** /v0/wallet/sv-reward-coupons | 
*WalletApi* | [**listTokenStandardTransfers**](docs/WalletApi.md#listtokenstandardtransfers) | **GET** /v0/wallet/token-standard/transfers | 
*WalletApi* | [**listTransactions**](docs/WalletApi.md#listtransactions) | **POST** /v0/wallet/transactions | 
*WalletApi* | [**listValidatorFaucetCoupons**](docs/WalletApi.md#listvalidatorfaucetcoupons) | **GET** /v0/wallet/validator-faucet-coupons | 
*WalletApi* | [**listValidatorLivenessActivityRecords**](docs/WalletApi.md#listvalidatorlivenessactivityrecords) | **GET** /v0/wallet/validator-liveness-activity-records | 
*WalletApi* | [**listValidatorRewardCoupons**](docs/WalletApi.md#listvalidatorrewardcoupons) | **GET** /v0/wallet/validator-reward-coupons | 
*WalletApi* | [**rejectAppPaymentRequest**](docs/WalletApi.md#rejectapppaymentrequest) | **POST** /v0/wallet/app-payment-requests/{contract_id}/reject | 
*WalletApi* | [**rejectSubscriptionRequest**](docs/WalletApi.md#rejectsubscriptionrequest) | **POST** /v0/wallet/subscription-requests/{contract_id}/reject | 
*WalletApi* | [**rejectTokenStandardTransfer**](docs/WalletApi.md#rejecttokenstandardtransfer) | **POST** /v0/wallet/token-standard/transfers/{contract_id}/reject | 
*WalletApi* | [**rejectTransferOffer**](docs/WalletApi.md#rejecttransferoffer) | **POST** /v0/wallet/transfer-offers/{contract_id}/reject | 
*WalletApi* | [**selfGrantFeatureAppRight**](docs/WalletApi.md#selfgrantfeatureappright) | **POST** /v0/wallet/self-grant-feature-app-right | 
*WalletApi* | [**tap**](docs/WalletApi.md#tap) | **POST** /v0/wallet/tap | 
*WalletApi* | [**transferPreapprovalSend**](docs/WalletApi.md#transferpreapprovalsend) | **POST** /v0/wallet/transfer-preapproval/send | 
*WalletApi* | [**userStatus**](docs/WalletApi.md#userstatus) | **GET** /v0/wallet/user-status | 
*WalletApi* | [**withdrawTokenStandardTransfer**](docs/WalletApi.md#withdrawtokenstandardtransfer) | **POST** /v0/wallet/token-standard/transfers/{contract_id}/withdraw | 
*WalletApi* | [**withdrawTransferOffer**](docs/WalletApi.md#withdrawtransferoffer) | **POST** /v0/wallet/transfer-offers/{contract_id}/withdraw | 


## Documentation For Models

 - [AcceptAppPaymentRequestRequest](docs/AcceptAppPaymentRequestRequest.md)
 - [AcceptAppPaymentRequestResponse](docs/AcceptAppPaymentRequestResponse.md)
 - [AcceptSubscriptionRequestResponse](docs/AcceptSubscriptionRequestResponse.md)
 - [AcceptTransferOfferResponse](docs/AcceptTransferOfferResponse.md)
 - [AmuletPosition](docs/AmuletPosition.md)
 - [BalanceChangeResponseItem](docs/BalanceChangeResponseItem.md)
 - [BaseListTransactionsResponseItem](docs/BaseListTransactionsResponseItem.md)
 - [Contract](docs/Contract.md)
 - [ContractWithState](docs/ContractWithState.md)
 - [CreateTokenStandardTransferRequest](docs/CreateTokenStandardTransferRequest.md)
 - [CreateTransferPreapprovalResponse](docs/CreateTransferPreapprovalResponse.md)
 - [ErrorResponse](docs/ErrorResponse.md)
 - [GetBalanceResponse](docs/GetBalanceResponse.md)
 - [ListAcceptedAppPaymentsResponse](docs/ListAcceptedAppPaymentsResponse.md)
 - [ListAcceptedTransferOffersResponse](docs/ListAcceptedTransferOffersResponse.md)
 - [ListAppPaymentRequestsResponse](docs/ListAppPaymentRequestsResponse.md)
 - [ListAppRewardCouponsResponse](docs/ListAppRewardCouponsResponse.md)
 - [ListResponse](docs/ListResponse.md)
 - [ListSubscriptionInitialPaymentsResponse](docs/ListSubscriptionInitialPaymentsResponse.md)
 - [ListSubscriptionRequestsResponse](docs/ListSubscriptionRequestsResponse.md)
 - [ListSubscriptionsResponse](docs/ListSubscriptionsResponse.md)
 - [ListSvRewardCouponsResponse](docs/ListSvRewardCouponsResponse.md)
 - [ListTokenStandardTransfersResponse](docs/ListTokenStandardTransfersResponse.md)
 - [ListTransactionsRequest](docs/ListTransactionsRequest.md)
 - [ListTransactionsResponse](docs/ListTransactionsResponse.md)
 - [ListTransactionsResponseItem](docs/ListTransactionsResponseItem.md)
 - [ListValidatorFaucetCouponsResponse](docs/ListValidatorFaucetCouponsResponse.md)
 - [ListValidatorLivenessActivityRecordsResponse](docs/ListValidatorLivenessActivityRecordsResponse.md)
 - [ListValidatorRewardCouponsResponse](docs/ListValidatorRewardCouponsResponse.md)
 - [NotificationResponseItem](docs/NotificationResponseItem.md)
 - [PartyAndAmount](docs/PartyAndAmount.md)
 - [RejectAppPaymentRequestRequest](docs/RejectAppPaymentRequestRequest.md)
 - [SelfGrantFeaturedAppRightResponse](docs/SelfGrantFeaturedAppRightResponse.md)
 - [Subscription](docs/Subscription.md)
 - [SubscriptionIdleState](docs/SubscriptionIdleState.md)
 - [SubscriptionPaymentState](docs/SubscriptionPaymentState.md)
 - [SubscriptionState](docs/SubscriptionState.md)
 - [TapRequest](docs/TapRequest.md)
 - [TapResponse](docs/TapResponse.md)
 - [TransactionSubtype](docs/TransactionSubtype.md)
 - [TransferInstructionCompleted](docs/TransferInstructionCompleted.md)
 - [TransferInstructionFailed](docs/TransferInstructionFailed.md)
 - [TransferInstructionPending](docs/TransferInstructionPending.md)
 - [TransferInstructionResultOutput](docs/TransferInstructionResultOutput.md)
 - [TransferInstructionResultResponse](docs/TransferInstructionResultResponse.md)
 - [TransferPreapprovalSendRequest](docs/TransferPreapprovalSendRequest.md)
 - [TransferResponseItem](docs/TransferResponseItem.md)
 - [UnknownResponseItem](docs/UnknownResponseItem.md)
 - [UserStatusResponse](docs/UserStatusResponse.md)
 - [WalletFeatureSupportResponse](docs/WalletFeatureSupportResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

