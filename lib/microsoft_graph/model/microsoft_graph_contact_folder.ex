# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphContactFolder do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :childFolders,
    :contacts,
    :displayName,
    :multiValueExtendedProperties,
    :parentFolderId,
    :singleValueExtendedProperties
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :childFolders => [MicrosoftGraph.Model.MicrosoftGraphContactFolder.t()] | nil,
          :contacts => [MicrosoftGraph.Model.MicrosoftGraphContact.t()] | nil,
          :displayName => String.t() | nil,
          :multiValueExtendedProperties =>
            [MicrosoftGraph.Model.MicrosoftGraphMultiValueLegacyExtendedProperty.t()] | nil,
          :parentFolderId => String.t() | nil,
          :singleValueExtendedProperties =>
            [MicrosoftGraph.Model.MicrosoftGraphSingleValueLegacyExtendedProperty.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :childFolders,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphContactFolder
    )
    |> Deserializer.deserialize(:contacts, :list, MicrosoftGraph.Model.MicrosoftGraphContact)
    |> Deserializer.deserialize(
      :multiValueExtendedProperties,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphMultiValueLegacyExtendedProperty
    )
    |> Deserializer.deserialize(
      :singleValueExtendedProperties,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphSingleValueLegacyExtendedProperty
    )
  end
end
