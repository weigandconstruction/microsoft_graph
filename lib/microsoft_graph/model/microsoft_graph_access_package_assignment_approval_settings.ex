# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAccessPackageAssignmentApprovalSettings do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :isApprovalRequiredForAdd,
    :isApprovalRequiredForUpdate,
    :stages
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :isApprovalRequiredForAdd => boolean() | nil,
          :isApprovalRequiredForUpdate => boolean() | nil,
          :stages =>
            [
              MicrosoftGraph.Model.MicrosoftGraphAccessPackageAssignmentApprovalSettingsStagesInner.t()
            ]
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :stages,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphAccessPackageAssignmentApprovalSettingsStagesInner
    )
  end
end
