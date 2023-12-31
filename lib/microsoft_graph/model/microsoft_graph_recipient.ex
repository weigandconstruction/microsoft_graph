# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphRecipient do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :emailAddress
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :emailAddress => MicrosoftGraph.Model.MicrosoftGraphRecipientEmailAddress.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :emailAddress,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphRecipientEmailAddress
    )
  end
end
