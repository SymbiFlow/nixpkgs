{ stdenv
, buildPythonPackage
, fetchPypi
, html5lib
, isPy3k
}:

buildPythonPackage rec {
  pname = "mechanize";
  version = "0.4.1";
  disabled = isPy3k;

  src = fetchPypi {
    inherit pname version;
    sha256 = "8954081ef3149794920f0b9ead8af6927059b6ac76d81abc8a4d6366c6fa86ba";
  };

  propagatedBuildInputs = [ html5lib ];

  doCheck = false;

  meta = with stdenv.lib; {
    description = "Stateful programmatic web browsing in Python";
    homepage = http://wwwsearch.sourceforge.net/;
    license = "BSD-style";
  };

}
