#
# Ubuntu based image with Conjur CLI set-up to test and build
# Conjur UI plugins
#

FROM centos:7 

RUN yum -y install ruby ruby-devel ruby-gems gcc gcc-c++ git openssl openssl-devel
RUN gem install conjur-cli

COPY conjur_init.sh conjur_init.sh
RUN chmod a+x conjur_init.sh
ENTRYPOINT  ./conjur_init.sh

