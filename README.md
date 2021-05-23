# XCEP
## Sobre
O XCEP é um projeto para consultar pelo CEP as informações do endereço.
O projeto é integrado com os serviços do ViaCEP e da WideNet.

O projeto é uma prova de conceito dessa linguagem, o intuito é educativo e não deixa de ser uma ótima ferramenta para usar no seu projeto em produção.

## Instalação

Adicione `xcep` na sua lista de dependencias `mix.exs`:

```elixir
def deps do
  [
    {:xcep, "~> 0.1.0"}
  ]
end
```

## Como utilizar

Depois de adicionada a dependencia no projeto execute:

```elixir
XCEP.cep "17250000"

#  %{
#    "bairro" => "",
#    "cep" => "17250000",
#    "complemento" => "",
#    "localidade" => "Bariri",
#    "logradouro" => "",
#    "uf" => "SP"
#  }

```
## Autor
| [<img src="https://avatars3.githubusercontent.com/u/30236552?v=4" width="110"><br><sub>@JeaanCa</sub>](https://github.com/jeaanca) |
| :---: |
