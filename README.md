# NUS-Crypto-Exchange

## Git
* https://github.com/KeithZHIJIAN/NUS-Crypto-Exchange.git

## Port Usage
* api server: 3000
* ui server: 8000
* rabbitmq: 5672
* rabbitmq web management: 15672

## Setup
* ```docker run -it --name NUSwap -d -p 5672:5672 -p 15672:15672 -p 3000:3000 -p 5000:5000 -p 8000:8000 -dit ubuntu:latest```
    * ```apt update```
    * ```apt install git```
    * ```apt install curl```
    * ```curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash```
    * ```export NVM_DIR="$HOME/.nvm"```
    * ```[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm```
    * ```nvm install 10```
    * ```nvm alias default 10```
    * ```apt install gnupg```
    * ```curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | apt-key add -```
    * ```echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.4.list```
    * ```apt update```
    * ```apt install mongodb-org```
    * ```mkdir -p /data/db```
    * ```screen mongod```
------
* ```git clone https://github.com/KeithZHIJIAN/NUS-Crypto-Exchange.git```
* ```cd NUS-Crypto-Exchange```
* ```git checkout origin/main```
* (Automatically setup)
    * ```npm run start```
        * Follow the installation process (such as press 'Y')
        * only need to enter ```Ctrl+A+D``` when creating screen
            * one for mongodb
            * one for api server
            * one for ui server
            * one for matching engine
* (Manully setup)
    * ```npm run installation```
    * ```service rabbitmq-server restart```
    * (for api server)
        * ```cd api```
        * ```npm run api```
            * enter ```Ctrl+A+D```
    * (for ui server)
        * ```cd ui```
        * ```npm run ui```
            * enter ```Ctrl+A+D```
        * If need to recompile, run following commands:
            * ```npm run fast```
    * (for MatchingEngine)
        * ```npm run matchingEngine```

## Web Browser
* Enter ```localhost:8000``` on web browser

## Functions
* User registration (```/#/register``` page)
    * You can choose to register through Google API
* User login (```/#/login``` page)
    * You can choose to login through Google API
* Buy something (Buy/Sell button on ```Assets``` tag)
* Sell something (Buy/Sell button on ```Assets``` tag)
* Convert one type to another type (Buy/Sell button on ```Assets``` tag)
* Topup money (on ```Assets``` tag)
* View information of all Cryptocurrency (```Trade``` tag)
* Template for blog (```Blog``` tag)
* Update profile (```Profile``` tag)
* Update password for Non-Google logged in users (```Setting``` tag)

## Database structure(MongoDB)
* database name: NUSSwap
* collections:
    * types: Record predefined types that can be traded
        * id: *[Int]* Unique
        * symbol: *[String]* Unique
        * price: *[Float]*
    * wallet: Record what the user have bought
        * id: *[Int]*
        * userId: *[Int]*
        * symbol: *[String]*
        * balance: *[Float]*
    * history: Record the change process of balance
        * id: *[Int]*
        * userId: *[Int]*
        * time: *[String]*
        * balance: *[Float]*
    * historyCounter: Record the number of history items
        * _id: *[String]*
        * current: *[Int]*
    * users: Record the information of users
        * id: *[Int]* Unique
        * email: *[String]* Unique
        * firstName: *[String]*
        * lastName: *[String]*
        * balance: *[String]*
    * userCounter: Record the number of users
        * _id: *[String]*
        * current: *[Int]*
    * currentUser: Record the information of current user
        * _id: *[String]*
        * currentId: *[Int]*
        * email: *[String]*
    * orders: Record the information of orders
        * id: *[Int]*
        * userId: *[Int]*
        * currentState: *[String]*
        * symbol: *[String]*
        * quantity: *[Int]*
        * price: *[Double]*
        * amount: *[Double]*
    * orderCounters: Record the number of orders
        * _id: *[String]*
        * current: *[Int]*
    * rabbitmq: Record the information of rabbitmq messages
        * id: *[Int]*
        * userId: *[Int]*
        * state: *[String]*
        * symbol: *[String]*
        * orderType: *[String]*
        * side: *[String]*
        * quantity: *[Int]*
        * price: *[Double]*
        * tradeId: *[Int]*
        * note: *[String]*
    * rabbitmqCounters: Record the number of rabbitmq messages
        * _id: *[String]*
        * current: *[Int]*

## Message structure(RabbitMQ)
* Add Symbol Type Side Quantity Price TradeID
   * ```add ETHUSD limit ask 100 64000 001```
   
* Modify Symbol Order ID Quantity Price
   * ```modify ETHUSD 0000000002 0 64000```
   * ```modify ethusd 0000000002 100 0```

* Cancel Symbol OrderID
   * ```cancel ETHUSD 0000000001```
  
## RabbitMQ installation
* ```apt-get install erlang-nox```
* ```erl```
* ```apt-get update```
* ```apt-get install rabbitmq-server```
* ```service rabbitmq-server start```
* ```service rabbitmq-server status```
* ```rabbitmq-plugins enable rabbitmq_management```
* ```service rabbitmq-server restart```

## Python3 installation
* ```apt-get update```
* ```apt-get install python3```
* ```apt install python3-pip```
* ```pip install pymongo```
* ```pip install sortedcontainers```
* ```pip install pika```
