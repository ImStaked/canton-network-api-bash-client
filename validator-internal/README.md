# Validator API Bash client

## Overview

This is a Bash client script for accessing Validator API service.

The script uses cURL underneath for making all REST calls.

This api requires authentication via a bearer token.
```shell
# Retrieve the bearer token from auth provider
$ VALIDATOR_API_BEARER=$(curl -s --request POST \    
  --url https://dev-deploi.eu.auth0.com/oauth/token \
  --header 'content-type: application/json' \
  --data '{
    "client_id":"<Auth provider client id for the validator api>",
    "client_secret":"<Auth provider client secret for the validator api>",
    "audience":"https://wallet-cndevnet.deploi.org/api",
    "grant_type":"client_credentials"
  }' | jq -r '.access_token'
)
$ BEARER='authorization: Bearer '$VALIDATOR_API_BEARER''
# Whenever the api requires the bearer token header simply add $BEARER to the end of the command.
```
How to use the client
```shell
# Make sure the script has executable rights
$ chmod u+x client.sh

# Print the list of operations available on the service
$ ./client.sh -h

# Print the service description
$ ./client.sh --about

# Print detailed information about specific operation
$ ./client.sh <operationId> -h

# Make GET request
$ ./client.sh --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
$ ./client.sh -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' | ./client.sh --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' | ./client.sh --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$ ./client.sh --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$ ./client.sh --host http://<hostname>:<port> --dry-run <operationid>

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
*CommonApi* | [**isLive**](docs/CommonApi.md#islive) | **GET** /livez | 
*CommonApi* | [**isReady**](docs/CommonApi.md#isready) | **GET** /readyz | 
*ValidatorApi* | [**cancelTransferPreapprovalByParty**](docs/ValidatorApi.md#canceltransferpreapprovalbyparty) | **DELETE** /v0/admin/transfer-preapprovals/by-party/{receiver-party} | 
*ValidatorApi* | [**createExternalPartySetupProposal**](docs/ValidatorApi.md#createexternalpartysetupproposal) | **POST** /v0/admin/external-party/setup-proposal | 
*ValidatorApi* | [**dumpParticipantIdentities**](docs/ValidatorApi.md#dumpparticipantidentities) | **GET** /v0/admin/participant/identities | 
*ValidatorApi* | [**generateExternalPartyTopology**](docs/ValidatorApi.md#generateexternalpartytopology) | **POST** /v0/admin/external-party/topology/generate | 
*ValidatorApi* | [**getDecentralizedSynchronizerConnectionConfig**](docs/ValidatorApi.md#getdecentralizedsynchronizerconnectionconfig) | **GET** /v0/admin/participant/global-domain-connection-config | 
*ValidatorApi* | [**getExternalPartyBalance**](docs/ValidatorApi.md#getexternalpartybalance) | **GET** /v0/admin/external-party/balance | 
*ValidatorApi* | [**getValidatorDomainDataSnapshot**](docs/ValidatorApi.md#getvalidatordomaindatasnapshot) | **GET** /v0/admin/domain/data-snapshot | 
*ValidatorApi* | [**listExternalPartySetupProposals**](docs/ValidatorApi.md#listexternalpartysetupproposals) | **GET** /v0/admin/external-party/setup-proposal | 
*ValidatorApi* | [**listTransferPreapprovals**](docs/ValidatorApi.md#listtransferpreapprovals) | **GET** /v0/admin/transfer-preapprovals | 
*ValidatorApi* | [**listUsers**](docs/ValidatorApi.md#listusers) | **GET** /v0/admin/users | 
*ValidatorApi* | [**lookupTransferPreapprovalByParty**](docs/ValidatorApi.md#lookuptransferpreapprovalbyparty) | **GET** /v0/admin/transfer-preapprovals/by-party/{receiver-party} | 
*ValidatorApi* | [**offboardUser**](docs/ValidatorApi.md#offboarduser) | **POST** /v0/admin/users/offboard | 
*ValidatorApi* | [**onboardUser**](docs/ValidatorApi.md#onboarduser) | **POST** /v0/admin/users | 
*ValidatorApi* | [**prepareAcceptExternalPartySetupProposal**](docs/ValidatorApi.md#prepareacceptexternalpartysetupproposal) | **POST** /v0/admin/external-party/setup-proposal/prepare-accept | 
*ValidatorApi* | [**prepareTransferPreapprovalSend**](docs/ValidatorApi.md#preparetransferpreapprovalsend) | **POST** /v0/admin/external-party/transfer-preapproval/prepare-send | 
*ValidatorApi* | [**register**](docs/ValidatorApi.md#register) | **POST** /v0/register | 
*ValidatorApi* | [**submitAcceptExternalPartySetupProposal**](docs/ValidatorApi.md#submitacceptexternalpartysetupproposal) | **POST** /v0/admin/external-party/setup-proposal/submit-accept | 
*ValidatorApi* | [**submitExternalPartyTopology**](docs/ValidatorApi.md#submitexternalpartytopology) | **POST** /v0/admin/external-party/topology/submit | 
*ValidatorApi* | [**submitTransferPreapprovalSend**](docs/ValidatorApi.md#submittransferpreapprovalsend) | **POST** /v0/admin/external-party/transfer-preapproval/submit-send | 
*ValidatorPublicApi* | [**getValidatorUserInfo**](docs/ValidatorPublicApi.md#getvalidatoruserinfo) | **GET** /v0/validator-user | 


## Documentation For Models

 - [Contract](docs/Contract.md)
 - [ContractWithState](docs/ContractWithState.md)
 - [CreateExternalPartySetupProposalRequest](docs/CreateExternalPartySetupProposalRequest.md)
 - [CreateExternalPartySetupProposalResponse](docs/CreateExternalPartySetupProposalResponse.md)
 - [Dar](docs/Dar.md)
 - [DomainMigrationDump](docs/DomainMigrationDump.md)
 - [ErrorResponse](docs/ErrorResponse.md)
 - [ExternalPartyBalanceResponse](docs/ExternalPartyBalanceResponse.md)
 - [ExternalPartySubmission](docs/ExternalPartySubmission.md)
 - [GenerateExternalPartyTopologyRequest](docs/GenerateExternalPartyTopologyRequest.md)
 - [GenerateExternalPartyTopologyResponse](docs/GenerateExternalPartyTopologyResponse.md)
 - [GetDecentralizedSynchronizerConnectionConfigResponse](docs/GetDecentralizedSynchronizerConnectionConfigResponse.md)
 - [GetValidatorDomainDataSnapshotResponse](docs/GetValidatorDomainDataSnapshotResponse.md)
 - [GetValidatorUserInfoResponse](docs/GetValidatorUserInfoResponse.md)
 - [KeyPair](docs/KeyPair.md)
 - [KmsKeyId](docs/KmsKeyId.md)
 - [ListExternalPartySetupProposalsResponse](docs/ListExternalPartySetupProposalsResponse.md)
 - [ListTransferPreapprovalsResponse](docs/ListTransferPreapprovalsResponse.md)
 - [ListUsersResponse](docs/ListUsersResponse.md)
 - [LookupTransferPreapprovalByPartyResponse](docs/LookupTransferPreapprovalByPartyResponse.md)
 - [NodeIdentitiesDump](docs/NodeIdentitiesDump.md)
 - [NodeKey](docs/NodeKey.md)
 - [OnboardUserRequest](docs/OnboardUserRequest.md)
 - [OnboardUserResponse](docs/OnboardUserResponse.md)
 - [ParticipantIdentityProvider](docs/ParticipantIdentityProvider.md)
 - [ParticipantUser](docs/ParticipantUser.md)
 - [ParticipantUserAnnotation](docs/ParticipantUserAnnotation.md)
 - [ParticipantUserRight](docs/ParticipantUserRight.md)
 - [ParticipantUsersData](docs/ParticipantUsersData.md)
 - [PrepareAcceptExternalPartySetupProposalRequest](docs/PrepareAcceptExternalPartySetupProposalRequest.md)
 - [PrepareAcceptExternalPartySetupProposalResponse](docs/PrepareAcceptExternalPartySetupProposalResponse.md)
 - [PrepareTransferPreapprovalSendRequest](docs/PrepareTransferPreapprovalSendRequest.md)
 - [PrepareTransferPreapprovalSendResponse](docs/PrepareTransferPreapprovalSendResponse.md)
 - [RegistrationResponse](docs/RegistrationResponse.md)
 - [SequencerAliasToConnections](docs/SequencerAliasToConnections.md)
 - [SequencerConnections](docs/SequencerConnections.md)
 - [SequencerSubmissionRequestAmplification](docs/SequencerSubmissionRequestAmplification.md)
 - [SignedTopologyTx](docs/SignedTopologyTx.md)
 - [SubmitAcceptExternalPartySetupProposalRequest](docs/SubmitAcceptExternalPartySetupProposalRequest.md)
 - [SubmitAcceptExternalPartySetupProposalResponse](docs/SubmitAcceptExternalPartySetupProposalResponse.md)
 - [SubmitExternalPartyTopologyRequest](docs/SubmitExternalPartyTopologyRequest.md)
 - [SubmitExternalPartyTopologyResponse](docs/SubmitExternalPartyTopologyResponse.md)
 - [SubmitTransferPreapprovalSendRequest](docs/SubmitTransferPreapprovalSendRequest.md)
 - [SubmitTransferPreapprovalSendResponse](docs/SubmitTransferPreapprovalSendResponse.md)
 - [TopologyTx](docs/TopologyTx.md)


## Documentation For Authorization


## userAuth


- **Type**: HTTP Bearer Token authentication (JWT)

## adminAuth


- **Type**: HTTP Bearer Token authentication (JWT)

