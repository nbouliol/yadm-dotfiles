starship init fish | source

source ~/.zshenv

zoxide init fish | source

set LSCOLORS gxBxhxDxfxhxhxhxhxcxcx


# Add rust binaries to PATH if rust is installed
if test -d ~/.cargo/bin/
    set PATH ~/.cargo/bin/ $PATH
end


