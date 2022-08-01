defmodule ProjetoWeb.ContaController do
  use ProjetoWeb, :controller

  alias Projeto.Conta

<<<<<<< Updated upstream
  def buscarConta(conn, params) do
    "ok"
=======
  use PhoenixSwagger
  swagger_path(:buscarConta) do
    get("/api/conta")
    summary("Sumário")
    description("Descrição")
    parameter(:query, :id, :integer, "Query String Obrigatória", required: true)
    parameter(:id, :path, :integer, "Path", required: true, example: 3)
    # parameter(:body,  Schema.ref(:User), "The users details")
    # response(200, "OK", Schema.ref(:UsersResponse))
    # parameter(:body,  Schema.ref(:User), "The users details")
    # parameter(:query, :id, :integer, "account id", required: true)
    # parameter(:id, :path, :integer, "User ID", required: true, example: 3)
    # parameters do
    #   sort_by :query, :string, "The property to sort by"
    #   sort_direction :query, :string, "The sort direction", enum: [:asc, :desc], default: :asc
    #   company_id :string, :query, "The company id"
    # end
  end
  def buscarConta(conn, %{"success" => success}) do
    IO.inspect(label: "[Inicio] [GET]/conta :::")
    success
>>>>>>> Stashed changes
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
