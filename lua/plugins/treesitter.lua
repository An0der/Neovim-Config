return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" }, 
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = { "c", "lua", "vim", "bash", "asm", "cmake", "cpp", "python" }, 
      sync_install = false, 
      auto_install = true,  
      highlight = {
        enable = true, 
      },
    }
  end,
}

