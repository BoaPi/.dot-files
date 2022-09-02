-- setup telescope
local telescope = require('telescope')
telescope.setup{
    extensions = {
        file_browser = {
             hijack_netrw = true,
        },
    },    
}

-- load extensions
telescope.load_extension("file_browser")
