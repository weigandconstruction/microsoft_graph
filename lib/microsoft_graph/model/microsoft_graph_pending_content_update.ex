# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphPendingContentUpdate do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :queuedDateTime
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :queuedDateTime => DateTime.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:queuedDateTime, :datetime, nil)
  end
end
