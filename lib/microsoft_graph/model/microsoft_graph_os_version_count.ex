# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphOsVersionCount do
  @moduledoc """
  Count of devices with malware for each OS version
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :deviceCount,
    :lastUpdateDateTime,
    :osVersion
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :deviceCount => integer() | nil,
    :lastUpdateDateTime => DateTime.t | nil,
    :osVersion => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:lastUpdateDateTime, :datetime, nil)
  end
end
