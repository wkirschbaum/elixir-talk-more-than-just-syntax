defmodule RomansTest do
  use ExUnit.Case, async: true
  doctest Romans

  describe "convert roman numerals to integer" do
    test "convert 'I' to 1" do
      assert Romans.convert("I") == 1
    end
  end
end
