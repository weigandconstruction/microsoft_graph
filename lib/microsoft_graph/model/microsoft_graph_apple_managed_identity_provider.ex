# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAppleManagedIdentityProvider do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :displayName,
    :certificateData,
    :developerId,
    :keyId,
    :serviceId
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :displayName => String.t | nil,
    :certificateData => String.t | nil,
    :developerId => String.t | nil,
    :keyId => String.t | nil,
    :serviceId => String.t | nil
  }

  def decode(value) do
    value
  end
end
