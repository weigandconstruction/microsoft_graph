# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.BookingServiceSchedulingPolicy do
  @moduledoc """
  The set of policies that determine how appointments for this type of service should be created and managed.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :allowStaffSelection,
    :maximumAdvance,
    :minimumLeadTime,
    :sendConfirmationsToOwner,
    :timeSlotInterval
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :allowStaffSelection => boolean() | nil,
          :maximumAdvance => String.t() | nil,
          :minimumLeadTime => String.t() | nil,
          :sendConfirmationsToOwner => boolean() | nil,
          :timeSlotInterval => String.t() | nil
        }

  def decode(value) do
    value
  end
end
