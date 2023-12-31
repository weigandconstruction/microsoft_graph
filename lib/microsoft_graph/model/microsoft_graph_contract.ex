# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphContract do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :deletedDateTime,
    :contractType,
    :customerId,
    :defaultDomainName,
    :displayName
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :deletedDateTime => DateTime.t() | nil,
          :contractType => String.t() | nil,
          :customerId => String.t() | nil,
          :defaultDomainName => String.t() | nil,
          :displayName => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:deletedDateTime, :datetime, nil)
  end
end
