# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.IntelligenceProfileTradecraft do
  @moduledoc """
  Formatted information featuring a description of the distinctive tactics, techniques, and procedures (TTP) of the group, followed by a list of all known custom, commodity, and publicly available implants used by the group.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :content,
    :format
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :content => String.t | nil,
    :format => MicrosoftGraph.Model.MicrosoftGraphSecurityFormattedContentFormat.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:format, :struct, MicrosoftGraph.Model.MicrosoftGraphSecurityFormattedContentFormat)
  end
end
