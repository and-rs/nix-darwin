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
    typescript-language-server
    nodePackages_latest.eslint
    nodePackages_latest.prettier
    vscode-langservers-extracted
    tailwindcss-language-server

    luajitPackages.luarocks
    lua-language-server
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
