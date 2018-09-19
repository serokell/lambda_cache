# Lambda Cache

`lambda_cache` is a small elixir library made for caching slow functions whose
results are needed quickly. It refreshes every five minutes by default, whether
the results are used or not. That way, a fairly up to date result is always
instantly available.

## Usage

Define a module with a `refresh` function:

```elixir
defmodule FooBar do
  use LambdaCache, name: :baz

  def refresh do
    "hello world"
  end
end
```

Call `start_link` to begin caching:

```elixir
FooBar.start_link([])
```

Retrieve results:

```elixir
iex> FooBar.retrieve(:baz)
"hello world"
```
