# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPrintDocument do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :contentType,
    :displayName,
    :size
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :contentType => String.t | nil,
    :displayName => String.t | nil,
    :size => integer() | nil
  }

  def decode(value) do
    value
  end
end
