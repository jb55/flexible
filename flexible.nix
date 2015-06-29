{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "flexible";
  version = "0.1.0.0";
  src = ./.;
  buildDepends = [ base ];
  description = "Flexible data type for dealing with unexpected data";
  license = stdenv.lib.licenses.mit;
}
