{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    bun
    deno
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

    python313Packages.tkinter
    python313Packages.pandas
    python313Packages.pip
    basedpyright
    virtualenv
    python313
    black
    ruff
    uv

    jinja-lsp
    djlint

    go
    gopls

    bash-language-server
    shellcheck
    beautysh

    crystal
    nixfmt-classic
    nil
    gcc

    zig-shell-completions

    postgres-lsp
    sleek

    hurl
    curl
  ];
}
