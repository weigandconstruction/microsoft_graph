# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.ParticipantEndpointIdentity do
  @moduledoc """
  Identity associated with the endpoint.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :application,
    :device,
    :user
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :application => MicrosoftGraph.Model.MicrosoftGraphIdentitySetApplication.t() | nil,
          :device => MicrosoftGraph.Model.MicrosoftGraphIdentitySetDevice.t() | nil,
          :user => MicrosoftGraph.Model.MicrosoftGraphIdentitySetUser.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :application,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphIdentitySetApplication
    )
    |> Deserializer.deserialize(
      :device,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphIdentitySetDevice
    )
    |> Deserializer.deserialize(
      :user,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphIdentitySetUser
    )
  end
end
