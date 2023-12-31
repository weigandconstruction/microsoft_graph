# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSearchResponse do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :hitsContainers,
    :queryAlterationResponse,
    :resultTemplates,
    :searchTerms
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :hitsContainers =>
            [MicrosoftGraph.Model.MicrosoftGraphSearchResponseHitsContainersInner.t()] | nil,
          :queryAlterationResponse =>
            MicrosoftGraph.Model.MicrosoftGraphSearchResponseQueryAlterationResponse.t() | nil,
          :resultTemplates =>
            MicrosoftGraph.Model.MicrosoftGraphSearchResponseResultTemplates.t() | nil,
          :searchTerms => [String.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :hitsContainers,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphSearchResponseHitsContainersInner
    )
    |> Deserializer.deserialize(
      :queryAlterationResponse,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphSearchResponseQueryAlterationResponse
    )
    |> Deserializer.deserialize(
      :resultTemplates,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphSearchResponseResultTemplates
    )
  end
end
