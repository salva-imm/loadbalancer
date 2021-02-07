import active_healthcheck
# import os
# import threadpool
import asyncnet, asyncdispatch


var c_socket = newAsyncSocket()
asyncCheck start_health_check(c_socket)
# asyncCheck c_socket.send("message" & "\c\l")
# runForever()
asyncdispatch.poll()
