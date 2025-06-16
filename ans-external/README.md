# ANS API Bash client

## Overview

This is a Bash client script for accessing ANS API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x ans-external-api

# Print the list of operations available on the service
$ ./ans-external-api -h

# Print the service description
$ ./ans-external-api --about

# Print detailed information about specific operation
$ ./ans-external-api <operationId> -h

# Make GET request
./ans-external-api --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
./ans-external-api -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' | ./ans-external-api --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' | ./ans-external-api --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$ ./ans-external-api --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$ ./ans-external-api --host http://<hostname>:<port> --dry-run <operationid>

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
source ans-external-api.bash-completion
ln ans-external-api -t /usr/local/bin/
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp ans-external-api.bash-completion /etc/bash-completion.d/ans-external-api
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

In Zsh, the generated `_ans-external-api` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to */api/validator*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AnsApi* | [**createAnsEntry**](docs/AnsApi.md#createansentry) | **POST** /v0/entry/create | 
*AnsApi* | [**listAnsEntries**](docs/AnsApi.md#listansentries) | **GET** /v0/entry/all | 


## Documentation For Models

 - [AnsEntryResponse](docs/AnsEntryResponse.md)
 - [CreateAnsEntryRequest](docs/CreateAnsEntryRequest.md)
 - [CreateAnsEntryResponse](docs/CreateAnsEntryResponse.md)
 - [ErrorResponse](docs/ErrorResponse.md)
 - [ListAnsEntriesResponse](docs/ListAnsEntriesResponse.md)


## Documentation For Authorization


## userAuth


- **Type**: HTTP Bearer Token authentication (JWT)

