# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsSearchSettings do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :searchResultTemplates
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :searchResultTemplates =>
            [
              MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsSearchSettingsSearchResultTemplatesInner.t()
            ]
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :searchResultTemplates,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphExternalConnectorsSearchSettingsSearchResultTemplatesInner
    )
  end
end
