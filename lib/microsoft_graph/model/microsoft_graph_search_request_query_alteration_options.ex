# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSearchRequestQueryAlterationOptions do
  @moduledoc """
  Query alteration options formatted in a JSON blob that contains two optional flags related to spelling correction. Optional.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :enableModification,
    :enableSuggestion
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :enableModification => boolean() | nil,
          :enableSuggestion => boolean() | nil
        }

  def decode(value) do
    value
  end
end
