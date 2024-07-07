{ pkgs, ... }: {
  fonts = {
    packages = [
      (pkgs.nerdfonts.override {
        fonts = [
          "JetBrainsMono"
          "GeistMono"
          "ZedMono"
          "Recursive"
          "CommitMono"
          "NerdFontsSymbolsOnly"
        ];
      })
    ];
  };

  environment.systemPackages = with pkgs; [
    imagemagick
    alacritty
    fastfetch
    ripgrep
    cbonsai
    cmatrix
    neovim
    helix
    unzip
    delta
    p7zip
    tokei
    kitty
    btop
    stow
    tmux
    curl
    wget
    tldr
    git
    eza
    bat
    fzf
    zsh
    fd
    gh
    jq
  ];
}
