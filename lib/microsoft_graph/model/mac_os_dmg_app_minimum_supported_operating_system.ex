# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MacOsDmgAppMinimumSupportedOperatingSystem do
  @moduledoc """
  ComplexType macOSMinimumOperatingSystem that indicates the minimum operating system applicable for the application.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :v10_10,
    :v10_11,
    :v10_12,
    :v10_13,
    :v10_14,
    :v10_15,
    :v10_7,
    :v10_8,
    :v10_9,
    :v11_0,
    :v12_0,
    :v13_0
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :v10_10 => boolean() | nil,
    :v10_11 => boolean() | nil,
    :v10_12 => boolean() | nil,
    :v10_13 => boolean() | nil,
    :v10_14 => boolean() | nil,
    :v10_15 => boolean() | nil,
    :v10_7 => boolean() | nil,
    :v10_8 => boolean() | nil,
    :v10_9 => boolean() | nil,
    :v11_0 => boolean() | nil,
    :v12_0 => boolean() | nil,
    :v13_0 => boolean() | nil
  }

  def decode(value) do
    value
  end
end
