WD:=`pwd`

ruby-install:	## Run ruby tests
	@pushd ${WD}/src/ruby && \
	bundle install && \
	popd


ruby-test:	## Run ruby tests
	@pushd ${WD}/src/ruby && \
	bundle exec rspec . && \
	popd

ruby-console:	## Open a PRY console
	@pushd ${WD}/src/ruby && \
	bundle exec pry -r ./bin/mower && \
	popd
