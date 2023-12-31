# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphIosNetworkUsageRule do
  @moduledoc """
  Network Usage Rules allow enterprises to specify how managed apps use networks, such as cellular data networks.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :cellularDataBlockWhenRoaming,
    :cellularDataBlocked,
    :managedApps
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :cellularDataBlockWhenRoaming => boolean() | nil,
          :cellularDataBlocked => boolean() | nil,
          :managedApps =>
            [MicrosoftGraph.Model.MicrosoftGraphIosNetworkUsageRuleManagedAppsInner.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :managedApps,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphIosNetworkUsageRuleManagedAppsInner
    )
  end
end
