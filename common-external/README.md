# Common schemas for Splice API definitions Bash client

## Overview

This is a Bash client script for accessing Common schemas for Splice API definitions service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x common-external-api

# Print the list of operations available on the service
$ ./common-external-api -h

# Print the service description
$ ./common-external-api --about

# Print detailed information about specific operation
$ ./common-external-api <operationId> -h

# Make GET request
./common-external-api --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
./common-external-api -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' | ./common-external-api --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' | ./common-external-api --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$ ./common-external-api --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$ ./common-external-api --host http://<hostname>:<port> --dry-run <operationid>

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
source common-external-api.bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp common-external-api.bash-completion /etc/bash-completion.d/common-external-api
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

In Zsh, the generated `_common-external-api` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CommonApi* | [**getHealthStatus**](docs/CommonApi.md#gethealthstatus) | **GET** /status | 
*CommonApi* | [**getVersion**](docs/CommonApi.md#getversion) | **GET** /version | 
*CommonApi* | [**isLive**](docs/CommonApi.md#islive) | **GET** /livez | 
*CommonApi* | [**isReady**](docs/CommonApi.md#isready) | **GET** /readyz | 


## Documentation For Models

 - [Contract](docs/Contract.md)
 - [ErrorResponse](docs/ErrorResponse.md)
 - [FailureStatusResponse](docs/FailureStatusResponse.md)
 - [NodeStatus](docs/NodeStatus.md)
 - [NotInitialized](docs/NotInitialized.md)
 - [NotInitializedStatusResponse](docs/NotInitializedStatusResponse.md)
 - [Status](docs/Status.md)
 - [SuccessStatusResponse](docs/SuccessStatusResponse.md)
 - [Version](docs/Version.md)


## Documentation For Authorization


## spliceAppBearerAuth


- **Type**: HTTP Bearer Token authentication (JWT)

