# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphMailboxSettingsLanguage do
  @moduledoc """
  The locale information for the user, including the preferred language and country/region.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :displayName,
    :locale
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :displayName => String.t() | nil,
          :locale => String.t() | nil
        }

  def decode(value) do
    value
  end
end
