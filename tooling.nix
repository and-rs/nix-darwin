{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    bun
    deno
    biome
    stylelint
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
    pyrefly
    djlint
    black
    zuban
    ruff
    uv
    ty

    go
    gopls

    bash-language-server
    shellcheck
    beautysh

    nixfmt-classic
    nil
    gcc

    rustc
    cargo
    rustup
    rustfmt

    zig-shell-completions

    tinymist
    typstyle
    typst

    postgres-lsp
    sleek

    hurl
    curl

    qsv
    miller
    csvdiff
    csvlens
  ];
}
