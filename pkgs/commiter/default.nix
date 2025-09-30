{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "commiter";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "lmdevv";
    repo = "commiter";
    rev = "046225ba61616b055572d3d80fc78c600a68d45b";
    sha256 = "0zdsnc06923rzkzwmk5p12x7dki7px2agyby3daiibv227qmwnwc";
  };

  vendorHash = null;

  meta = with lib; {
    description = "CLI tool for generating AI-powered commit messages";
    homepage = "https://github.com/lmdevv/commiter";
    license = licenses.mit;
    maintainers = [ "lmdevv" ];
  };
}
