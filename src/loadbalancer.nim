import active_healthcheck
# import os
# import threadpool
import asyncnet, asyncdispatch

var hosts: seq[string] = @["127.0.0.1:8000", "127.0.0.1:8001"]
var c_socket = newAsyncSocket()
asyncCheck start_health_check(c_socket, hosts)
asyncdispatch.poll()
