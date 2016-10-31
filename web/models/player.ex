defmodule PhoenixLeaderboard.Player do
  use PhoenixLeaderboard.Web, :model
  @derive { Poison.Encoder, only: [:id, :name, :score] }
  
  schema "players" do
    field :name, :string
    field :score, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :score])
    |> validate_required([:name, :score])
  end
end
