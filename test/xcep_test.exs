defmodule XCEPTest do
  use ExUnit.Case

  test "test conversion text" do
    text = Handle.convert_to_standard("12-456.789-000")
    assert text == "12456789"
  end

  test "prepare final return" do
    mock_data_before =
      %{
          "bairro" => "district",
          "cep" => "123456789",
          "complentento" => "complentent",
          "localidade" => "city_name",
          "logradouro" => "address",
          "uf" => "ustate"
      }

    data_return = Handle.prepare_return mock_data_before
    data_return[:city] == "city_name"
  end
end
