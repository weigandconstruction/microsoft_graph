# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.ManagedDeviceOverviewDeviceExchangeAccessStateSummary do
  @moduledoc """
  Distribution of Exchange Access State in Intune
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :allowedDeviceCount,
    :blockedDeviceCount,
    :quarantinedDeviceCount,
    :unavailableDeviceCount,
    :unknownDeviceCount
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :allowedDeviceCount => integer() | nil,
    :blockedDeviceCount => integer() | nil,
    :quarantinedDeviceCount => integer() | nil,
    :unavailableDeviceCount => integer() | nil,
    :unknownDeviceCount => integer() | nil
  }

  def decode(value) do
    value
  end
end
