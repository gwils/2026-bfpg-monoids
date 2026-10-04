{
  description = "LaTeX document with minted syntax highlighting";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          (pkgs.texlive.withPackages (ps: [
            ps.minted
            ps.latexmk
            ps.collection-latexrecommended
          ]))
          pkgs.python3
          pkgs.python3Packages.pygments
        ];
      };
    };
}

