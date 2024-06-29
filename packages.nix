{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    (nerdfonts.override {
      fonts =
        [ "JetBrainsMono" "GeistMono" "CommitMono" "ZedMono" "Recursive" ];
    })
    imagemagick
    fastfetch
    cbonsai
    ripgrep
    cmatrix
    neovim
    helix
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
