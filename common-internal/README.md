# Common schemas for Splice API definitions Bash client

## Overview

This is a Bash client script for accessing Common schemas for Splice API definitions service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
chmod u+x ./client.sh

# Print the list of operations available on the service
./client.sh -h

# Print the service description
./client.sh --about

# Print detailed information about specific operation
./client.sh <operationId> -h

# Make GET request
./client.sh --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
./client.sh -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
echo '<body_content>' | ./client.sh --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
echo '<body_content>' | ./client.sh --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
./client.sh --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
./client.sh --host http://<hostname>:<port> --dry-run <operationid>

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

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------


## Documentation For Models

 - [AssignedContract](docs/AssignedContract.md)
 - [BatchListVotesByVoteRequestsRequest](docs/BatchListVotesByVoteRequestsRequest.md)
 - [Contract](docs/Contract.md)
 - [ContractWithState](docs/ContractWithState.md)
 - [FeatureSupportResponse](docs/FeatureSupportResponse.md)
 - [GetDsoInfoResponse](docs/GetDsoInfoResponse.md)
 - [KeyPair](docs/KeyPair.md)
 - [KmsKeyId](docs/KmsKeyId.md)
 - [ListAmuletPriceVotesResponse](docs/ListAmuletPriceVotesResponse.md)
 - [ListDsoRulesVoteRequestsResponse](docs/ListDsoRulesVoteRequestsResponse.md)
 - [ListDsoRulesVoteResultsResponse](docs/ListDsoRulesVoteResultsResponse.md)
 - [ListValidatorLicensesResponse](docs/ListValidatorLicensesResponse.md)
 - [ListVoteRequestByTrackingCidResponse](docs/ListVoteRequestByTrackingCidResponse.md)
 - [ListVoteResultsRequest](docs/ListVoteResultsRequest.md)
 - [LookupDsoRulesVoteRequestResponse](docs/LookupDsoRulesVoteRequestResponse.md)
 - [MaybeCachedContract](docs/MaybeCachedContract.md)
 - [MaybeCachedContractWithState](docs/MaybeCachedContractWithState.md)
 - [NodeIdentitiesDump](docs/NodeIdentitiesDump.md)
 - [NodeKey](docs/NodeKey.md)
 - [ParticipantIdentityProvider](docs/ParticipantIdentityProvider.md)
 - [ParticipantUser](docs/ParticipantUser.md)
 - [ParticipantUserAnnotation](docs/ParticipantUserAnnotation.md)
 - [ParticipantUserRight](docs/ParticipantUserRight.md)
 - [ParticipantUsersData](docs/ParticipantUsersData.md)


## Documentation For Authorization

 All endpoints do not require authorization.

