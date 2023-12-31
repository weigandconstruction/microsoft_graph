# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MeCalendarViewEventInstancesEventTentativelyAcceptRequest do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :Comment,
    :ProposedNewTime,
    :SendResponse
  ]

  @type t :: %__MODULE__{
          :Comment => String.t() | nil,
          :ProposedNewTime =>
            MicrosoftGraph.Model.MeCalendarViewEventInstancesEventTentativelyAcceptRequestProposedNewTime.t()
            | nil,
          :SendResponse => boolean() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :ProposedNewTime,
      :struct,
      MicrosoftGraph.Model.MeCalendarViewEventInstancesEventTentativelyAcceptRequestProposedNewTime
    )
  end
end
