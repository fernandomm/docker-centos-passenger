FROM fmorgenstern/centos-ruby:ruby-2.3.5

RUN yum install curl-devel -y && \
	gem install passenger -v 5.3.7 && \
	passenger-install-nginx-module --auto --auto-download --languages ruby && \
	yum clean all