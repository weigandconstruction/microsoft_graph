# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPrintSettings do
  @moduledoc """
  Tenant-wide settings for the Universal Print service.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :documentConversionEnabled
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :documentConversionEnabled => boolean() | nil
  }

  def decode(value) do
    value
  end
end
