OpenShift Kinesis
===

Using Kinesalite https://github.com/mhart/kinesalite


### Environment variables

```
Usage: kinesalite [--port <port>] [--path <path>] [--ssl] [options]

A Kinesis http server, optionally backed by LevelDB

Options:
--help                 Display this help message and exit
--port <port>          The port to listen on (default: 4567)
--path <path>          The path to use for the LevelDB store (in-memory by default)
--ssl                  Enable SSL for the web server (default: false)
--createStreamMs <ms>  Amount of time streams stay in CREATING state (default: 500)
--deleteStreamMs <ms>  Amount of time streams stay in DELETING state (default: 500)
--updateStreamMs <ms>  Amount of time streams stay in UPDATING state (default: 500)
--shardLimit <limit>   Shard limit for error reporting (default: 10)
```
