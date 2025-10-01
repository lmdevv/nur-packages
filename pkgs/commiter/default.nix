{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "commiter";
  version = "0.2.1";

  src = fetchFromGitHub {
    owner = "lmdevv";
    repo = "commiter";
    rev = "9530ae64759493731e8c5edff9b03e968bb1fc71";
    sha256 = "07y78xfia7l7shfmg1ar7n4fab39hrf2b1vdq9dnfpizl23c1frn";
  };

  vendorHash = null;

  meta = with lib; {
    description = "CLI tool for generating AI-powered commit messages";
    homepage = "https://github.com/lmdevv/commiter";
    license = licenses.mit;
    maintainers = [ "lmdevv" ];
  };
}
