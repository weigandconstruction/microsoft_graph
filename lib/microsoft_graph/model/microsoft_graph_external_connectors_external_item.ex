# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalItem do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :acl,
    :activities,
    :content,
    :properties
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :acl => [MicrosoftGraph.Model.ExternalItemAclInner.t()] | nil,
          :activities =>
            [MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivity.t()] | nil,
          :content => MicrosoftGraph.Model.ExternalItemContent.t() | nil,
          :properties => MicrosoftGraph.Model.ExternalItemProperties.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:acl, :list, MicrosoftGraph.Model.ExternalItemAclInner)
    |> Deserializer.deserialize(
      :activities,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsExternalActivity
    )
    |> Deserializer.deserialize(:content, :struct, MicrosoftGraph.Model.ExternalItemContent)
    |> Deserializer.deserialize(:properties, :struct, MicrosoftGraph.Model.ExternalItemProperties)
  end
end
