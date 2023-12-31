# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.DriveItemSearchResult do
  @moduledoc """
  Search metadata, if the item is from a search result. Read-only.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :onClickTelemetryUrl
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :onClickTelemetryUrl => String.t() | nil
        }

  def decode(value) do
    value
  end
end
