defmodule ProjetoWeb.ContaController do
  use ProjetoWeb, :controller

  alias Projeto.Conta

  def buscarConta(conn, %{"success" => success}) do
    success
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
    |> put_status(:not_found)
    |> json(%{message: message})
  end

end
