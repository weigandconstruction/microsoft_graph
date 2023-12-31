# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPublicInnerError do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :code,
    :details,
    :message,
    :target
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :code => String.t() | nil,
          :details => [MicrosoftGraph.Model.MicrosoftGraphPublicErrorDetailsInner.t()] | nil,
          :message => String.t() | nil,
          :target => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :details,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphPublicErrorDetailsInner
    )
  end
end
