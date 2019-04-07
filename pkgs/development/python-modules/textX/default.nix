{ stdenv, lib, fetchPypi, buildPythonPackage, arpeggio }:

buildPythonPackage rec {
  pname = "textX";
  version="1.8.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1vhc0774yszy3ql5v7isxr1n3bqh8qz5gb9ahx62b2qn197yi656";
  };

  doCheck = false;
  propagatedBuildInputs = [ arpeggio ];

  meta = with lib; {
    homepage = "https://github.com/textX/textX";
    license = licenses.mit;
    description = "Domain-Specific Languages and parsers in Python made easy";
  };
}
