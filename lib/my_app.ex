defmodule MyApp do
  @moduledoc """
  Documentation for `MyApp`.
  """

  @spec without_guard(map()) :: :world
  def without_guard(assigns) do
    :ok = assign(assigns)
    IO.inspect(assigns.foo.bar)
    :world
  end

  @spec with_guard(map()) :: :world
  def with_guard(assigns) when is_map(assigns) do
    :ok = assign(assigns)
    IO.inspect(assigns.foo.bar)
    :world
  end

  def assign(attrs) when is_map(attrs) or is_list(attrs) do
    :ok
  end
end
