defmodule StartHelloActor do
  #def loop, do: HelloActor.loop
  def startFunc() do
    #import HelloActor, only: [duplicate: 2]
    IO.puts("start app")
    pid = spawn(&HelloActor.loop/0)
    IO.puts("send message")
    send(pid, {:greet, "Bob"})
    send(pid, {:praise, "Alice"})
    send(pid, {:celebrate, "Bob", 18})
    send(pid, {:shutdown})
  end
end
