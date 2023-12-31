# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphWindowsInformationProtectionAppLearningSummary do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :applicationName,
    :applicationType,
    :deviceCount
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :applicationName => String.t() | nil,
          :applicationType => MicrosoftGraph.Model.MicrosoftGraphApplicationType.t() | nil,
          :deviceCount => integer() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :applicationType,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphApplicationType
    )
  end
end
