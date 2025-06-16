# Scan API Bash client

## Overview

This is a Bash client script for accessing Scan API service.

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

All URIs are relative to */api/scan*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CommonApi* | [**getHealthStatus**](docs/CommonApi.md#gethealthstatus) | **GET** /status | 
*CommonApi* | [**getVersion**](docs/CommonApi.md#getversion) | **GET** /version | 
*CommonApi* | [**isLive**](docs/CommonApi.md#islive) | **GET** /livez | 
*CommonApi* | [**isReady**](docs/CommonApi.md#isready) | **GET** /readyz | 
*DeprecatedApi* | [**getAcsSnapshot**](docs/DeprecatedApi.md#getacssnapshot) | **GET** /v0/acs/{party} | 
*DeprecatedApi* | [**getAggregatedRounds**](docs/DeprecatedApi.md#getaggregatedrounds) | **GET** /v0/aggregated-rounds | 
*DeprecatedApi* | [**getAmuletConfigForRound**](docs/DeprecatedApi.md#getamuletconfigforround) | **GET** /v0/amulet-config-for-round | 
*DeprecatedApi* | [**getRewardsCollected**](docs/DeprecatedApi.md#getrewardscollected) | **GET** /v0/rewards-collected | 
*DeprecatedApi* | [**getRoundOfLatestData**](docs/DeprecatedApi.md#getroundoflatestdata) | **GET** /v0/round-of-latest-data | 
*DeprecatedApi* | [**getTopProvidersByAppRewards**](docs/DeprecatedApi.md#gettopprovidersbyapprewards) | **GET** /v0/top-providers-by-app-rewards | 
*DeprecatedApi* | [**getTopValidatorsByPurchasedTraffic**](docs/DeprecatedApi.md#gettopvalidatorsbypurchasedtraffic) | **GET** /v0/top-validators-by-purchased-traffic | 
*DeprecatedApi* | [**getTopValidatorsByValidatorRewards**](docs/DeprecatedApi.md#gettopvalidatorsbyvalidatorrewards) | **GET** /v0/top-validators-by-validator-rewards | 
*DeprecatedApi* | [**getTotalAmuletBalance**](docs/DeprecatedApi.md#gettotalamuletbalance) | **GET** /v0/total-amulet-balance | 
*DeprecatedApi* | [**getUpdateById**](docs/DeprecatedApi.md#getupdatebyid) | **GET** /v0/updates/{update_id} | 
*DeprecatedApi* | [**getUpdateByIdV1**](docs/DeprecatedApi.md#getupdatebyidv1) | **GET** /v1/updates/{update_id} | 
*DeprecatedApi* | [**getUpdateHistory**](docs/DeprecatedApi.md#getupdatehistory) | **POST** /v0/updates | 
*DeprecatedApi* | [**getUpdateHistoryV1**](docs/DeprecatedApi.md#getupdatehistoryv1) | **POST** /v1/updates | 
*DeprecatedApi* | [**getWalletBalance**](docs/DeprecatedApi.md#getwalletbalance) | **GET** /v0/wallet-balance | 
*DeprecatedApi* | [**listActivity**](docs/DeprecatedApi.md#listactivity) | **POST** /v0/activities | 
*DeprecatedApi* | [**listRoundPartyTotals**](docs/DeprecatedApi.md#listroundpartytotals) | **POST** /v0/round-party-totals | 
*DeprecatedApi* | [**listRoundTotals**](docs/DeprecatedApi.md#listroundtotals) | **POST** /v0/round-totals | 
*DeprecatedApi* | [**listTransactionHistory**](docs/DeprecatedApi.md#listtransactionhistory) | **POST** /v0/transactions | 
*ExternalApi* | [**forceAcsSnapshotNow**](docs/ExternalApi.md#forceacssnapshotnow) | **POST** /v0/state/acs/force | 
*ExternalApi* | [**getAcsSnapshotAt**](docs/ExternalApi.md#getacssnapshotat) | **POST** /v0/state/acs | 
*ExternalApi* | [**getClosedRounds**](docs/ExternalApi.md#getclosedrounds) | **GET** /v0/closed-rounds | 
*ExternalApi* | [**getDateOfMostRecentSnapshotBefore**](docs/ExternalApi.md#getdateofmostrecentsnapshotbefore) | **GET** /v0/state/acs/snapshot-timestamp | 
*ExternalApi* | [**getDsoInfo**](docs/ExternalApi.md#getdsoinfo) | **GET** /v0/dso | 
*ExternalApi* | [**getDsoPartyId**](docs/ExternalApi.md#getdsopartyid) | **GET** /v0/dso-party-id | 
*ExternalApi* | [**getHoldingsStateAt**](docs/ExternalApi.md#getholdingsstateat) | **POST** /v0/holdings/state | 
*ExternalApi* | [**getHoldingsSummaryAt**](docs/ExternalApi.md#getholdingssummaryat) | **POST** /v0/holdings/summary | 
*ExternalApi* | [**getMemberTrafficStatus**](docs/ExternalApi.md#getmembertrafficstatus) | **GET** /v0/domains/{domain_id}/members/{member_id}/traffic-status | 
*ExternalApi* | [**getOpenAndIssuingMiningRounds**](docs/ExternalApi.md#getopenandissuingminingrounds) | **POST** /v0/open-and-issuing-mining-rounds | 
*ExternalApi* | [**getPartyToParticipant**](docs/ExternalApi.md#getpartytoparticipant) | **GET** /v0/domains/{domain_id}/parties/{party_id}/participant-id | 
*ExternalApi* | [**getUpdateByIdV2**](docs/ExternalApi.md#getupdatebyidv2) | **GET** /v2/updates/{update_id} | 
*ExternalApi* | [**getUpdateHistoryV2**](docs/ExternalApi.md#getupdatehistoryv2) | **POST** /v2/updates | 
*ExternalApi* | [**getValidatorFaucetsByValidator**](docs/ExternalApi.md#getvalidatorfaucetsbyvalidator) | **GET** /v0/validators/validator-faucets | 
*ExternalApi* | [**listAnsEntries**](docs/ExternalApi.md#listansentries) | **GET** /v0/ans-entries | 
*ExternalApi* | [**listDsoScans**](docs/ExternalApi.md#listdsoscans) | **GET** /v0/scans | 
*ExternalApi* | [**listDsoSequencers**](docs/ExternalApi.md#listdsosequencers) | **GET** /v0/dso-sequencers | 
*ExternalApi* | [**listValidatorLicenses**](docs/ExternalApi.md#listvalidatorlicenses) | **GET** /v0/admin/validator/licenses | 
*ExternalApi* | [**lookupAnsEntryByName**](docs/ExternalApi.md#lookupansentrybyname) | **GET** /v0/ans-entries/by-name/{name} | 
*ExternalApi* | [**lookupAnsEntryByParty**](docs/ExternalApi.md#lookupansentrybyparty) | **GET** /v0/ans-entries/by-party/{party} | 
*InternalApi* | [**featureSupport**](docs/InternalApi.md#featuresupport) | **GET** /v0/feature-support | 
*InternalApi* | [**getAmuletRules**](docs/InternalApi.md#getamuletrules) | **POST** /v0/amulet-rules | 
*InternalApi* | [**getAnsRules**](docs/InternalApi.md#getansrules) | **POST** /v0/ans-rules | 
*InternalApi* | [**getBackfillingStatus**](docs/InternalApi.md#getbackfillingstatus) | **GET** /v0/backfilling/status | 
*InternalApi* | [**getExternalPartyAmuletRules**](docs/InternalApi.md#getexternalpartyamuletrules) | **POST** /v0/external-party-amulet-rules | 
*InternalApi* | [**getMigrationInfo**](docs/InternalApi.md#getmigrationinfo) | **POST** /v0/backfilling/migration-info | 
*InternalApi* | [**getMigrationSchedule**](docs/InternalApi.md#getmigrationschedule) | **GET** /v0/migrations/schedule | 
*InternalApi* | [**getSpliceInstanceNames**](docs/InternalApi.md#getspliceinstancenames) | **GET** /v0/splice-instance-names | 
*InternalApi* | [**getSynchronizerBootstrappingTransactions**](docs/InternalApi.md#getsynchronizerbootstrappingtransactions) | **GET** /v0/synchronizer-bootstrapping-transactions/{domain_id_prefix} | 
*InternalApi* | [**getSynchronizerIdentities**](docs/InternalApi.md#getsynchronizeridentities) | **GET** /v0/synchronizer-identities/{domain_id_prefix} | 
*InternalApi* | [**getTopValidatorsByValidatorFaucets**](docs/InternalApi.md#gettopvalidatorsbyvalidatorfaucets) | **GET** /v0/top-validators-by-validator-faucets | 
*InternalApi* | [**getUpdatesBefore**](docs/InternalApi.md#getupdatesbefore) | **POST** /v0/backfilling/updates-before | 
*InternalApi* | [**listAmuletPriceVotes**](docs/InternalApi.md#listamuletpricevotes) | **GET** /v0/amulet-price/votes | 
*InternalApi* | [**listDsoRulesVoteRequests**](docs/InternalApi.md#listdsorulesvoterequests) | **GET** /v0/admin/sv/voterequests | 
*InternalApi* | [**listFeaturedAppRights**](docs/InternalApi.md#listfeaturedapprights) | **GET** /v0/featured-apps | 
*InternalApi* | [**listSvBftSequencers**](docs/InternalApi.md#listsvbftsequencers) | **GET** /v0/sv-bft-sequencers | 
*InternalApi* | [**listVoteRequestResults**](docs/InternalApi.md#listvoterequestresults) | **POST** /v0/admin/sv/voteresults | 
*InternalApi* | [**listVoteRequestsByTrackingCid**](docs/InternalApi.md#listvoterequestsbytrackingcid) | **POST** /v0/voterequest | 
*InternalApi* | [**lookupDsoRulesVoteRequest**](docs/InternalApi.md#lookupdsorulesvoterequest) | **GET** /v0/voterequests/{vote_request_contract_id} | 
*InternalApi* | [**lookupFeaturedAppRight**](docs/InternalApi.md#lookupfeaturedappright) | **GET** /v0/featured-apps/{provider_party_id} | 
*InternalApi* | [**lookupTransferCommandCounterByParty**](docs/InternalApi.md#lookuptransfercommandcounterbyparty) | **GET** /v0/transfer-command-counter/{party} | 
*InternalApi* | [**lookupTransferCommandStatus**](docs/InternalApi.md#lookuptransfercommandstatus) | **GET** /v0/transfer-command/status | 
*InternalApi* | [**lookupTransferPreapprovalByParty**](docs/InternalApi.md#lookuptransferpreapprovalbyparty) | **GET** /v0/transfer-preapprovals/by-party/{party} | 
*ScanApi* | [**featureSupport**](docs/ScanApi.md#featuresupport) | **GET** /v0/feature-support | 
*ScanApi* | [**forceAcsSnapshotNow**](docs/ScanApi.md#forceacssnapshotnow) | **POST** /v0/state/acs/force | 
*ScanApi* | [**getAcsSnapshotAt**](docs/ScanApi.md#getacssnapshotat) | **POST** /v0/state/acs | 
*ScanApi* | [**getAmuletRules**](docs/ScanApi.md#getamuletrules) | **POST** /v0/amulet-rules | 
*ScanApi* | [**getAnsRules**](docs/ScanApi.md#getansrules) | **POST** /v0/ans-rules | 
*ScanApi* | [**getBackfillingStatus**](docs/ScanApi.md#getbackfillingstatus) | **GET** /v0/backfilling/status | 
*ScanApi* | [**getClosedRounds**](docs/ScanApi.md#getclosedrounds) | **GET** /v0/closed-rounds | 
*ScanApi* | [**getDateOfMostRecentSnapshotBefore**](docs/ScanApi.md#getdateofmostrecentsnapshotbefore) | **GET** /v0/state/acs/snapshot-timestamp | 
*ScanApi* | [**getDsoInfo**](docs/ScanApi.md#getdsoinfo) | **GET** /v0/dso | 
*ScanApi* | [**getDsoPartyId**](docs/ScanApi.md#getdsopartyid) | **GET** /v0/dso-party-id | 
*ScanApi* | [**getExternalPartyAmuletRules**](docs/ScanApi.md#getexternalpartyamuletrules) | **POST** /v0/external-party-amulet-rules | 
*ScanApi* | [**getHoldingsStateAt**](docs/ScanApi.md#getholdingsstateat) | **POST** /v0/holdings/state | 
*ScanApi* | [**getHoldingsSummaryAt**](docs/ScanApi.md#getholdingssummaryat) | **POST** /v0/holdings/summary | 
*ScanApi* | [**getImportUpdates**](docs/ScanApi.md#getimportupdates) | **POST** /v0/backfilling/import-updates | 
*ScanApi* | [**getMemberTrafficStatus**](docs/ScanApi.md#getmembertrafficstatus) | **GET** /v0/domains/{domain_id}/members/{member_id}/traffic-status | 
*ScanApi* | [**getMigrationInfo**](docs/ScanApi.md#getmigrationinfo) | **POST** /v0/backfilling/migration-info | 
*ScanApi* | [**getMigrationSchedule**](docs/ScanApi.md#getmigrationschedule) | **GET** /v0/migrations/schedule | 
*ScanApi* | [**getOpenAndIssuingMiningRounds**](docs/ScanApi.md#getopenandissuingminingrounds) | **POST** /v0/open-and-issuing-mining-rounds | 
*ScanApi* | [**getPartyToParticipant**](docs/ScanApi.md#getpartytoparticipant) | **GET** /v0/domains/{domain_id}/parties/{party_id}/participant-id | 
*ScanApi* | [**getRewardsCollected**](docs/ScanApi.md#getrewardscollected) | **GET** /v0/rewards-collected | 
*ScanApi* | [**getRoundOfLatestData**](docs/ScanApi.md#getroundoflatestdata) | **GET** /v0/round-of-latest-data | 
*ScanApi* | [**getSpliceInstanceNames**](docs/ScanApi.md#getspliceinstancenames) | **GET** /v0/splice-instance-names | 
*ScanApi* | [**getSynchronizerBootstrappingTransactions**](docs/ScanApi.md#getsynchronizerbootstrappingtransactions) | **GET** /v0/synchronizer-bootstrapping-transactions/{domain_id_prefix} | 
*ScanApi* | [**getSynchronizerIdentities**](docs/ScanApi.md#getsynchronizeridentities) | **GET** /v0/synchronizer-identities/{domain_id_prefix} | 
*ScanApi* | [**getTopProvidersByAppRewards**](docs/ScanApi.md#gettopprovidersbyapprewards) | **GET** /v0/top-providers-by-app-rewards | 
*ScanApi* | [**getTopValidatorsByPurchasedTraffic**](docs/ScanApi.md#gettopvalidatorsbypurchasedtraffic) | **GET** /v0/top-validators-by-purchased-traffic | 
*ScanApi* | [**getTopValidatorsByValidatorFaucets**](docs/ScanApi.md#gettopvalidatorsbyvalidatorfaucets) | **GET** /v0/top-validators-by-validator-faucets | 
*ScanApi* | [**getTopValidatorsByValidatorRewards**](docs/ScanApi.md#gettopvalidatorsbyvalidatorrewards) | **GET** /v0/top-validators-by-validator-rewards | 
*ScanApi* | [**getTotalAmuletBalance**](docs/ScanApi.md#gettotalamuletbalance) | **GET** /v0/total-amulet-balance | 
*ScanApi* | [**getUpdateByIdV2**](docs/ScanApi.md#getupdatebyidv2) | **GET** /v2/updates/{update_id} | 
*ScanApi* | [**getUpdateHistoryV2**](docs/ScanApi.md#getupdatehistoryv2) | **POST** /v2/updates | 
*ScanApi* | [**getUpdatesBefore**](docs/ScanApi.md#getupdatesbefore) | **POST** /v0/backfilling/updates-before | 
*ScanApi* | [**getValidatorFaucetsByValidator**](docs/ScanApi.md#getvalidatorfaucetsbyvalidator) | **GET** /v0/validators/validator-faucets | 
*ScanApi* | [**listActivity**](docs/ScanApi.md#listactivity) | **POST** /v0/activities | 
*ScanApi* | [**listAmuletPriceVotes**](docs/ScanApi.md#listamuletpricevotes) | **GET** /v0/amulet-price/votes | 
*ScanApi* | [**listAnsEntries**](docs/ScanApi.md#listansentries) | **GET** /v0/ans-entries | 
*ScanApi* | [**listDsoRulesVoteRequests**](docs/ScanApi.md#listdsorulesvoterequests) | **GET** /v0/admin/sv/voterequests | 
*ScanApi* | [**listDsoScans**](docs/ScanApi.md#listdsoscans) | **GET** /v0/scans | 
*ScanApi* | [**listDsoSequencers**](docs/ScanApi.md#listdsosequencers) | **GET** /v0/dso-sequencers | 
*ScanApi* | [**listFeaturedAppRights**](docs/ScanApi.md#listfeaturedapprights) | **GET** /v0/featured-apps | 
*ScanApi* | [**listSvBftSequencers**](docs/ScanApi.md#listsvbftsequencers) | **GET** /v0/sv-bft-sequencers | 
*ScanApi* | [**listValidatorLicenses**](docs/ScanApi.md#listvalidatorlicenses) | **GET** /v0/admin/validator/licenses | 
*ScanApi* | [**listVoteRequestResults**](docs/ScanApi.md#listvoterequestresults) | **POST** /v0/admin/sv/voteresults | 
*ScanApi* | [**listVoteRequestsByTrackingCid**](docs/ScanApi.md#listvoterequestsbytrackingcid) | **POST** /v0/voterequest | 
*ScanApi* | [**lookupAnsEntryByName**](docs/ScanApi.md#lookupansentrybyname) | **GET** /v0/ans-entries/by-name/{name} | 
*ScanApi* | [**lookupAnsEntryByParty**](docs/ScanApi.md#lookupansentrybyparty) | **GET** /v0/ans-entries/by-party/{party} | 
*ScanApi* | [**lookupDsoRulesVoteRequest**](docs/ScanApi.md#lookupdsorulesvoterequest) | **GET** /v0/voterequests/{vote_request_contract_id} | 
*ScanApi* | [**lookupFeaturedAppRight**](docs/ScanApi.md#lookupfeaturedappright) | **GET** /v0/featured-apps/{provider_party_id} | 
*ScanApi* | [**lookupTransferCommandCounterByParty**](docs/ScanApi.md#lookuptransfercommandcounterbyparty) | **GET** /v0/transfer-command-counter/{party} | 
*ScanApi* | [**lookupTransferCommandStatus**](docs/ScanApi.md#lookuptransfercommandstatus) | **GET** /v0/transfer-command/status | 
*ScanApi* | [**lookupTransferPreapprovalByParty**](docs/ScanApi.md#lookuptransferpreapprovalbyparty) | **GET** /v0/transfer-preapprovals/by-party/{party} | 


## Documentation For Models

 - [AbortTransferInstruction](docs/AbortTransferInstruction.md)
 - [AcsRequest](docs/AcsRequest.md)
 - [AcsResponse](docs/AcsResponse.md)
 - [AcsSnapshotTimestampResponse](docs/AcsSnapshotTimestampResponse.md)
 - [ActualMemberTrafficState](docs/ActualMemberTrafficState.md)
 - [AmuletAmount](docs/AmuletAmount.md)
 - [AnsEntry](docs/AnsEntry.md)
 - [BalanceChange](docs/BalanceChange.md)
 - [BaseLookupTransferCommandStatusResponse](docs/BaseLookupTransferCommandStatusResponse.md)
 - [BatchListVotesByVoteRequestsRequest](docs/BatchListVotesByVoteRequestsRequest.md)
 - [CheckAndUpdateValidatorTrafficBalanceResponse](docs/CheckAndUpdateValidatorTrafficBalanceResponse.md)
 - [Contract](docs/Contract.md)
 - [ContractWithState](docs/ContractWithState.md)
 - [CreatedEvent](docs/CreatedEvent.md)
 - [DamlValueEncoding](docs/DamlValueEncoding.md)
 - [DomainScans](docs/DomainScans.md)
 - [DomainSequencers](docs/DomainSequencers.md)
 - [DsoSequencer](docs/DsoSequencer.md)
 - [ErrorResponse](docs/ErrorResponse.md)
 - [ExercisedEvent](docs/ExercisedEvent.md)
 - [FailureStatusResponse](docs/FailureStatusResponse.md)
 - [FeatureSupportResponse](docs/FeatureSupportResponse.md)
 - [ForceAcsSnapshotResponse](docs/ForceAcsSnapshotResponse.md)
 - [GetAcsSnapshotResponse](docs/GetAcsSnapshotResponse.md)
 - [GetAggregatedRoundsResponse](docs/GetAggregatedRoundsResponse.md)
 - [GetAmuletConfigForRoundResponse](docs/GetAmuletConfigForRoundResponse.md)
 - [GetAmuletRulesRequest](docs/GetAmuletRulesRequest.md)
 - [GetAmuletRulesResponse](docs/GetAmuletRulesResponse.md)
 - [GetAnsRulesRequest](docs/GetAnsRulesRequest.md)
 - [GetAnsRulesResponse](docs/GetAnsRulesResponse.md)
 - [GetBackfillingStatusResponse](docs/GetBackfillingStatusResponse.md)
 - [GetClosedRoundsResponse](docs/GetClosedRoundsResponse.md)
 - [GetDsoInfoResponse](docs/GetDsoInfoResponse.md)
 - [GetDsoPartyIdResponse](docs/GetDsoPartyIdResponse.md)
 - [GetExternalPartyAmuletRulesRequest](docs/GetExternalPartyAmuletRulesRequest.md)
 - [GetExternalPartyAmuletRulesResponse](docs/GetExternalPartyAmuletRulesResponse.md)
 - [GetImportUpdatesRequest](docs/GetImportUpdatesRequest.md)
 - [GetImportUpdatesResponse](docs/GetImportUpdatesResponse.md)
 - [GetMemberTrafficStatusResponse](docs/GetMemberTrafficStatusResponse.md)
 - [GetMigrationInfoRequest](docs/GetMigrationInfoRequest.md)
 - [GetMigrationInfoResponse](docs/GetMigrationInfoResponse.md)
 - [GetOpenAndIssuingMiningRoundsRequest](docs/GetOpenAndIssuingMiningRoundsRequest.md)
 - [GetOpenAndIssuingMiningRoundsResponse](docs/GetOpenAndIssuingMiningRoundsResponse.md)
 - [GetPartyToParticipantResponse](docs/GetPartyToParticipantResponse.md)
 - [GetRewardsCollectedResponse](docs/GetRewardsCollectedResponse.md)
 - [GetRoundOfLatestDataResponse](docs/GetRoundOfLatestDataResponse.md)
 - [GetSpliceInstanceNamesResponse](docs/GetSpliceInstanceNamesResponse.md)
 - [GetTopProvidersByAppRewardsResponse](docs/GetTopProvidersByAppRewardsResponse.md)
 - [GetTopValidatorsByPurchasedTrafficResponse](docs/GetTopValidatorsByPurchasedTrafficResponse.md)
 - [GetTopValidatorsByValidatorFaucetsResponse](docs/GetTopValidatorsByValidatorFaucetsResponse.md)
 - [GetTopValidatorsByValidatorRewardsResponse](docs/GetTopValidatorsByValidatorRewardsResponse.md)
 - [GetTotalAmuletBalanceResponse](docs/GetTotalAmuletBalanceResponse.md)
 - [GetUpdatesBeforeRequest](docs/GetUpdatesBeforeRequest.md)
 - [GetUpdatesBeforeResponse](docs/GetUpdatesBeforeResponse.md)
 - [GetValidatorFaucetsByValidatorResponse](docs/GetValidatorFaucetsByValidatorResponse.md)
 - [GetValidatorTrafficBalanceResponse](docs/GetValidatorTrafficBalanceResponse.md)
 - [GetWalletBalanceResponse](docs/GetWalletBalanceResponse.md)
 - [HoldingsStateRequest](docs/HoldingsStateRequest.md)
 - [HoldingsSummary](docs/HoldingsSummary.md)
 - [HoldingsSummaryRequest](docs/HoldingsSummaryRequest.md)
 - [HoldingsSummaryResponse](docs/HoldingsSummaryResponse.md)
 - [ListActivityRequest](docs/ListActivityRequest.md)
 - [ListActivityResponse](docs/ListActivityResponse.md)
 - [ListActivityResponseItem](docs/ListActivityResponseItem.md)
 - [ListAmuletPriceVotesResponse](docs/ListAmuletPriceVotesResponse.md)
 - [ListDsoRulesVoteRequestsResponse](docs/ListDsoRulesVoteRequestsResponse.md)
 - [ListDsoRulesVoteResultsResponse](docs/ListDsoRulesVoteResultsResponse.md)
 - [ListDsoScansResponse](docs/ListDsoScansResponse.md)
 - [ListDsoSequencersResponse](docs/ListDsoSequencersResponse.md)
 - [ListEntriesResponse](docs/ListEntriesResponse.md)
 - [ListFeaturedAppRightsResponse](docs/ListFeaturedAppRightsResponse.md)
 - [ListRoundPartyTotalsRequest](docs/ListRoundPartyTotalsRequest.md)
 - [ListRoundPartyTotalsResponse](docs/ListRoundPartyTotalsResponse.md)
 - [ListRoundTotalsRequest](docs/ListRoundTotalsRequest.md)
 - [ListRoundTotalsResponse](docs/ListRoundTotalsResponse.md)
 - [ListSvBftSequencersResponse](docs/ListSvBftSequencersResponse.md)
 - [ListValidatorLicensesResponse](docs/ListValidatorLicensesResponse.md)
 - [ListVoteRequestByTrackingCidResponse](docs/ListVoteRequestByTrackingCidResponse.md)
 - [ListVoteResultsRequest](docs/ListVoteResultsRequest.md)
 - [LookupDsoRulesVoteRequestResponse](docs/LookupDsoRulesVoteRequestResponse.md)
 - [LookupEntryByNameResponse](docs/LookupEntryByNameResponse.md)
 - [LookupEntryByPartyResponse](docs/LookupEntryByPartyResponse.md)
 - [LookupFeaturedAppRightResponse](docs/LookupFeaturedAppRightResponse.md)
 - [LookupTransferCommandCounterByPartyResponse](docs/LookupTransferCommandCounterByPartyResponse.md)
 - [LookupTransferCommandStatusResponse](docs/LookupTransferCommandStatusResponse.md)
 - [LookupTransferPreapprovalByPartyResponse](docs/LookupTransferPreapprovalByPartyResponse.md)
 - [MaybeCachedContractWithState](docs/MaybeCachedContractWithState.md)
 - [MemberTrafficStatus](docs/MemberTrafficStatus.md)
 - [MigrationSchedule](docs/MigrationSchedule.md)
 - [NodeStatus](docs/NodeStatus.md)
 - [NotInitialized](docs/NotInitialized.md)
 - [NotInitializedStatusResponse](docs/NotInitializedStatusResponse.md)
 - [PartyAndRewards](docs/PartyAndRewards.md)
 - [RateStep](docs/RateStep.md)
 - [ReceiverAmount](docs/ReceiverAmount.md)
 - [RecordTimeRange](docs/RecordTimeRange.md)
 - [RoundPartyTotals](docs/RoundPartyTotals.md)
 - [RoundTotals](docs/RoundTotals.md)
 - [ScanInfo](docs/ScanInfo.md)
 - [SenderAmount](docs/SenderAmount.md)
 - [Status](docs/Status.md)
 - [SteppedRate](docs/SteppedRate.md)
 - [SuccessStatusResponse](docs/SuccessStatusResponse.md)
 - [SynchronizerBftSequencer](docs/SynchronizerBftSequencer.md)
 - [SynchronizerBootstrappingTransactions](docs/SynchronizerBootstrappingTransactions.md)
 - [SynchronizerIdentities](docs/SynchronizerIdentities.md)
 - [TargetMemberTrafficState](docs/TargetMemberTrafficState.md)
 - [TransactionHistoryRequest](docs/TransactionHistoryRequest.md)
 - [TransactionHistoryResponse](docs/TransactionHistoryResponse.md)
 - [TransactionHistoryResponseItem](docs/TransactionHistoryResponseItem.md)
 - [Transfer](docs/Transfer.md)
 - [TransferCommandContractStatus](docs/TransferCommandContractStatus.md)
 - [TransferCommandContractWithStatus](docs/TransferCommandContractWithStatus.md)
 - [TransferCommandCreatedResponse](docs/TransferCommandCreatedResponse.md)
 - [TransferCommandFailedResponse](docs/TransferCommandFailedResponse.md)
 - [TransferCommandSentResponse](docs/TransferCommandSentResponse.md)
 - [TreeEvent](docs/TreeEvent.md)
 - [UpdateHistoryAssignment](docs/UpdateHistoryAssignment.md)
 - [UpdateHistoryItem](docs/UpdateHistoryItem.md)
 - [UpdateHistoryItemV2](docs/UpdateHistoryItemV2.md)
 - [UpdateHistoryReassignment](docs/UpdateHistoryReassignment.md)
 - [UpdateHistoryReassignmentEvent](docs/UpdateHistoryReassignmentEvent.md)
 - [UpdateHistoryRequest](docs/UpdateHistoryRequest.md)
 - [UpdateHistoryRequestAfter](docs/UpdateHistoryRequestAfter.md)
 - [UpdateHistoryRequestV1](docs/UpdateHistoryRequestV1.md)
 - [UpdateHistoryRequestV2](docs/UpdateHistoryRequestV2.md)
 - [UpdateHistoryResponse](docs/UpdateHistoryResponse.md)
 - [UpdateHistoryResponseV2](docs/UpdateHistoryResponseV2.md)
 - [UpdateHistoryTransaction](docs/UpdateHistoryTransaction.md)
 - [UpdateHistoryTransactionV2](docs/UpdateHistoryTransactionV2.md)
 - [UpdateHistoryUnassignment](docs/UpdateHistoryUnassignment.md)
 - [ValidatorPurchasedTraffic](docs/ValidatorPurchasedTraffic.md)
 - [ValidatorReceivedFaucets](docs/ValidatorReceivedFaucets.md)
 - [Version](docs/Version.md)


## Documentation For Authorization

 All endpoints do not require authorization.

