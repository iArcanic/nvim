-- Plugins setup
require("preetham.plugins-setup")

-- Core
require("preetham.core.options")
require("preetham.core.keymaps")

-- Plugins
require("preetham.plugins.comment")
require("preetham.plugins.nvim-tree")
require("preetham.plugins.lualine")
require("preetham.plugins.telescope")
require("preetham.plugins.nvim-cmp")
require("preetham.plugins.treesitter")
require("preetham.plugins.autopairs")

-- LSP plugins
require("preetham.plugins.lsp.mason")
require("preetham.plugins.lsp.lspsaga")
require("preetham.plugins.lsp.lspconfig")
require("preetham.plugins.lsp.null-ls")
