<p align="center">
    <img src="https://github.com/scottmckendry/lituus.nvim/assets/39483124/e758f47a-32eb-4eac-a008-eb59272badef">
     <b><i>A high-contrast, futuristic & vibrant theme for neovim</i></b>
</p>

<p align="center">
    <a href="https://github.com/scottmckendry/lituus.nvim/issues">
        <img alt="Issues" src="https://img.shields.io/github/issues/scottmckendry/lituus.nvim?style=for-the-badge&logo=github&color=%23ffbd5e">
    </a>
    <a href="https://github.com/scottmckendry/lituus.nvim/blob/main/LICENSE">
        <img alt="License" src="https://img.shields.io/github/license/scottmckendry/lituus.nvim?style=for-the-badge&logo=github&color=%235ef1ff">
    </a>
    <a href="https://github.com/scottmckendry/lituus.nvim/stars">
        <img alt="stars" src="https://img.shields.io/github/stars/scottmckendry/lituus.nvim?style=for-the-badge&logo=github&color=%23bd5eff">
    </a>
</p>

## 🚀 Features

-   **Transparency-first design** - all design decisions are made with transparency in mind
-   **High contrast** - Colours have been carefully chosen to be cohesive and easy on the eyes while still being easy to distinguish

<details>
    <summary><b>Supported Plugins</b></summary>
    <ul>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/goolord/alpha-nvim"> alpha-nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/folke/lazy.nvim"> lazy.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/ggandor/leap.nvim"> leap.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/nvim-lualine/lualine.nvim"> lualine.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/hrsh7th/nvim-cmp"> nvim-cmp</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/nvim-treesitter/nvim-treesitter"> nvim-treesitter</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/nvim-telescope/telescope.nvim"> telescope.nvim</a></label></li>
        <li><input type="checkbox" checked disabled><label for=""><a href="https://github.com/folke/which-key.nvim"> which-key.nvim</a></label></li>
    </ul>
</details>

![lituus-screenshot](https://github.com/scottmckendry/lituus.nvim/assets/39483124/18004b97-8677-4ec1-afb8-76ea5c49a7bd)

## 📦 Installation

Lazy:

```lua
{
    "scottmckendry/lituus.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("lituus").setup({
            -- Recommended - see "Configuring" below for more config options
            transparent = true,
            italic_comments = true,
            hide_fillchars = true,
            borderless_telescope = true,
        })
        vim.cmd("colorscheme lituus") -- set the colorscheme
    end,
}
```

Lualine (optional):

```lua
{
    local lituus = require("lualine.themes.lituus")
    require("lualine").setup({
        -- ... other config
        options = {
            theme = "lituus",
        },
        -- ... other config
    })
}
```

See my personal lualine config [here](https://github.com/scottmckendry/Windots/blob/main/nvim/lua/plugins/lualine.lua) for an example.

## ⚙️ Configuring

Below is an example of all the available configuration options:

```lua
require("lituus").setup({
    -- Enable transparent background
    transparent = true, -- Default: false

    -- Enable italics comments
    italic_comments = true, -- Default: false

    -- Replace all fillchars with ' ' for the ultimate clean look
    hide_fillchars = true, -- Default: false

    -- Modern borderless telescope theme
    borderless_telescope = true, -- Default: true

    theme = { -- Default: nil
        highlights = {
            -- Highlight groups to override, adding new groups is also possible
            -- See `:help highlight-groups` for a list of highlight groups

            -- Example:
            Comment = { fg = "#696969", bg = "NONE", italic = true },

            -- Complete list can be found in `lua/lituus/theme.lua`
        },

        -- Override a color entirely
        colors = {
            -- For a list of colors see `lua/lituus/colours.lua`
            -- Example:
            bg = "#000000",
            green = "#00ff00",
            magenta = "#ff00ff",
        },
    },
})
```

## 🤝 Contributing

Pull requests are welcome. If a plugin you use is not supported, please open an issue and I'll try to add support for it. If you have any suggestions or feedback, please open an issue.
