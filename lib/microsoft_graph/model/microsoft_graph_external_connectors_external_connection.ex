# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalConnection do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :activitySettings,
    :configuration,
    :connectorId,
    :description,
    :groups,
    :items,
    :name,
    :operations,
    :schema,
    :searchSettings,
    :state
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :activitySettings => MicrosoftGraph.Model.ExternalConnectionActivitySettings.t() | nil,
          :configuration => MicrosoftGraph.Model.ExternalConnectionConfiguration.t() | nil,
          :connectorId => String.t() | nil,
          :description => String.t() | nil,
          :groups =>
            [MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroup.t()] | nil,
          :items => [MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItem.t()] | nil,
          :name => String.t() | nil,
          :operations =>
            [MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsConnectionOperation.t()] | nil,
          :schema => MicrosoftGraph.Model.ExternalConnectionSchema.t() | nil,
          :searchSettings => MicrosoftGraph.Model.ExternalConnectionSearchSettings.t() | nil,
          :state => MicrosoftGraph.Model.ExternalConnectionState.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :activitySettings,
      :struct,
      MicrosoftGraph.Model.ExternalConnectionActivitySettings
    )
    |> Deserializer.deserialize(
      :configuration,
      :struct,
      MicrosoftGraph.Model.ExternalConnectionConfiguration
    )
    |> Deserializer.deserialize(
      :groups,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalGroup
    )
    |> Deserializer.deserialize(
      :items,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItem
    )
    |> Deserializer.deserialize(
      :operations,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsConnectionOperation
    )
    |> Deserializer.deserialize(:schema, :struct, MicrosoftGraph.Model.ExternalConnectionSchema)
    |> Deserializer.deserialize(
      :searchSettings,
      :struct,
      MicrosoftGraph.Model.ExternalConnectionSearchSettings
    )
    |> Deserializer.deserialize(:state, :struct, MicrosoftGraph.Model.ExternalConnectionState)
  end
end
