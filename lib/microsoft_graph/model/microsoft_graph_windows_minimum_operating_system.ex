# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphWindowsMinimumOperatingSystem do
  @moduledoc """
  The minimum operating system required for a Windows mobile app.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :v10_0,
    :v8_0,
    :v8_1
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :v10_0 => boolean() | nil,
          :v8_0 => boolean() | nil,
          :v8_1 => boolean() | nil
        }

  def decode(value) do
    value
  end
end
