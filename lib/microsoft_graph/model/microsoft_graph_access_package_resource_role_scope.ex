# NOTE: This file is auto generated by OpenAPI Generator 7.0.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule MicrosoftGraph.Model.MicrosoftGraphAccessPackageResourceRoleScope do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :"@odata.type",
    :id,
    :createdDateTime,
    :role,
    :scope
  ]

  @type t :: %__MODULE__{
    :"@odata.type" => String.t,
    :id => String.t | nil,
    :createdDateTime => DateTime.t | nil,
    :role => MicrosoftGraph.Model.AccessPackageResourceRoleScopeRole.t | nil,
    :scope => MicrosoftGraph.Model.AccessPackageResourceRoleScopeScope.t | nil
  }

  alias MicrosoftGraph.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:createdDateTime, :datetime, nil)
     |> Deserializer.deserialize(:role, :struct, MicrosoftGraph.Model.AccessPackageResourceRoleScopeRole)
     |> Deserializer.deserialize(:scope, :struct, MicrosoftGraph.Model.AccessPackageResourceRoleScopeScope)
  end
end
