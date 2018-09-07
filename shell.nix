with import <nixpkgs> {};

stdenvNoCC.mkDerivation {
  name = "lambda_cache";
  buildInputs = [ elixir ];
}
