FROM fmorgenstern/centos-ruby:ruby-2.5.3

RUN yum install curl-devel -y && \
	gem install passenger -v 5.3.2 && \
	passenger-install-nginx-module --auto --auto-download --languages ruby && \
	yum clean all