defmodule Handle do
    def convert_to_standard(cep_number) do
      cep = String.replace("#{cep_number}", ~r"[/\D/g]", "")
      String.slice cep, 0..7
    end

    def get_data_from_cep(cep_number) do
        {_, data} = Cep_viacep.cep(cep_number)
        Map.get(data, :body)
    end

    def prepare_return(city) do
            %{
                :district => city["bairro"],
                :code => String.replace(city["cep"], ~r"[/\D/g]", ""),
                :complentent => city["complemento"],
                :city => city["localidade"],
                :address => city["logradouro"],
                :ustate => city["uf"]
            }
    end
end
