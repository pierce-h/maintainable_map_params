defmodule MaintainableMapParamsTest do
  use ExUnit.Case

  doctest MaintainableMapParams

  describe "permit/2" do
    test "permits specified keys" do
      assert MaintainableMapParams.permit(%{foo: "test", bar: "test 2"}, [:foo]) == %{foo: "test"}
    end

    test "converts stringified keys to atoms" do
      assert MaintainableMapParams.permit(%{"foo" => "test", "bar" => "test 2"}, [:foo]) == %{foo: "test"}
    end
  end
end
