# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphReportRootAuthenticationMethods do
  @moduledoc """
  Container for navigation properties for Microsoft Entra authentication methods resources.
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :userRegistrationDetails
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :id => String.t() | nil,
          :userRegistrationDetails =>
            [MicrosoftGraph.Model.MicrosoftGraphUserRegistrationDetails.t()] | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :userRegistrationDetails,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphUserRegistrationDetails
    )
  end
end
