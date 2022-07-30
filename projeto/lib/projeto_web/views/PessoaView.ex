defmodule ProjetoWeb.PessoaView do
  use ProjetoWeb, :view

  def render("find.json", %{pessoa: pessoa}) do
    %{
      data: pessoa
    }
  end
end
