# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSharePointIdentitySet do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :application,
    :device,
    :user,
    :group,
    :siteGroup,
    :siteUser
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :application => MicrosoftGraph.Model.MicrosoftGraphIdentitySetApplication.t() | nil,
          :device => MicrosoftGraph.Model.MicrosoftGraphIdentitySetDevice.t() | nil,
          :user => MicrosoftGraph.Model.MicrosoftGraphIdentitySetUser.t() | nil,
          :group => MicrosoftGraph.Model.SharePointIdentitySetGroup.t() | nil,
          :siteGroup => MicrosoftGraph.Model.SharePointIdentitySetSiteGroup.t() | nil,
          :siteUser => MicrosoftGraph.Model.SharePointIdentitySetSiteUser.t() | nil
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
    |> Deserializer.deserialize(:group, :struct, MicrosoftGraph.Model.SharePointIdentitySetGroup)
    |> Deserializer.deserialize(
      :siteGroup,
      :struct,
      MicrosoftGraph.Model.SharePointIdentitySetSiteGroup
    )
    |> Deserializer.deserialize(
      :siteUser,
      :struct,
      MicrosoftGraph.Model.SharePointIdentitySetSiteUser
    )
  end
end
