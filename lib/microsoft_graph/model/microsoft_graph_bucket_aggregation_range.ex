# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphBucketAggregationRange do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :from,
    :to
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :from => String.t() | nil,
          :to => String.t() | nil
        }

  def decode(value) do
    value
  end
end
