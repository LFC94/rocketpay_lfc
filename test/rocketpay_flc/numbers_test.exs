defmodule RocketpayLfc.NumberTest do
  use ExUnit.Case

  alias RocketpayLfc.Number

  describe "sum_from_file/1" do
    test "when there is a file with the given name, returns the sum od numbers" do
      response = Number.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "when there is no file with the given name, returns an erros" do
      response = Number.sum_from_file("banana")

      expected_response = {:error, %{message: "Invalid file!"}}

      assert response == expected_response
    end
  end
end
