defmodule Program do
hello_world = fn ->
"Olá, Mundo!"
end
IO.puts hello_world.()
end