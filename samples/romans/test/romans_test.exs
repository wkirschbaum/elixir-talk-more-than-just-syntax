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

    test "converts 'V' to 5" do
      assert Romans.convert("V") == 5
    end

    test "converts 'X' to 10" do
      assert Romans.convert("X") == 10
    end
  end
end
