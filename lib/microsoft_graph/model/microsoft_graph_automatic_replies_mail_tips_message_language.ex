# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAutomaticRepliesMailTipsMessageLanguage do
  @moduledoc """
  The language that the automatic reply message is in.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :displayName,
    :locale
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :displayName => String.t | nil,
    :locale => String.t | nil
  }

  def decode(value) do
    value
  end
end
