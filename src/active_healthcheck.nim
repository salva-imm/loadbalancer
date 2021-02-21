import strutils
import asyncnet, asyncdispatch


proc start_health_check*(socket: AsyncSocket, hosts: seq[string]) {.async.} =
    echo("connecting ...")
    for host in hosts:
        echo(host)
        let host_port = host.split(":")
        try:
            await socket.connect(host_port[0], host_port[1].parseInt.Port)
            echo("connected.")
        except OSError:
            echo("not connected")