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
    rev = "c66e0d621412975396517763fcefe10ae3116e96";
    sha256 = "04fl7jfr8zapcz83sj4y4jqcmn9sgh2zqkq5vmy140knyd0jcxm2";
  };

  vendorHash = null;

  meta = with lib; {
    description = "CLI tool for generating AI-powered commit messages";
    homepage = "https://github.com/lmdevv/commiter";
    license = licenses.mit;
    maintainers = [ "lmdevv" ];
  };
}
