return
{
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local navic = require('nvim-navic')
		lspconfig.clangd.setup {
		    capabilities = require('cmp_nvim_lsp').default_capabilities(),
			on_attach = function(client, bufnr)
				navic.attach(client, bufnr)
			end,
		}
		end,
}
