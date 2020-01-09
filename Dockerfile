FROM fmorgenstern/centos-ruby:ruby-2.5.7

RUN yum install curl-devel -y && \
	gem install passenger -v 6.0.4 && \
	passenger-install-nginx-module --auto --auto-download --languages ruby && \
	yum clean all