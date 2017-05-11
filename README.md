Kinesis on OpenShift
===

[![build status](https://gitorious.ctc.com/gitlab/openshift/kinesalite/badges/master/build.svg)](https://gitorious.ctc.com/gitlab/openshift/kinesalite/commits/master)

Using [Kinesalite](https://github.com/mhart/kinesalite) which is an implementation of Amazon's Kinesis, focussed on correctness and performance, and built on LevelDB.

### Resources

- OpenShift Template: [template.yml](template.yml)

### Environment variables

- `SSL_ENABLED`: Enable SSL on the connection (default: false)
- `CREATE_STREAM_MS`: Amount of time in ms streams stay in CREATING state (default: 500)
- `DELETE_STREAM_MS`: Amount of time in ms streams stay in DELETING state (default: 500)
- `UPDATE_STREAM_MS`: Amount of time in ms streams stay in UPDATING state (default: 500)

### Usage

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
