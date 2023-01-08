{
  nixpkgs = builtins.fetchGit {
    url = "https://github.com/NixOS/nixpkgs.git";
    ref = "nixos-22.05";
    rev = "ce6aa13369b667ac2542593170993504932eb836";
  };
}
