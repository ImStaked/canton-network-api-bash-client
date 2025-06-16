# Validator API Bash client

## Overview

This is a Bash client script for accessing Validator API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x scan-proxy-api

# Print the list of operations available on the service
$ ./scan-proxy-api -h

# Print the service description
$ ./scan-proxy-api --about

# Print detailed information about specific operation
$ ./scan-proxy-api <operationId> -h

# Make GET request
./scan-proxy-api --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
scan-proxy-api -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' | scan-proxy-api --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' | scan-proxy-api --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$ scan-proxy-api --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$ scan-proxy-api --host http://<hostname>:<port> --dry-run <operationid>

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
source scan-proxy-api.bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp scan-proxy-api.bash-completion /etc/bash-completion.d/scan-proxy-api
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

In Zsh, the generated `_scan-proxy-api` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to */api/validator*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ScanProxyApi* | [**getAmuletRules**](docs/ScanProxyApi.md#getamuletrules) | **GET** /v0/scan-proxy/amulet-rules | 
*ScanProxyApi* | [**getAnsRules**](docs/ScanProxyApi.md#getansrules) | **POST** /v0/scan-proxy/ans-rules | 
*ScanProxyApi* | [**getDsoPartyId**](docs/ScanProxyApi.md#getdsopartyid) | **GET** /v0/scan-proxy/dso-party-id | 
*ScanProxyApi* | [**getOpenAndIssuingMiningRounds**](docs/ScanProxyApi.md#getopenandissuingminingrounds) | **GET** /v0/scan-proxy/open-and-issuing-mining-rounds | 
*ScanProxyApi* | [**listAnsEntries**](docs/ScanProxyApi.md#listansentries) | **GET** /v0/scan-proxy/ans-entries | 
*ScanProxyApi* | [**lookupAnsEntryByName**](docs/ScanProxyApi.md#lookupansentrybyname) | **GET** /v0/scan-proxy/ans-entries/by-name/{name} | 
*ScanProxyApi* | [**lookupAnsEntryByParty**](docs/ScanProxyApi.md#lookupansentrybyparty) | **GET** /v0/scan-proxy/ans-entries/by-party/{party} | 
*ScanProxyApi* | [**lookupFeaturedAppRight**](docs/ScanProxyApi.md#lookupfeaturedappright) | **GET** /v0/scan-proxy/featured-apps/{provider_party_id} | 
*ScanProxyApi* | [**lookupTransferCommandCounterByParty**](docs/ScanProxyApi.md#lookuptransfercommandcounterbyparty) | **GET** /v0/scan-proxy/transfer-command-counter/{party} | 
*ScanProxyApi* | [**lookupTransferCommandStatus**](docs/ScanProxyApi.md#lookuptransfercommandstatus) | **GET** /v0/scan-proxy/transfer-command/status | 
*ScanProxyApi* | [**lookupTransferPreapprovalByParty**](docs/ScanProxyApi.md#lookuptransferpreapprovalbyparty) | **GET** /v0/scan-proxy/transfer-preapprovals/by-party/{party} | 


## Documentation For Models

 - [AnsEntry](docs/AnsEntry.md)
 - [BaseLookupTransferCommandStatusResponse](docs/BaseLookupTransferCommandStatusResponse.md)
 - [Contract](docs/Contract.md)
 - [ContractWithState](docs/ContractWithState.md)
 - [ErrorResponse](docs/ErrorResponse.md)
 - [GetAmuletRulesProxyResponse](docs/GetAmuletRulesProxyResponse.md)
 - [GetAnsRulesRequest](docs/GetAnsRulesRequest.md)
 - [GetAnsRulesResponse](docs/GetAnsRulesResponse.md)
 - [GetDsoPartyIdResponse](docs/GetDsoPartyIdResponse.md)
 - [GetOpenAndIssuingMiningRoundsProxyResponse](docs/GetOpenAndIssuingMiningRoundsProxyResponse.md)
 - [ListEntriesResponse](docs/ListEntriesResponse.md)
 - [LookupEntryByNameResponse](docs/LookupEntryByNameResponse.md)
 - [LookupEntryByPartyResponse](docs/LookupEntryByPartyResponse.md)
 - [LookupFeaturedAppRightResponse](docs/LookupFeaturedAppRightResponse.md)
 - [LookupTransferCommandCounterByPartyResponse](docs/LookupTransferCommandCounterByPartyResponse.md)
 - [LookupTransferCommandStatusResponse](docs/LookupTransferCommandStatusResponse.md)
 - [LookupTransferPreapprovalByPartyResponse](docs/LookupTransferPreapprovalByPartyResponse.md)
 - [MaybeCachedContractWithState](docs/MaybeCachedContractWithState.md)
 - [TransferCommandContractStatus](docs/TransferCommandContractStatus.md)
 - [TransferCommandContractWithStatus](docs/TransferCommandContractWithStatus.md)
 - [TransferCommandCreatedResponse](docs/TransferCommandCreatedResponse.md)
 - [TransferCommandFailedResponse](docs/TransferCommandFailedResponse.md)
 - [TransferCommandSentResponse](docs/TransferCommandSentResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.

