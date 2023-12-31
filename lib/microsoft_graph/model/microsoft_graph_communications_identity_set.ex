# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphCommunicationsIdentitySet do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :application,
    :device,
    :user,
    :applicationInstance,
    :assertedIdentity,
    :azureCommunicationServicesUser,
    :encrypted,
    :endpointType,
    :guest,
    :onPremises,
    :phone
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :application => MicrosoftGraph.Model.MicrosoftGraphIdentitySetApplication.t() | nil,
          :device => MicrosoftGraph.Model.MicrosoftGraphIdentitySetDevice.t() | nil,
          :user => MicrosoftGraph.Model.MicrosoftGraphIdentitySetUser.t() | nil,
          :applicationInstance =>
            MicrosoftGraph.Model.CommunicationsIdentitySetApplicationInstance.t() | nil,
          :assertedIdentity =>
            MicrosoftGraph.Model.CommunicationsIdentitySetApplicationInstance.t() | nil,
          :azureCommunicationServicesUser =>
            MicrosoftGraph.Model.CommunicationsIdentitySetApplicationInstance.t() | nil,
          :encrypted =>
            MicrosoftGraph.Model.CommunicationsIdentitySetApplicationInstance.t() | nil,
          :endpointType => MicrosoftGraph.Model.CommunicationsIdentitySetEndpointType.t() | nil,
          :guest => MicrosoftGraph.Model.CommunicationsIdentitySetApplicationInstance.t() | nil,
          :onPremises =>
            MicrosoftGraph.Model.CommunicationsIdentitySetApplicationInstance.t() | nil,
          :phone => MicrosoftGraph.Model.CommunicationsIdentitySetApplicationInstance.t() | nil
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
    |> Deserializer.deserialize(
      :applicationInstance,
      :struct,
      MicrosoftGraph.Model.CommunicationsIdentitySetApplicationInstance
    )
    |> Deserializer.deserialize(
      :assertedIdentity,
      :struct,
      MicrosoftGraph.Model.CommunicationsIdentitySetApplicationInstance
    )
    |> Deserializer.deserialize(
      :azureCommunicationServicesUser,
      :struct,
      MicrosoftGraph.Model.CommunicationsIdentitySetApplicationInstance
    )
    |> Deserializer.deserialize(
      :encrypted,
      :struct,
      MicrosoftGraph.Model.CommunicationsIdentitySetApplicationInstance
    )
    |> Deserializer.deserialize(
      :endpointType,
      :struct,
      MicrosoftGraph.Model.CommunicationsIdentitySetEndpointType
    )
    |> Deserializer.deserialize(
      :guest,
      :struct,
      MicrosoftGraph.Model.CommunicationsIdentitySetApplicationInstance
    )
    |> Deserializer.deserialize(
      :onPremises,
      :struct,
      MicrosoftGraph.Model.CommunicationsIdentitySetApplicationInstance
    )
    |> Deserializer.deserialize(
      :phone,
      :struct,
      MicrosoftGraph.Model.CommunicationsIdentitySetApplicationInstance
    )
  end
end
