{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "commiter";
  version = "0.2.2";

  src = fetchFromGitHub {
    owner = "lmdevv";
    repo = "commiter";
    rev = "06db99ddbdc46fa41435b47a9005130bd0ad92c3";
    sha256 = "1a9wxfy5a1cfpvgq4wvi0aclqbaywxqg664k9plqx5sxb16is02d";
  };

  vendorHash = null;

  meta = with lib; {
    description = "CLI tool for generating AI-powered commit messages";
    homepage = "https://github.com/lmdevv/commiter";
    license = licenses.mit;
    maintainers = [ "lmdevv" ];
  };
}
