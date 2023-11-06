# Converts microsoft_graph.yml into microsoft_graph.json
# Run with: `elixir script/convert_spec.exs` from the directory root

Mix.install([
  {:yaml_elixir, "~> 2.9"},
  {:jason, "~> 1.4"},
])

input_file = "microsoft_graph.yml"
output_file = "microsoft_graph.json"

contents = File.read!(input_file)
{:ok, yaml} = YamlElixir.read_from_string(contents, atoms: true)
json = Jason.encode!(yaml)

{:ok, file} = File.open(output_file, [:write])
IO.binwrite(file, json)
File.close(file)
