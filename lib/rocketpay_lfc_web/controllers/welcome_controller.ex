defmodule RocketpayLfcWeb.WelcomeController do
  use RocketpayLfcWeb, :controller

  alias RocketpayLfc.Number

  def index(conn, %{"filename" => file}) do
    file
    |> Number.sum_from_file()
    |> handle_response(conn)
  end

  defp handle_response({:ok, %{result: result}}, conn) do
    conn
    |> put_status(:ok)
    |> json(%{message: "Here is your number #{result}"})
  end

  defp handle_response({:error, result}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(result)
  end
end
