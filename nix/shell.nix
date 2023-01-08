let

  nixpkgs = import (import ./sources.nix).nixpkgs {};
  java = nixpkgs.openjdk17;

in

nixpkgs.mkShell {

  name = "the_project";

  # Fix locale warnings, see: https://stackoverflow.com/questions/62287269/nix-shell-cannot-change-locale-warning
  LOCALE_ARCHIVE_2_27 = "${nixpkgs.glibcLocales}/lib/locale/locale-archive";

  JAVA_HOME = "${java}/lib/openjdk";
  JDK_HOME = "${java}/lib/openjdk";

  buildInputs = with nixpkgs; [
    figlet lolcat # banner printing on enter

    # Dev
    java
    mysql
  ];

  shellHook = ''
    figlet $name | lolcat --freq 0.5
  '';
}
