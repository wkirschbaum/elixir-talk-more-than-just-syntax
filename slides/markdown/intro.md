#HSLIDE

# Elixir
## More than just syntax

#HSLIDE

## Wilhelm Kirschbaum
[ @wkirschbaum ]


Prodigy Finance
#HSLIDE

I like languages :)

#VSLIDE

### C
```c
  void* pleasework() {
    char *p;
    *p = 0;
    return (void*) $p;
  }
```

#VSLIDE

### C# #
```c#
public class WeHaveObjects
{
   public static void Main()
   {
      System.Console.WriteLine("Hello, World!");
   }
}
```

#VSLIDE

### Ruby

```ruby
puts 'This is so liberating!'
```

#VSLIDE

### Go
```go
package main
import "fmt"
func main() {
  fmt.Println("So fast!!")
}
```

#VSLIDE

### Back to Ruby

```ruby
def method_missing(*args)
  puts 'Really??'
end
```

#HSLIDE

## What is Elixir?

#VSLIDE

Elixir is a dynamic, functional language (with beautiful syntax),
designed for building scalable and maintainable applications.

#VSLIDE

Created by José Valim

#VSLIDE

Built on the Erlang virtual machine (BEAM)

#VSLIDE

Hex

#VSLIDE

Mix

#HSLIDE

## Testing Elixir code

#VSLIDE

```bash
mix new romans
```

```bash
$ tree -d romans/
romans/
├── _build
│   └── dev
│       ├── consolidated
│       └── lib
│           └── romans
│               └── ebin
├── config
├── lib
└── test

9 directories
```

#VSLIDE

```elixir
# test/romans_test.exs
defmodule RomansTest do
  use ExUnit.Case, async: true
  doctest Romans

  describe "Roman.convert/1" do
    test "converts 'I' to 1" do
      assert Romans.convert("I") == 1
    end
  end
end
```

#VSLIDE

```bash
$ mix test
Compiling 1 file (.ex)
Generated romans app
** (CompileError) test/romans_test.exs:3: module Romans is not loaded and could not be found
    (ex_unit) expanding macro: ExUnit.DocTest.doctest/1
    test/romans_test.exs:3: RomansTest (module)
    (elixir) lib/code.ex:363: Code.require_file/2
    (elixir) lib/kernel/parallel_require.ex:56: anonymous fn/2 in Kernel.ParallelRequire.spawn_requires/5
```

#VSLIDE

```elixir
# test/romans_test.exs
defmodule RomansTest do
  use ExUnit.Case, async: true
  doctest Romans

  describe "Roman.convert/1" do
    test "converts 'I' to 1" do
      assert Romans.convert("I") == 1
    end
  end
end
```

```elixir
# lib/romans.exs
defmodule Romans do
  def convert(_roman) do
    1
  end
end
```

#VSLIDE

```bash
$ mix test
Compiling 1 file (.ex)
Generated romans app
.

Finished in 0.03 seconds
1 test, 0 failures

Randomized with seed 832675
```

#VSLIDE
```elixir
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
```
#VSLIDE

```bash
$ mix test
.

  1) test Roman.convert/1 converts 'II' to 2 (RomansTest)
     test/romans_test.exs:10
     Assertion with == failed
     code: Romans.convert("II") == 2
     lhs:  1
     rhs:  2
     stacktrace:
       test/romans_test.exs:11: (test)

Finished in 0.04 seconds
2 tests, 1 failure

Randomized with seed 762841
```
#VSLIDE

```elixir
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
```

```elixir
defmodule Romans do
  def convert(roman) do
    String.length(roman)
  end
end
```

#VSLIDE

```elixir
...

test "converts 'II' to 2" do
  assert Romans.convert("II") == 2
end

test "converts 'V' to 5" do
  assert Romans.convert("V") == 5
end
```

#VSLIDE

```elixir
defmodule Romans do
  def convert(roman) do
    if roman == "V" do
      5
    else
      String.length(roman)
    end
  end
end
```

#VSLIDE

```elixir
defmodule Romans do
  def convert(roman) do
    if roman == "V" do
      5
    else
      String.length(roman)
    end
  end
end
```

```elixir
defmodule Romans do
  def convert("V") do
    5
  end

  def convert(roman) do
    String.length(roman)
  end
end
```

#VSLIDE

```elixir
...

test "converts 'V' to 5" do
  assert Romans.convert("V") == 5
end

test "converts 'X' to 10" do
  assert Romans.convert("X") == 10
end
```

#VSLIDE

```elixir
defmodule Romans do
  def convert("X") do
    10
  end

  def convert("V") do
    5
  end

  def convert(roman) do
    String.length(roman)
  end
end
```

#VSLIDE

```bash
$ mix test
Compiling 1 file (.ex)
....

Finished in 0.04 seconds
4 tests, 0 failures

Randomized with seed 26252
```
#VSLIDE

```elixir
defmodule Romans do
  def convert("X") do
    10
  end

  def convert("V") do
    5
  end

  def convert(roman) do
    String.length(roman)
  end
end
```

#VSLIDE

```elixir
defmodule Romans do
  def convert("X") do
    String.duplicate("I", 10)
    |> convert
  end

  def convert("V") do
    String.duplicate("I", 5)
    |> convert
  end

  def convert(roman) do
    String.length(roman)
  end
end
```

#VSLIDE

```elixir
defmodule Romans do
  def convert(romans) do
    romans
    |> map_to_ones
    |> ones_to_integer
  end

  defp map_to_ones(romans) do
    Map.get(%{
      "X" => String.duplicate("I", 10),
      "V" => String.duplicate("I", 5),
    }, romans, romans)
  end

  defp ones_to_integer(ones) do
    String.length(ones)
  end
end
```

#VSLIDE

```elixir
...

test "converts 'V' to 5" do
  assert Romans.convert("V") == 5
end

test "converts 'IV' to 4" do
  assert Romans.convert("IV") == 4
end

...
```

#VSLIDE

```elixir
defp map_to_ones(romans) do
  Map.get(%{
    "X" => String.duplicate("I", 10),
    "V" => String.duplicate("I", 5),
    "IV" => String.duplicate("I", 4)
  }, romans, romans)
end
```

#VSLIDE

```elixir
...

test "converts 'IV' to 4" do
  assert Romans.convert("IV") == 4
end

test "converts 'VII' to 7" do
  assert Romans.convert("VII") == 7
end

...
```

#VSLIDE

```elixir
defmodule Romans do
  def convert(romans) do
    romans
    |> to_ones
    |> ones_to_integer
  end

  defp to_ones(romans) do
    romans
    |> String.replace("IV", ones(4))
    |> String.replace("V", ones(5))
    |> String.replace("X", ones(10))
  end

  defp ones_to_integer(ones) do
    String.length(ones)
  end

  defp ones(num) do
    String.duplicate("I", num)
  end
end

```

#HSLIDE

## Mocking using actual server using bypass

Notes:
This is not ruby! Change the way you think! (from previous talks: ruby devs explaining elixir)

More than syntax, so lets show some syntax.
