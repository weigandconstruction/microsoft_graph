# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphItemActivity do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :access,
    :activityDateTime,
    :actor,
    :driveItem
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :access => MicrosoftGraph.Model.ItemActivityAccess.t() | nil,
          :activityDateTime => DateTime.t() | nil,
          :actor => MicrosoftGraph.Model.ItemActivityActor.t() | nil,
          :driveItem => MicrosoftGraph.Model.ItemActivityDriveItem.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(:access, :struct, MicrosoftGraph.Model.ItemActivityAccess)
    |> Deserializer.deserialize(:activityDateTime, :datetime, nil)
    |> Deserializer.deserialize(:actor, :struct, MicrosoftGraph.Model.ItemActivityActor)
    |> Deserializer.deserialize(:driveItem, :struct, MicrosoftGraph.Model.ItemActivityDriveItem)
  end
end
