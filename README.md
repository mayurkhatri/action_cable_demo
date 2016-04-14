## README

To run migration use :
rails db:migrate

===============================================

Errors encountered while making the application :

1. [NoMethodError - undefined method `fetch' for nil:NilClass]

Solution :
move file cable.yml from config/redis to config folder

http://stackoverflow.com/questions/34913887/rails-5-actioncable-undefined-method-fetch-for-nilnilclass

2. Error connecting to Redis on localhost:6379 (Errno::ECONNREFUSED) (Redis::CannotConnectError)

Solution :
sudo apt-get install redis-server
run command : redis-server

http://stackoverflow.com/questions/8754304/redis-connection-to-127-0-0-16379-failed-connect-econnrefused