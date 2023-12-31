# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphBroadcastMeetingCaptionSettings do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :isCaptionEnabled,
    :spokenLanguage,
    :translationLanguages
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :isCaptionEnabled => boolean() | nil,
          :spokenLanguage => String.t() | nil,
          :translationLanguages => [String.t()] | nil
        }

  def decode(value) do
    value
  end
end
