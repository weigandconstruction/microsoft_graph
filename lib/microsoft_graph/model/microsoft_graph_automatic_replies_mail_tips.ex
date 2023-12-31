# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAutomaticRepliesMailTips do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :message,
    :messageLanguage,
    :scheduledEndTime,
    :scheduledStartTime
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :message => String.t() | nil,
          :messageLanguage =>
            MicrosoftGraph.Model.MicrosoftGraphAutomaticRepliesMailTipsMessageLanguage.t() | nil,
          :scheduledEndTime =>
            MicrosoftGraph.Model.MicrosoftGraphAutomaticRepliesMailTipsScheduledEndTime.t() | nil,
          :scheduledStartTime =>
            MicrosoftGraph.Model.MicrosoftGraphAutomaticRepliesMailTipsScheduledStartTime.t()
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :messageLanguage,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphAutomaticRepliesMailTipsMessageLanguage
    )
    |> Deserializer.deserialize(
      :scheduledEndTime,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphAutomaticRepliesMailTipsScheduledEndTime
    )
    |> Deserializer.deserialize(
      :scheduledStartTime,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphAutomaticRepliesMailTipsScheduledStartTime
    )
  end
end
