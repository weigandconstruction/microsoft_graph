# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphWindowsInformationProtectionResourceCollection do
  @moduledoc """
  Windows Information Protection Resource Collection
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :displayName,
    :resources
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :displayName => String.t() | nil,
          :resources => [String.t()] | nil
        }

  def decode(value) do
    value
  end
end
