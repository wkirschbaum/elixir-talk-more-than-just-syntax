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

```elixir
# romans/test/romans_test.exs
defmodule RomansTest do
  use ExUnit.Case, async: true
  doctest Romans

  describe "convert roman numerals to integer" do
    test "convert 'I' to 1" do
      assert Romans.convert("I") == 1
    end
  end
end
```

```elixir
# romans/lib/romans.exs
defmodule Romans do
  def convert(_roman) do
    1
  end
end
```

```bash
mix test
```



## Mocking using actual server using bypass

Notes:
This is not ruby! Change the way you think! (from previous talks: ruby devs explaining elixir)

More than syntax, so lets show some syntax.
