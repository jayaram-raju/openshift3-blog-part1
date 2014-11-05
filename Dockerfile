FROM openshift/ruby-20-centos

ENV http_proxy http://172.22.218.218:8085/
ENV https_proxy http://172.22.218.218:8085/

RUN gem install sinatra
ADD app.rb /tmp/app.rb
EXPOSE 8080
CMD ruby /tmp/app.rb
