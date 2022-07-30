defmodule ProjetoWeb.PessoaView do
  use ProjetoWeb, :view

  def render("create.json", %{pessoa: pessoa}) do
    %{
      message: "banana",
      pessoa: pessoa
    }
  end
end
