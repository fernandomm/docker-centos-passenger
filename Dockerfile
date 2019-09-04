FROM fmorgenstern/centos-ruby:ruby-2.3.5

RUN yum install curl-devel -y && \
	gem install passenger -v 6.0.2 && \
	passenger-install-nginx-module --auto --auto-download --languages ruby && \
	yum clean all