defmodule Neoscan.Claim do
  @moduledoc false
  use Ecto.Schema
  alias Neoscan.Transaction

  @primary_key false
  schema "claims" do
    field(:transaction_id, :integer)

    belongs_to(
      :transaction,
      Transaction,
      foreign_key: :transaction_hash,
      references: :hash,
      type: :binary
    )

    field(:vout_transaction_hash, :binary)
    field(:vout_n, :integer)
    field(:block_time, :utc_datetime)

    timestamps()
  end
end
