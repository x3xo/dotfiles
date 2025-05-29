return {
  -- 'VonHeikemen/lsp-zero.nvim',
  -- branch = 'v3.x',
  'neovim/nvim-lspconfig', -- Required
  dependencies = {

    { 'folke/neodev.nvim' },
    -- LSP Support
    { 'neovim/nvim-lspconfig' }, -- Required
    { 'williamboman/mason.nvim' }, -- Optional
    { 'williamboman/mason-lspconfig.nvim' }, -- Optional




--    -- Autocompletion
--    { 'hrsh7th/nvim-cmp' }, -- Required
--    { 'hrsh7th/cmp-nvim-lsp' }, -- Required
--    { 'hrsh7th/cmp-buffer' }, -- Optional
--    { 'hrsh7th/cmp-path' }, -- Optional
--    -- {'hrsh7th/cmp-cmdline'},         -- Optional
--    { 'saadparwaiz1/cmp_luasnip' }, -- Optional
--    { 'hrsh7th/cmp-nvim-lua' }, -- Optional
--
--    -- Snippets
--    { 'L3MON4D3/LuaSnip' }, -- Required
--    { 'rafamadriz/friendly-snippets' }, -- Optional
  },
  config = function()

    local neodev = require('neodev').setup()

    -- enable snippets
    -- require("luasnip.loaders.from_vscode").lazy_load()

    local on_attach = function(_, bufnr)
      -- print("attaching LSP...")
      -- Enable completion triggered by <c-x><c-o>
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

      -- Mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      local bufopts = { noremap = true, silent = true, buffer = bufnr }

      -- Helper function to set keymaps with merged options
      local function keymap(mode, lhs, rhs, custom_opts)
        local opts = vim.tbl_extend("force", bufopts, custom_opts or {})
        vim.keymap.set(mode, lhs, rhs, opts)
      end

      keymap('n', 'gD', vim.lsp.buf.declaration, { desc = "declarations" })
      keymap('n', 'gd', vim.lsp.buf.definition, { desc = "definition" })
      keymap('n', 'gt', vim.lsp.buf.type_definition, { desc = "type definition" })
      keymap('n', 'K', vim.lsp.buf.hover, { desc = "hover" })
      keymap('n', 'gi', vim.lsp.buf.implementation, { desc = "implementations" })
      keymap('n', 'gI', vim.diagnostic.open_float, { desc = "diagnostic" })
      keymap('i', '<C-k>', vim.lsp.buf.signature_help, { desc = "signature help" })
      keymap('n', '<leader><space>wa', vim.lsp.buf.add_workspace_folder, { desc = "add workspace folder" })
      keymap('n', '<leader><space>wr', vim.lsp.buf.remove_workspace_folder, { desc = "remove workspace folder" })
      keymap('n', '<leader><space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, { desc = "list workspace folders" })
      keymap('n', '<leader><space>D', vim.lsp.buf.type_definition, { desc = "type definition" })
      keymap('n', '<leader>rn', vim.lsp.buf.rename, { desc = "rename" })
      keymap('n', '<leader>a', vim.lsp.buf.code_action, { desc = "code actions" })
      keymap('n', 'gr', vim.lsp.buf.references, { desc = "references" })
      keymap('n', '<leader><space>f', function() vim.lsp.buf.format { async = true } end, { desc = "format" })

      -- set inline diagnostics
      vim.diagnostic.config({ virtual_text = true })

      -- print("attaching LSP...done")
    end

    -- local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
    local lsp_capabilities = require('blink.cmp').get_lsp_capabilities()

    local lspconfig = require('lspconfig')
    local default_setup = function(server)
      -- require('lspconfig')[server].setup({
      lspconfig[server].setup({
        capabilities = lsp_capabilities,
      })
    end

    require('mason').setup({})
    require('mason-lspconfig').setup({
      automatic_enable = true,
      ensure_installed = {
        -- 'tsserver',
        'ts_ls',
        'eslint',
        'clangd',
        'pyright',
        'jdtls',
        'lua_ls',
      },
      handlers = {
        -- lsp_zero.default_setup,
        default_setup,
        pyright = function()
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
        end,
        jdtls = function()
          lspconfig.jdtls.setup {
            on_attach = on_attach,
          }
        end,
        clangd = function()
          lspconfig.clangd.setup {
            on_attach = on_attach,
          }
        end,
        eslint = function()
          lspconfig.eslint.setup {
            on_attach = on_attach,
          }

        end,
        -- tsserver = function()
        --   lspconfig.tsserver.setup {
        --     on_attach = on_attach,
        --   }
        -- end,
        ts_ls = function()
          lspconfig.ts_ls.setup {
            on_attach = on_attach,
          }
        end,
        lua_ls = function()
          local runtime_path = vim.split(package.path, ';')
          table.insert(runtime_path, 'lua/?.lua')
          table.insert(runtime_path, 'lua/?/init.lua')

          -- setting up lua
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
        end
      },
    })

--    local cmp = require('cmp')
--    cmp.setup({
--      sources = {
--          { name = 'nvim_lsp' },
--          { name = 'luasnip' },
--          { name = 'path' },
--        },
--      mapping = cmp.mapping.preset.insert({
--        -- Enter key confirms completion item
--        ['<CR>'] = cmp.mapping.confirm({select = true}),
--
--        -- Ctrl + space triggers completion menu
--        ['<C-Space>'] = cmp.mapping.complete(),
--        ['<tab>'] = cmp.mapping.select_next_item(),
--        ['<s-tab>'] = cmp.mapping.select_prev_item(),
--        ['<C-j>'] = cmp.mapping.select_next_item(),
--        ['<C-k>'] = cmp.mapping.select_prev_item(),
--        -- Scroll the documentation window [b]ack / [f]orward
--        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--        ['<C-f>'] = cmp.mapping.scroll_docs(4),
--      }),
--      snippet = {
--        expand = function(args)
--          require('luasnip').lsp_expand(args.body)
--        end,
--      },
--    })

    lspconfig.sourcekit.setup {
      on_attach = on_attach,
    }

    -- lsp_zero.set_preferences({
    --   -- use letters instead of icons in gutter. thanks primagen
    --   -- sign_icons = { }
    --   sign_icons = {
    --     error = '✘',
    --     warn = '▲',
    --     hint = '⚑',
    --     info = '»'
    --   }
    -- })

    -- this works but trying out not using it
    -- local signs = { Error = "✘ ", Warn = "▲ ", Hint = "⚑ ", Info = " " }
    -- for type, icon in pairs(signs) do
    --   local hl = "DiagnosticSign" .. type
    --   vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    -- end

  end,
}
