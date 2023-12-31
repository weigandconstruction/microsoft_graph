# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSecurityHostPair do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :childHost,
    :firstSeenDateTime,
    :lastSeenDateTime,
    :linkKind,
    :parentHost
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :childHost => MicrosoftGraph.Model.MicrosoftGraphSecurityHost.t() | nil,
          :firstSeenDateTime => DateTime.t() | nil,
          :lastSeenDateTime => DateTime.t() | nil,
          :linkKind => String.t() | nil,
          :parentHost => MicrosoftGraph.Model.MicrosoftGraphSecurityHost.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :childHost,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphSecurityHost
    )
    |> Deserializer.deserialize(:firstSeenDateTime, :datetime, nil)
    |> Deserializer.deserialize(:lastSeenDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :parentHost,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphSecurityHost
    )
  end
end
