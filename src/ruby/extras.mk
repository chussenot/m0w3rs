WD:=`pwd`

ruby-install:	## Run ruby tests
	cd ${WD}/src/ruby && \
	bundle install

ruby-test:	## Run ruby tests
	cd ${WD}/src/ruby && \
	bundle exec rspec .

ruby-console:	## Open a PRY console
	cd ${WD}/src/ruby && \
	bundle exec pry -r ./bin/mower
