return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',

    config = function()
        local treesitter = require("nvim-treesitter");
        
    	treesitter.setup({
            lazy = false,
            build = ':TSUpdate',
	    highlight = {enable = true},
        });
	
	    treesitter.install({
	        "bash",
          "css",		
          "dockerfile",
          "gitignore",
          "html",
          "http",
          "javascript",
          "json",
          "jsonc",
          "lua",
          "make",
          "markdown",
          "markdown_inline",
          "go",
          "query",
          "regex",
	  "rust",
          "scss",
          "sql",
          "svelte",
          "templ",
          "toml",
          "tsx",
          "typescript",
          	"yaml",
		"vim",
		"vimdoc",
	    });
    end
}
