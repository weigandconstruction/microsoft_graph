# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphChatMessagePolicyViolationVerdictDetails do
  @moduledoc """
  Indicates what actions the sender may take in response to the policy violation. Supported values are: NoneAllowFalsePositiveOverride -- Allows the sender to declare the policyViolation to be an error in the DLP app and its rules, and allow readers to see the message again if the dlpAction hides it.AllowOverrideWithoutJustification -- Allows the sender to override the DLP violation and allow readers to see the message again if the dlpAction hides it, without needing to provide an explanation for doing so. AllowOverrideWithJustification -- Allows the sender to override the DLP violation and allow readers to see the message again if the dlpAction hides it, after providing an explanation for doing so.AllowOverrideWithoutJustification and AllowOverrideWithJustification are mutually exclusive.
  """

  @derive Jason.Encoder
  defstruct []

  @type t :: %__MODULE__{}

  def decode(value) do
    value
  end
end
