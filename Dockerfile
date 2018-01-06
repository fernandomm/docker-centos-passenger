FROM fmorgenstern/centos-ruby:ruby-2.4.3

RUN yum install curl-devel -y
RUN /bin/bash -l -c "gem install passenger -v 5.1.12"
RUN /bin/bash -l -c "passenger-install-nginx-module --auto --auto-download --languages ruby"