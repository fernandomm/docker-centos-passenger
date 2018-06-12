FROM fmorgenstern/centos-ruby:ruby-2.3.5

RUN yum install curl-devel -y
RUN gem install passenger -v 5.3.2
RUN passenger-install-nginx-module --auto --auto-download --languages ruby