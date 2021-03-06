# Set your NetworkForGood authorization credentials here

# Do not include your credentials in your repository. You should
# place them in env variables (or similar) and refer to those
# variables here. Your sandbox and production credentials will be different.
NfgRestClient::Base.password = "nfg-password"
NfgRestClient::Base.userid =  "nfg-userid"
NfgRestClient::Base.source = "nfg-source"
NfgRestClient::Base.campaign = "nfg-campaign"

# Please refer to the Readme doc for instructions on obtaining
# a sandbox and production token (they will be different)
NfgRestClient::Base.token = "your nfg token"

# When using the gem in a production environment
# it is expected that all requests will be against
# the NFG production servers. In all other environments
# the gem will use the sandbox servers, which are set by default
if Rails.env.production?
  NfgRestClient::Base.set_production_base_urls
end