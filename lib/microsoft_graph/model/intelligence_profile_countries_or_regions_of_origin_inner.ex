# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.IntelligenceProfileCountriesOrRegionsOfOriginInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :code,
    :label
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :code => String.t | nil,
    :label => String.t | nil
  }

  def decode(value) do
    value
  end
end
