# Wallet API Bash client

## Overview

This is a Bash client script for accessing Wallet API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$  --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

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
*WalletApi* | [**createBuyTrafficRequest**](docs/WalletApi.md#createbuytrafficrequest) | **POST** /v0/wallet/buy-traffic-requests | 
*WalletApi* | [**createTransferOffer**](docs/WalletApi.md#createtransferoffer) | **POST** /v0/wallet/transfer-offers | 
*WalletApi* | [**getBuyTrafficRequestStatus**](docs/WalletApi.md#getbuytrafficrequeststatus) | **POST** /v0/wallet/buy-traffic-requests/{tracking_id}/status | 
*WalletApi* | [**getTransferOfferStatus**](docs/WalletApi.md#gettransferofferstatus) | **POST** /v0/wallet/transfer-offers/{tracking_id}/status | 
*WalletApi* | [**listTransferOffers**](docs/WalletApi.md#listtransferoffers) | **GET** /v0/wallet/transfer-offers | 


## Documentation For Models

 - [BaseGetBuyTrafficRequestStatusResponse](docs/BaseGetBuyTrafficRequestStatusResponse.md)
 - [BaseGetTransferOfferStatusResponse](docs/BaseGetTransferOfferStatusResponse.md)
 - [BuyTrafficRequestCompletedResponse](docs/BuyTrafficRequestCompletedResponse.md)
 - [BuyTrafficRequestCreatedResponse](docs/BuyTrafficRequestCreatedResponse.md)
 - [BuyTrafficRequestFailedResponse](docs/BuyTrafficRequestFailedResponse.md)
 - [Contract](docs/Contract.md)
 - [CreateBuyTrafficRequest](docs/CreateBuyTrafficRequest.md)
 - [CreateBuyTrafficRequestResponse](docs/CreateBuyTrafficRequestResponse.md)
 - [CreateTransferOfferRequest](docs/CreateTransferOfferRequest.md)
 - [CreateTransferOfferResponse](docs/CreateTransferOfferResponse.md)
 - [ErrorResponse](docs/ErrorResponse.md)
 - [GetBuyTrafficRequestStatusResponse](docs/GetBuyTrafficRequestStatusResponse.md)
 - [GetTransferOfferStatusResponse](docs/GetTransferOfferStatusResponse.md)
 - [ListTransferOffersResponse](docs/ListTransferOffersResponse.md)
 - [TransferOfferAcceptedResponse](docs/TransferOfferAcceptedResponse.md)
 - [TransferOfferCompletedResponse](docs/TransferOfferCompletedResponse.md)
 - [TransferOfferCreatedResponse](docs/TransferOfferCreatedResponse.md)
 - [TransferOfferFailedResponse](docs/TransferOfferFailedResponse.md)


## Documentation For Authorization


## walletUserAuth


- **Type**: HTTP Bearer Token authentication (JWT)

