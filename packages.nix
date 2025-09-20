{ pkgs, ... }: {
  fonts = { packages = with pkgs; [ nerd-fonts.symbols-only ]; };

  environment.systemPackages = with pkgs; [
    nushellPlugins.gstat
    nushell

    # ttfautohint
    ffmpeg_6-full
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
    skhd
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
    fd
    gh
    jq
  ];
}
