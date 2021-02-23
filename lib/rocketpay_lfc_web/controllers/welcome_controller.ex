defmodule RocketpayLfcWeb.WelcomeController do
  use RocketpayLfcWeb, :controller

  def index(conn,_params) do
    text(conn, "Welcome to the Rockerplay lfc API")
  end
end
