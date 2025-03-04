# Documentation for Neopym

This repository contains my personal Neovim configuration for Python Development.

## Features

* Very lightweight using Lazy plugin manager.
* Optimized configuration for enhanced productivity.
* Fully support for Python.
* Carefully selected plugins.
* A comfortable theme for extended use (One Dark).
* LSP (Language Server Protocol) configuration for an improved development experience.

## Installation

1.  **Prerequisites:**
    * Ensure you have Neovim (latest version) installed.
    * Ensure you have `git` installed.
    * Ensure you have `cmake` installed for `telescope-fzf-native.nvim`.
    * Ensure you have `fzf` and `ripgrep` installed.
    * Ensure you have `Node.js` installed.
2.  **Clone the Repository:**

    ```bash
    git clone [YOUR_REPOSITORY_URL] ~/.config/nvim
    ```

3.  **Plugin Installation:**
    * Open Neovim and run the following command to install the plugins:

        ```vim
        :Lazy sync
        ```

        *(Assuming you are using lazy.nvim)*

4.  **Treesitter Installation:**
    * After the plugins are installed, run the following command to install treesitter parsers:

        ```vim
        :TSUpdate
        ```

5.  **Build Native FZF Telescope:**
    * Navigate to the telescope-fzf-native folder and run the build command.

        ```bash
        cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release
        ```

6.  **LSP Configuration:**
    * Ensure you have the necessary language servers installed for your programming languages.
    * Use `mason.nvim` to install language servers.

## Plugins Used

* `navarasu/onedark.nvim`: One Dark theme for Neovim.
* `numToStr/Comment.nvim`: Plugin for easy commenting and uncommenting.
* `nvim-neo-tree/neo-tree.nvim`: File tree navigation.
* `VonHeikemen/lsp-zero.nvim`: LSP configuration with autocompletion.
* `nvim-treesitter/nvim-treesitter`: Syntax highlighting.
* `windwp/nvim-autopairs`: Automatic insertion of matching brackets, quotes, and tags.
* `nvim-telescope/telescope.nvim`: Fuzzy finding.
* `nvim-telescope/telescope-fzf-native.nvim`: Faster fuzzy finding with FZF.
* `moll/vim-bbye`: Tab management.
* `phaazon/hop.nvim`: Word navigation.
* `goolord/alpha-nvim`: Dashboard.
* `folke/trouble.nvim`: Code diagnostics.
* `nvim-ts-autotag`: Automatic HTML/XML tag closing and renaming.
* `stevearc/conform.nvim`: Code formatting.
* `simrat39/symbols-outline.nvim`: Symbols outline.
* `diepm/vim-rest-console`: API testing.

## Theme

* One Dark

## Usage

* Refer to the plugin documentation for specific usage instructions.
* Customize key mappings and settings in your `init.lua` file.

## Contributing

If you'd like to contribute to this configuration, please submit a pull request.

## Acknowledgments

* Thanks to all the plugin and theme developers used in this configuration.
* Thanks to the Neovim community for support and inspiration.

