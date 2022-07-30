defmodule ProjetoWeb.ContaController do
  use ProjetoWeb, :controller

  alias Projeto.Conta

  def buscarConta(conn, params) do
    "ok"
    |> Conta.create()
    |> handle_response(conn)
    # |> IO.inspect(label: "[Termino] [GET]/conta :::")
  end

  def handle_response({:ok, conta}, conn) do
    conn
    |> put_status(:ok)
    |> render("find.json", conta: conta)
  end

  def handle_response({:error, message}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(%{message: message})
  end

end
