# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAadUserConversationMemberResult do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :error,
    :userId
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :error => MicrosoftGraph.Model.MicrosoftGraphActionResultPartError.t() | nil,
          :userId => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :error,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphActionResultPartError
    )
  end
end
