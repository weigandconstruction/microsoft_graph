# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.ManagedDeviceOverviewDeviceOperatingSystemSummary do
  @moduledoc """
  Device operating system summary.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :androidCorporateWorkProfileCount,
    :androidCount,
    :androidDedicatedCount,
    :androidDeviceAdminCount,
    :androidFullyManagedCount,
    :androidWorkProfileCount,
    :configMgrDeviceCount,
    :iosCount,
    :macOSCount,
    :unknownCount,
    :windowsCount,
    :windowsMobileCount
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :androidCorporateWorkProfileCount => integer() | nil,
    :androidCount => integer() | nil,
    :androidDedicatedCount => integer() | nil,
    :androidDeviceAdminCount => integer() | nil,
    :androidFullyManagedCount => integer() | nil,
    :androidWorkProfileCount => integer() | nil,
    :configMgrDeviceCount => integer() | nil,
    :iosCount => integer() | nil,
    :macOSCount => integer() | nil,
    :unknownCount => integer() | nil,
    :windowsCount => integer() | nil,
    :windowsMobileCount => integer() | nil
  }

  def decode(value) do
    value
  end
end
