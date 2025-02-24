{ pkgs, ... }: {
  fonts = { packages = with pkgs; [ nerd-fonts.symbols-only ]; };

  environment.systemPackages = with pkgs; [
    ttfautohint
    imagemagick
    fastfetch
    neovide
    ripgrep
    cbonsai
    cmatrix
    neovim
    cowsay
    zellij
    direnv # nix-shell
    unzip
    delta
    p7zip
    tokei
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
