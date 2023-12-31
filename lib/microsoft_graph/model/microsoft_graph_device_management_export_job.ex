# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJob do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :expirationDateTime,
    :filter,
    :format,
    :localizationType,
    :reportName,
    :requestDateTime,
    :select,
    :snapshotId,
    :status,
    :url
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :expirationDateTime => DateTime.t() | nil,
          :filter => String.t() | nil,
          :format =>
            MicrosoftGraph.Model.MicrosoftGraphDeviceManagementReportFileFormat.t() | nil,
          :localizationType =>
            MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJobLocalizationType.t() | nil,
          :reportName => String.t() | nil,
          :requestDateTime => DateTime.t() | nil,
          :select => [String.t()] | nil,
          :snapshotId => String.t() | nil,
          :status => MicrosoftGraph.Model.MicrosoftGraphDeviceManagementReportStatus.t() | nil,
          :url => String.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:expirationDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :format,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphDeviceManagementReportFileFormat
    )
    |> Deserializer.deserialize(
      :localizationType,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphDeviceManagementExportJobLocalizationType
    )
    |> Deserializer.deserialize(:requestDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :status,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphDeviceManagementReportStatus
    )
  end
end
