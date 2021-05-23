defmodule Cep_viacep do
    def cep(cep_number) do
        json_city = HTTPoison.get!("https://viacep.com.br/ws/#{cep_number}/json/")
        {:ok, json_city}
    end
end
