# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAccessPackageAssignmentReviewSettings do
  @moduledoc """

  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :expirationBehavior,
    :fallbackReviewers,
    :isEnabled,
    :isRecommendationEnabled,
    :isReviewerJustificationRequired,
    :isSelfReview,
    :primaryReviewers,
    :schedule
  ]

  @type t :: %__MODULE__{
          :"@odata.type" => String.t(),
          :expirationBehavior =>
            MicrosoftGraph.Model.MicrosoftGraphAccessPackageAssignmentReviewSettingsExpirationBehavior.t()
            | nil,
          :fallbackReviewers =>
            [MicrosoftGraph.Model.MicrosoftGraphUnifiedApprovalStageEscalationApproversInner.t()]
            | nil,
          :isEnabled => boolean() | nil,
          :isRecommendationEnabled => boolean() | nil,
          :isReviewerJustificationRequired => boolean() | nil,
          :isSelfReview => boolean() | nil,
          :primaryReviewers =>
            [MicrosoftGraph.Model.MicrosoftGraphUnifiedApprovalStageEscalationApproversInner.t()]
            | nil,
          :schedule =>
            MicrosoftGraph.Model.MicrosoftGraphAccessPackageAssignmentReviewSettingsSchedule.t()
            | nil
        }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
    |> Deserializer.deserialize(
      :expirationBehavior,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphAccessPackageAssignmentReviewSettingsExpirationBehavior
    )
    |> Deserializer.deserialize(
      :fallbackReviewers,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphUnifiedApprovalStageEscalationApproversInner
    )
    |> Deserializer.deserialize(
      :primaryReviewers,
      :list,
      MicrosoftGraph.Model.MicrosoftGraphUnifiedApprovalStageEscalationApproversInner
    )
    |> Deserializer.deserialize(
      :schedule,
      :struct,
      MicrosoftGraph.Model.MicrosoftGraphAccessPackageAssignmentReviewSettingsSchedule
    )
  end
end
