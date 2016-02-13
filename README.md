# conjurplugindev
Dockerfile for developing and testing Conjur CLI Plugins
## Using the Image
```
export CONJUR_HOST=<host>
export CONJUR_USER=<username>
export CONJUR_PASSWORD=<password>
make start
```
This will build the docker container and configure Conjur with the host and
credentials configured in the environment
```
make shell
```
This will connect you to the docker image.
You should now be able to build and deploy plugins
```
git clone https://github.com/jbregman/conjur-asset-proxy.git
cd conjur-asset-proxy
gem build conjur-asset-proxy.gemspec
gem install conjur-asset-proxy-0.5.2.gem
conjur plugin install -v 0.5.2 proxy
```
