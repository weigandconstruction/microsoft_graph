# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DomainState do
  @moduledoc """
  Status of asynchronous operations scheduled for the domain.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :lastActionDateTime,
    :operation,
    :status
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :lastActionDateTime => DateTime.t | nil,
    :operation => String.t | nil,
    :status => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:lastActionDateTime, :datetime, nil)
  end
end
