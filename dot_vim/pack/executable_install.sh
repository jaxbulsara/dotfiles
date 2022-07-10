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
    wait
) &

# Editing

(
    group editing
    package https://github.com/ervandew/supertab.git &
    package https://github.com/tpope/vim-surround.git &
    package https://github.com/kana/vim-textobj-user.git &
    package https://github.com/tpope/vim-commentary.git &
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
)

# Cypher
(
    group cypher
    package https://github.com/neo4j-contrib/cypher-vim-syntax.git &
)

# Javascript
(
    group javascript
    package https://github.com/pangloss/vim-javascript.git &
    package https://github.com/MaxMEllon/vim-jsx-pretty.git &
)

# Files
(
    group files
    package https://github.com/leshill/vim-json.git &
)

wait

