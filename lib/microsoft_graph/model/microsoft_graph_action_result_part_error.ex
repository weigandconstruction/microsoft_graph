# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphActionResultPartError do
  @moduledoc """
  The error that occurred, if any, during the course of the bulk operation.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :code,
    :details,
    :innerError,
    :message,
    :target
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :code => String.t | nil,
    :details => [MicrosoftGraph.Model.MicrosoftGraphPublicErrorDetailsInner.t] | nil,
    :innerError => MicrosoftGraph.Model.MicrosoftGraphPublicErrorInnerError.t | nil,
    :message => String.t | nil,
    :target => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:details, :list, MicrosoftGraph.Model.MicrosoftGraphPublicErrorDetailsInner)
     |> Deserializer.deserialize(:innerError, :struct, MicrosoftGraph.Model.MicrosoftGraphPublicErrorInnerError)
  end
end
