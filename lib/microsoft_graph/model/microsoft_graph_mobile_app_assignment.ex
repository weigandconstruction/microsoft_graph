# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphMobileAppAssignment do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :intent,
    :settings,
    :target
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :intent => MicrosoftGraph.Model.MicrosoftGraphInstallIntent.t | nil,
    :settings => MicrosoftGraph.Model.MobileAppAssignmentSettings.t | nil,
    :target => MicrosoftGraph.Model.MobileAppAssignmentTarget.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:intent, :struct, MicrosoftGraph.Model.MicrosoftGraphInstallIntent)
     |> Deserializer.deserialize(:settings, :struct, MicrosoftGraph.Model.MobileAppAssignmentSettings)
     |> Deserializer.deserialize(:target, :struct, MicrosoftGraph.Model.MobileAppAssignmentTarget)
  end
end
