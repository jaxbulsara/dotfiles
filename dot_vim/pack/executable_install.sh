#!/bin/bash
# ~/.vim/pack/install.sh
# Make this script executable with `chmod u+x install.sh`
# Updates and installs vim 8+ packages

source ~/.vim/pack/functions.sh

# Package configuration
# use (* & wait) & structure to execute each group in a subshell.

# User Interface
(
    group user-interface
    package https://github.com/preservim/nerdtree.git &
    package https://github.com/vim-airline/vim-airline.git &
    package https://github.com/vim-airline/vim-airline-themes.git &
    package https://github.com/christoomey/vim-tmux-navigator.git &
    package https://github.com/preservim/vimux.git &
    package https://github.com/junegunn/fzf.git &
    package https://github.com/junegunn/fzf.vim.git &
    wait
) &

# Editing

(
    group editing
    package https://github.com/ervandew/supertab.git &
    package https://github.com/tpope/vim-surround.git &
    package https://github.com/kana/vim-textobj-user.git &
    package https://github.com/tpope/vim-commentary.git &
    package https://github.com/jaxbulsara/auto-pairs.git &
    wait
) &

# Linting
(
    group lint
    package https://github.com/dense-analysis/ale.git &
    wait
) &

# Python
(
    group python
    package https://github.com/davidhalter/jedi-vim.git &
    package https://github.com/jeetsukumaran/vim-pythonsense.git &
    package https://github.com/vim-python/python-syntax.git &
    package https://github.com/tmhedberg/SimpylFold.git &
    package https://github.com/Konfekt/FastFold.git &
    wait
) &

# Markdown
(
    group markdown
    package https://github.com/preservim/vim-markdown.git &
    package https://github.com/coachshea/vim-textobj-markdown.git &
    wait
) &

# Cypher
(
    group cypher
    package https://github.com/neo4j-contrib/cypher-vim-syntax.git &
    wait
) &

# Javascript
(
    group javascript
    package https://github.com/pangloss/vim-javascript.git &
    package https://github.com/MaxMEllon/vim-jsx-pretty.git &
    wait
) &

# HTML
(
    group html
    package https://github.com/mattn/emmet-vim.git &
    wait
) &

# Rust
(
    group rust
    package https://github.com/rust-lang/rust.vim.git &
    wait
) &

# Elixir
(
    group elixir
    package https://github.com/elixir-editors/vim-elixir.git &
    wait
) &

# Erlang
(
    group erlang
    package https://github.com/vim-erlang/vim-erlang-runtime.git &
    wait
) &

# Perl
(
    group perl
    package https://github.com/vim-perl/vim-perl.git &
    wait
) &

# Files
(
    group files
    package https://github.com/leshill/vim-json.git &
    wait
) &

# Android
(
    group android
    package https://github.com/hsanson/vim-android.git &
) &

# Kotlin
(
    group kotlin
    package https://github.com/udalov/kotlin-vim.git &
) &

wait
