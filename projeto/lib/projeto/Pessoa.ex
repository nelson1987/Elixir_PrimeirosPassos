defmodule Projeto.Pessoa do

  def create("ok") do
    {:ok, %{name: "Bruce Wayne", nick: "Batman"}}
  end

  def create("error") do
    {:ok, "Error while creating person"}
  end

end
