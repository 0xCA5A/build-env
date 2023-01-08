{
  nixpkgs = builtins.fetchGit {
    url = "https://github.com/NixOS/nixpkgs.git";
    ref = "nixos-22.11";
    rev = "f1c97ef345b0fc9e1ac5942cebc039c473bd8a8a";
  };
}
