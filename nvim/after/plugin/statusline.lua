require('lualine').setup {
    options = {
        component_separators = { left = '', right = '|' },
        section_separators = { left = '', right = ''},
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'windows'},
        lualine_z = {'location'},
    },
}
