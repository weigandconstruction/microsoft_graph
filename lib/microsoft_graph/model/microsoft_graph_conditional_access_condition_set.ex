# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSet do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :applications,
    :clientAppTypes,
    :clientApplications,
    :devices,
    :locations,
    :platforms,
    :servicePrincipalRiskLevels,
    :signInRiskLevels,
    :userRiskLevels,
    :users
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :applications =>
            MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSetApplications.t() | nil,
          :clientAppTypes =>
            [MicrosoftGraph.Model.MicrosoftGraphConditionalAccessClientApp.t()] | nil,
          :clientApplications =>
            MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSetClientApplications.t()
            | nil,
          :devices =>
            MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSetDevices.t() | nil,
          :locations =>
            MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSetLocations.t() | nil,
          :platforms =>
            MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSetPlatforms.t() | nil,
          :servicePrincipalRiskLevels => [MicrosoftGraph.Model.MicrosoftGraphRiskLevel.t()] | nil,
          :signInRiskLevels => [MicrosoftGraph.Model.MicrosoftGraphRiskLevel.t()] | nil,
          :userRiskLevels => [MicrosoftGraph.Model.MicrosoftGraphRiskLevel.t()] | nil,
          :users =>
            MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSetUsers.t() | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :applications,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSetApplications
    )
    |> Deserializer.deserialize(
      :clientAppTypes,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphConditionalAccessClientApp
    )
    |> Deserializer.deserialize(
      :clientApplications,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSetClientApplications
    )
    |> Deserializer.deserialize(
      :devices,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSetDevices
    )
    |> Deserializer.deserialize(
      :locations,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSetLocations
    )
    |> Deserializer.deserialize(
      :platforms,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSetPlatforms
    )
    |> Deserializer.deserialize(
      :servicePrincipalRiskLevels,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphRiskLevel
    )
    |> Deserializer.deserialize(
      :signInRiskLevels,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphRiskLevel
    )
    |> Deserializer.deserialize(
      :userRiskLevels,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphRiskLevel
    )
    |> Deserializer.deserialize(
      :users,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphConditionalAccessConditionSetUsers
    )
  end
end
