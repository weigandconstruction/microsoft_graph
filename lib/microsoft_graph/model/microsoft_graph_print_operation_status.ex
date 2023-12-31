# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPrintOperationStatus do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :description,
    :state
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :description => String.t() | nil,
          :state => MicrosoftGraph.Model.MicrosoftGraphPrintOperationProcessingState.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :state,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphPrintOperationProcessingState
    )
  end
end
