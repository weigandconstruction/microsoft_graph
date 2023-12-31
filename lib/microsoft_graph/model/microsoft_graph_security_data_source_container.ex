# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphSecurityDataSourceContainer do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :createdDateTime,
    :displayName,
    :holdStatus,
    :lastModifiedDateTime,
    :releasedDateTime,
    :status
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :createdDateTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :holdStatus => MicrosoftGraph.Model.DataSourceContainerHoldStatus.t() | nil,
          :lastModifiedDateTime => DateTime.t() | nil,
          :releasedDateTime => DateTime.t() | nil,
          :status => MicrosoftGraph.Model.DataSourceContainerStatus.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
    |> Deserializer.deserialize(
      :holdStatus,
      :struct,
      MicrosoftGraph.Model.DataSourceContainerHoldStatus
    )
    |> Deserializer.deserialize(:lastModifiedDateTime, :datetime, nil)
    |> Deserializer.deserialize(:releasedDateTime, :datetime, nil)
    |> Deserializer.deserialize(:status, :struct, MicrosoftGraph.Model.DataSourceContainerStatus)
  end
end
