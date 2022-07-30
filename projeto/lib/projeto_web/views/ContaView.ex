defmodule ProjetoWeb.ContaView do
  use ProjetoWeb, :view

  def render("find.json", %{conta: conta}) do
    %{
      data: conta
    }
  end
end
