defmodule RomansTest do
  use ExUnit.Case, async: true
  doctest Romans

  describe "Roman.convert/1" do
    test "converts 'I' to 1" do
      assert Romans.convert("I") == 1
    end

    test "converts 'II' to 2" do
      assert Romans.convert("II") == 2
    end
  end
end
