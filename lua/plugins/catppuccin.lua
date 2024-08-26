return
{
    { 	
	--catppuccino colorsheme
	"catppuccin/nvim", 
 	name = "catppuccin",
	flavour = "frappe",
	priority = 1000,
	-- Should add this to work
	config = function()
		vim.cmd([[colorscheme catppuccin-mocha]])
	end,
    },
}
