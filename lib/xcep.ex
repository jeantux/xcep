defmodule XCEP do
  use HTTPoison.Base

  @moduledoc """
  Documentation for `XCEP`.
  """

  @doc """
  Get data from address by CEP number

  """

  def cep(cep_number) do
    cep_number
    |> Handle.convert_to_standard
    |> Handle.get_data_from_cep
    |> Poison.decode!
    |> Handle.prepare_return
  end
end
