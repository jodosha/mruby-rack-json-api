# JSON API Apps w/ MRuby + Rack + Redis + H2O

This is a demo repository to show how to build and distribute really fast JSON API apps with [MRuby](http://mruby.org), [Rack](http://rack.github.io/), [Redis](http://redis.io) and [H2O](https://h2o.examp1e.net/).

## Explanation

For a full explanation of how this works, please read this article: [25,000+ Req/s for Rack JSON API with MRuby](http://lucaguidi.com/2015/12/09/25000-requests-per-second-for-rack-json-api-with-mruby.html).

## Prerequisites

  * gcc
  * cmake
  * wrk (for benchmarks)
  * Redis

## Setup

```shell
➜ git clone https://github.com/jodosha/mruby-rack-json-api.git
➜ cd mruby-json-api
➜ bin/setup
```

## Start

```shell
➜ bin/server
```

This will start Redis and H2O.

There are two endpoints available:

  * [http://localhost:8080/hardcoded](http://localhost:8080/hardcoded)
  * [http://localhost:8080/json_api](http://localhost:8080/json_api)

## Benchmarks

```shell
➜ bin/bench
Measuring /hardcoded
Running 10s test @ http://localhost:8080/hardcoded/
  2 threads and 10 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    81.22us   52.65us   4.46ms   92.27%
    Req/Sec    61.04k     8.37k   69.33k    75.74%
  1226358 requests in 10.10s, 163.74MB read
Requests/sec: 121419.22
Transfer/sec:     16.21MB

Measuring /json_api
Running 10s test @ http://localhost:8080/json_api/
  2 threads and 10 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   389.09us  328.37us   9.64ms   93.09%
    Req/Sec    14.24k     2.54k   18.09k    76.24%
  286091 requests in 10.10s, 55.11MB read
Requests/sec:  28326.73
Transfer/sec:      5.46MB
```

**Yes &mdash; 28,000+ requests per second!!**

## Copyright

&copy; 2015 &dash; [Luca Guidi](http://lucaguidi.com) &mdash; Released under MIT License
