{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    bun
    deno
    yarn
    biome
    rustywind
    corepack_latest
    pnpm-shell-completion
    nodePackages_latest.nodejs

    prettierd
    typescript
    emmet-language-server
    typescript-language-server
    nodePackages_latest.eslint
    nodePackages_latest.prettier
    vscode-langservers-extracted
    tailwindcss-language-server

    sumneko-lua-language-server
    luajitPackages.luarocks
    stylua
    lua

    # basedpyright
    virtualenv
    python314
    poetry
    black
    ruff
    pdm
    uv

    go
    gopls

    bash-language-server
    shellcheck
    beautysh

    nixfmt-classic
    nil
    gcc

    zig-shell-completions
    zig
    zls
  ];
}
