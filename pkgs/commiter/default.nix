{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "commiter";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "lmdevv";
    repo = "commiter";
    rev = "3c8d238c96a982e82e0fb31fcb7565ed1b7ff29a";
    sha256 = "19dbs0x03is1z36gjgqh4c8a0445pqr6rf8a4fjw6hy1ci1lyjq1";
  };

  vendorHash = null;

  meta = with lib; {
    description = "CLI tool for generating AI-powered commit messages";
    homepage = "https://github.com/lmdevv/commiter";
    license = licenses.mit;
    maintainers = [ "lmdevv" ];
  };
}
