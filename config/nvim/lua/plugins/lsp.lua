return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  dependencies = {
    -- LSP Support
    { 'neovim/nvim-lspconfig' }, -- Required
    { 'williamboman/mason.nvim' }, -- Optional
    { 'williamboman/mason-lspconfig.nvim' }, -- Optional

    -- Autocompletion
    { 'hrsh7th/nvim-cmp' }, -- Required
    { 'hrsh7th/cmp-nvim-lsp' }, -- Required
    { 'hrsh7th/cmp-buffer' }, -- Optional
    { 'hrsh7th/cmp-path' }, -- Optional
    -- {'hrsh7th/cmp-cmdline'},         -- Optional
    { 'saadparwaiz1/cmp_luasnip' }, -- Optional
    { 'hrsh7th/cmp-nvim-lua' }, -- Optional

    -- Snippets
    { 'L3MON4D3/LuaSnip' }, -- Required
    { 'rafamadriz/friendly-snippets' }, -- Optional
  },
  config = function()

    -- Learn the keybindings, see :help lsp-zero-keybindings
    -- Learn to configure LSP servers, see :help lsp-zero-api-showcase
    local lsp = require('lsp-zero')
    lsp.preset('recommended')

    lsp.ensure_installed({
      'tsserver',
      'eslint',
      'lua_ls',
    })


    lsp.set_preferences({
      -- use letters instead of icons in gutter. thanks primagen
      -- sign_icons = { }
      sign_icons = {
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '»'
      }
    })


    -- (Optional) Configure lua language server for neovim
    lsp.nvim_workspace()


    lsp.setup()


    -- print("hello")
    local on_attach = function(_, bufnr)
      -- print("attaching LSP...")
      -- Enable completion triggered by <c-x><c-o>
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

      -- Mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      local bufopts = { noremap = true, silent = true, buffer = bufnr }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
      vim.keymap.set('n', 'gI', vim.diagnostic.open_float, bufopts)
      vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, bufopts)
      vim.keymap.set('n', '<leader><space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
      vim.keymap.set('n', '<leader><space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
      vim.keymap.set('n', '<leader><space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, bufopts)
      vim.keymap.set('n', '<leader><space>D', vim.lsp.buf.type_definition, bufopts)
      vim.keymap.set('n', '<leader><space>rn', vim.lsp.buf.rename, bufopts)
      vim.keymap.set('n', '<leader><space>ca', vim.lsp.buf.code_action, bufopts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
      vim.keymap.set('n', '<leader><space>f', function() vim.lsp.buf.format { async = true } end, bufopts)

      -- set inline diagnostics
      vim.diagnostic.config({ virtual_text = true })

      print("attaching LSP...done")
    end


    local lspconfig = require('lspconfig')


    lspconfig.sourcekit.setup {
      on_attach = on_attach,
    }

    -- setting up lua
    local runtime_path = vim.split(package.path, ';')
    table.insert(runtime_path, 'lua/?.lua')
    table.insert(runtime_path, 'lua/?/init.lua')
    lspconfig.lua_ls.setup {
      on_attach = on_attach,
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = 'LuaJIT',
            path = runtime_path,
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { 'vim', 'hs' },
          },
          -- commands = {
          --   Format = {
          --     function()
          --       require('stylua-nvim').format_file()
          --     end,
          --   },
          -- },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
        },
      },
    }

    lspconfig.pyright.setup {
      on_attach = on_attach,
      settings = {
        {
          python = {
            analysis = {
              autoSearchPaths = true,
              diagnosticMode = "workspace",
              useLibraryCodeForTypes = true
            }
          }
        },
      },
    }

    lspconfig.jdtls.setup {
      on_attach = on_attach,
    }

  end,
}
