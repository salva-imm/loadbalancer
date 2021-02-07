import asyncnet, asyncdispatch


proc start_health_check*(socket: AsyncSocket) {.async.} =
    echo("connecting ...")
    try:
        await socket.connect("127.0.0.1", 5001.Port)
        echo("connected.")
    except OSError:
        echo("not connected")
    # asyncCheck socket.send("message" & "\c\l")