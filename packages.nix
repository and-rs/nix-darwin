{ pkgs, ... }: {
  fonts = {
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      nerd-fonts.geist-mono
      nerd-fonts.zed-mono
      nerd-fonts.recursive-mono
      nerd-fonts.symbols-only
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
    cowsay
    zellij
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
