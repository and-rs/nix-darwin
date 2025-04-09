{ pkgs, ... }: {
  fonts = { packages = with pkgs; [ nerd-fonts.symbols-only ]; };

  environment.systemPackages = with pkgs; [
    ttfautohint
    imagemagick
    aerospace
    fastfetch
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
    kitty
    btop
    stow
    tmux
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
