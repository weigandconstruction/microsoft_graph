# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphEndUserNotificationDetail do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :emailContent,
    :isDefaultLangauge,
    :language,
    :locale,
    :sentFrom,
    :subject
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :emailContent => String.t | nil,
    :isDefaultLangauge => boolean() | nil,
    :language => String.t | nil,
    :locale => String.t | nil,
    :sentFrom => MicrosoftGraph.Model.MicrosoftGraphEmailIdentity.t | nil,
    :subject => String.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:sentFrom, :struct, MicrosoftGraph.Model.MicrosoftGraphEmailIdentity)
  end
end
