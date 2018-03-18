WD:=`pwd`
DIR=${WD}/src/ruby

ruby-install:	## Run ruby tests
	cd ${DIR} && \
	bundle install

ruby-test:	## Run ruby tests
	cd ${DIR} && \
	bundle exec rspec .

ruby-console:	## Open a PRY console
	cd ${DIR} && \
	bundle exec pry -r ./bin/mower
