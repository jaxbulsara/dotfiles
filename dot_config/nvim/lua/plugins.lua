-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }

    ----------------------
    -- General Packages --
    ----------------------

    -- Monokai color scheme
    -- Use with `colorscheme monokai`
    -- Set transparent background with `hi Normal guibg=NONE ctermbg=NONE`
    use { 'tanvirtin/monokai.nvim' }

    -- Status bar
    use { 'itchyny/lightline.vim' }

    -- Vimux
    use { 'preservim/vimux' }

    -- tmux navigation
    use { 'alexghergh/nvim-tmux-navigation', config = function()
        -- Required to set up the plugin commands
        local nvim_tmux_nav = require('nvim-tmux-navigation')

        -- These keybindings must be placed here, not in init.vim.
        vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
        vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
        vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
        vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
        -- vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
        -- vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
    end }

    -- Supertab
    use { 'ervandew/supertab' }

    -- Automatic bracket pairs
    use { "windwp/nvim-autopairs", config = function()
        require("nvim-autopairs").setup {}

        local npairs = require'nvim-autopairs'
        local Rule   = require'nvim-autopairs.rule'
        local cond = require('nvim-autopairs.conds')

        -- Add symmetric space within brackets
        local brackets = { { '(', ')' }, { '[', ']' }, { '{', '}' } }
        npairs.add_rules {
          Rule(' ', ' ')
            :with_pair(function (opts)
              local pair = opts.line:sub(opts.col - 1, opts.col)
              return vim.tbl_contains({
                brackets[1][1]..brackets[1][2],
                brackets[2][1]..brackets[2][2],
                brackets[3][1]..brackets[3][2],
              }, pair)
            end)
        }
        for _,bracket in pairs(brackets) do
          npairs.add_rules {
            Rule(bracket[1]..' ', ' '..bracket[2])
              :with_pair(function() return false end)
              :with_move(function(opts)
                return opts.prev_char:match('.%'..bracket[2]) ~= nil
              end)
              :use_key(bracket[2])
          }
        end

        -- Angle brackets for Rust
        npairs.add_rules ({
            Rule( "<", ">", { "rust", "kotlin" } )
            :with_pair(cond.not_before_regex(" "))
            :with_move(cond.after_regex(">"))
        })
    end }

    -- Surrounding pairs
    use { "kylechui/nvim-surround", tag = "*", config = function()
        require("nvim-surround").setup({})
    end }

    -- Comments
    use { 'tpope/vim-commentary' }

    -- FuzzyFinder
    use { 'junegunn/fzf' }
    use { 'junegunn/fzf.vim' }

    -- Text objects
    use { 'kana/vim-textobj-user' }
    use { 'glts/vim-textobj-comment' }
    use { 'kana/vim-textobj-function' }

    -----------------------
    -- Language Packages --
    -----------------------

    -- ALE
    use { 'dense-analysis/ale' }
    use { 'maximbaz/lightline-ale' }

    -- Android
    use { 'hsanson/vim-android' }

    -- Cypher
    use { 'neo4j-contrib/cypher-vim-syntax' }

    -- Elixir
    use { 'amiralies/vim-textobj-elixir' }
    use { 'elixir-editors/vim-elixir' }

    -- Erlang
    use { 'vim-erlang/vim-erlang-runtime' }

    -- HTML
    use { 'mattn/emmet-vim' }

    -- JSON
    use { 'leshill/vim-json' }

    -- Javascript
    use { 'pangloss/vim-javascript' }
    use { 'MaxMEllon/vim-jsx-pretty' }

    -- Kotlin
    use { 'jaxbulsara/kotlin-vim' }

    -- Markdown
    use { 'ixru/nvim-markdown' }
    use { 'coachshea/vim-textobj-markdown' }

    -- Perl
    use { 'vim-perl/vim-perl' }

    -- Python
    use { 'davidhalter/jedi-vim' }
    use { 'jeetsukumaran/vim-pythonsense' }
    use { 'vim-python/python-syntax' }
    use { 'Konfekt/FastFold' }
    use { 'tmhedberg/SimpylFold' }

    -- Rust
    use { 'bagohart/vim-textobj-function-rust' }
    use { 'rust-lang/rust.vim' }

end )
