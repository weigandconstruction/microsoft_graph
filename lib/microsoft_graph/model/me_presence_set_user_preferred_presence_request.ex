# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MePresenceSetUserPreferredPresenceRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :activity,
    :availability,
    :expirationDuration
  ]

  @type t :: %__MODULE__{
    :activity => String.t | nil,
    :availability => String.t | nil,
    :expirationDuration => String.t | nil
  }

  def decode(value) do
    value
  end
end
