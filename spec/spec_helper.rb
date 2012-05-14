require File.join(File.dirname(__FILE__), '../conf/boot.rb')

# start redis
`redis-server ../conf/redis.conf`