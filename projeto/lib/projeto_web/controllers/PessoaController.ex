defmodule ProjetoWeb.PessoaController do
  use ProjetoWeb, :controller

  alias Projeto.Pessoa

  def buscarPessoa(conn, params) do
    "ok"
    |> Pessoa.create()
    |> handle_response(conn)
    # |> IO.inspect(label: "[Termino] [GET]/Pessoa :::")
  end

  def handle_response({:ok, pessoa}, conn) do
    conn
    |> put_status(:ok)
    |> render("find.json", pessoa: pessoa)
  end

  def handle_response({:error, message}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(%{message: message})
  end

end
