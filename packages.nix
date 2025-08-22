{ pkgs, ... }: {
  fonts = { packages = with pkgs; [ nerd-fonts.symbols-only ]; };

  environment.systemPackages = with pkgs; [
    nushellPlugins.gstat
    nushell

    ttfautohint
    imagemagick
    fastfetch
    hyperfine
    aerospace
    ripgrep
    cbonsai
    cmatrix
    zoxide
    neovim
    direnv # nix-shell
    helix
    unzip
    delta
    p7zip
    tokei
    kitty
    yazi
    btop
    stow
    tmux
    wget
    git
    eza
    bat
    fzf
    zsh
    qsv
    fd
    gh
    jq
  ];
}
