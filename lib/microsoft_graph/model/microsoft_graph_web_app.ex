# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphWebApp do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :assignments,
    :categories,
    :createdDateTime,
    :description,
    :developer,
    :displayName,
    :informationUrl,
    :isFeatured,
    :largeIcon,
    :lastModifiedDateTime,
    :notes,
    :owner,
    :privacyInformationUrl,
    :publisher,
    :publishingState,
    :appUrl,
    :useManagedBrowser
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :assignments => [MicrosoftGraph.Model.MicrosoftGraphMobileAppAssignment.t()] | nil,
          :categories => [MicrosoftGraph.Model.MicrosoftGraphMobileAppCategory.t()] | nil,
          :createdDateTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :developer => String.t() | nil,
          :displayName => String.t() | nil,
          :informationUrl => String.t() | nil,
          :isFeatured => boolean() | nil,
          :largeIcon => MicrosoftGraph.Model.MobileAppLargeIcon.t() | nil,
          :lastModifiedDateTime => DateTime.t() | nil,
          :notes => String.t() | nil,
          :owner => String.t() | nil,
          :privacyInformationUrl => String.t() | nil,
          :publisher => String.t() | nil,
          :publishingState =>
            MicrosoftGraph.Model.MicrosoftGraphMobileAppPublishingState.t() | nil,
          :appUrl => String.t() | nil,
          :useManagedBrowser => boolean() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :assignments,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphMobileAppAssignment
    )
    |> Deserializer.deserialize(
      :categories,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphMobileAppCategory
    )
    |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
    |> Deserializer.deserialize(:largeIcon, :struct, MicrosoftGraph.Model.MobileAppLargeIcon)
    |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :publishingState,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphMobileAppPublishingState
    )
  end
end
