defmodule MyAppTest do
  use ExUnit.Case
  doctest MyApp

  test "greets the world" do
    assert MyApp.without_guard(%{foo: %{bar: 123}}) == :world
  end
end
