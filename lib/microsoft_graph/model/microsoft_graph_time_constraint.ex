# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphTimeConstraint do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :activityDomain,
    :timeSlots
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :activityDomain =>
            MicrosoftGraph.Model.MicrosoftGraphTimeConstraintActivityDomain.t() | nil,
          :timeSlots =>
            [
              MicrosoftGraph.Model.MeCalendarViewEventInstancesEventTentativelyAcceptRequestProposedNewTime.t()
            ]
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :activityDomain,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphTimeConstraintActivityDomain
    )
    |> Deserializer.deserialize(
      :timeSlots,
      :list,
      MicrosoftGraph.Model.MeCalendarViewEventInstancesEventTentativelyAcceptRequestProposedNewTime
    )
  end
end
