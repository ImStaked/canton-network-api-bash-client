#!/bin/bash

# Setup bash completion for ans-external-api
source ans-external/ans-external-api.bash-completion
sudo ln ans-external/ans-external-api -t /usr/local/bin/

# Setup bash completion for common-external-api
source common-external/common-external-api.bash-completion
sudo ln common-external/common-external-api -t /usr/local/bin/

# Setup bash completion for common-internal-api
source common-internal/common-internal-api.bash-completion
sudo ln common-internal/common-internal-api -t /usr/local/bin/

# Setup bash completion for scan-api
source scan/scan-api.bash-completion
sudo ln scan/scan-api -t /usr/local/bin/

# Setup bash completion for scan-proxy-api
source scan-proxy/scan-proxy-api.bash-completion
sudo ln scan-proxy/scan-proxy-api -t /usr/local/bin/

# Setup bash completion for validator-internal-api
source validator-internal/validator-internal-api.bash-completion 
sudo ln validator-internal/validator-internal-api -t /usr/local/bin/

# Setup bash completion for wallet-external-api
source wallet-external/wallet-external-api.bash-completion
sudo ln wallet-external/wallet-external-api -t /usr/local/bin/ 

# Setup bash completion for wallet-internal-api
source wallet-internal/wallet-internal-api.bash-completion
sudo ln wallet-internal/wallet-internal-api -t /usr/local/bin/
