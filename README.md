# Preetham's Neovim Configuration
This configuration is for Mac terminals. Since Mac is also Unix based, it can also work on Linux. The commands are fairly the same, except for the package manager – so adapt as necessary.

_Note: you can directly clone this repository and copy it into your `~/.config` folder. You will have to restart your Neovim editor to apply all the changes. Furthermore, you may also get LSP errors, particularly for the Mason plugin. If this is the case, do not worry, as Mason will need to be installed. Either press `ENTER` to let it run the installation process, or alternatively, run the vim command `:Mason`._

# Requirements
If you are on a Mac or have access to MacOS, you will need the following.

```
brew install --cask iterm2
```
This is categorised as a "true-colour" terminal, enabling icons plus colours to work seamlessly. Alternatively, the main terminal that I use is [Warp](https://app.warp.dev/referral/NP9VKW), which has many useful features, such as inbuilt AI integration, workflows, cool themes to choose from, and collaboration spaces. Although the icons do not work, the many features it boasts come in clutch for day-to-day usage.

```
brew install neovim
```
Obviously, since this is to configure Neovim, you will need the Neovim editor. Once installed, you can launch it via the command: `nvim`.

```
brew install ripgrep
```
You will then need the `ripgrep` package, which is required for the `telescope-fzf` Neovim plugin.

```
brew install node
```
Finally, you will need Node.js if you are working with typescript/javascript and the typescript language server.

```
xcode-select --install
```
Additionally, you will need the XCode command tools.

# Plugins
All the plugin installation commands can be found within the [plugins-setup.lua](https://github.com/iArcanic/nvim/blob/main/lua/preetham/plugins-setup.lua). Here are the plugins I'm using for this configuration:

_Note: For your own customisation needs, refer to the official repos for the plugins linked._

## Plugin manager
- [wbthomason/packer](https://github.com/wbthomason/packer.nvim) - Popular plugin manager

## Dependency for other plugins
- [nvim-lua/plenary](https://github.com/nvim-lua/plenary.nvim) - Useful lua functions other plugins use

## Navigating Between Neovim Windows and Tmux
- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) – Vim window navigator with tmux

## Essentials
### Surroundings
- [tpope/vim-surround](https://github.com/tpope/vim-surround) – Manipulate surroungs, i.e. surround with quoation marks, brackets etc.

### Replace with contents of register
- [vim-scripts/ReplaceWithRegister](https://github.com/vim-scripts/ReplaceWithRegister) – Replace things with register contents.

### Commenting
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) – Comment lines quickly.

## File explorer
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)

## VS Code like icons
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) – Helps differentiate between file extensions by displaying relevant logos. (Requires a true colour terminal – like iTerm2).

## Telescope
### Dependency for better telescope performance
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) – Enhances performance of telescope plugin.

### Fuzzy Finder
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

## Autocompletion
### Basic autocompletion
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

### Completion buffer
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) – Completion source for text in buffer.

### Path completion
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path) – Completion source for file paths.

## Snippets
### Snippet engine
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)

### Dynamic snippets
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) – Snippets for different coding languages.

### Snippet completion source
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) – Completion source for snippet autocomplete.

## LSP
### Mason
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim) – Manages and installs LSPs and formatters and linters.

### LSP configuration
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) – Allows for easy configuration of LSP servers.

### lspconfig to Mason
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) – Provides a bridge between lspconfig and Mason plugins.

### LSP code completion
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) – Smart completion with LSP.

### LSP UIs
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim) – Enhanced UIs for LSP.

### Typescript LSPs
- [jose-elias-alvarez/typescript.nvim](https://github.com/jose-elias-alvarez/typescript.nvim) – Additional functionality for typescript server.

### LSP VS Code like icons
- [onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim) – VS Code like icons for autocompletion.

## Formatting & linting
### Formatter and linting config
- [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)

### null-ls to Mason
- [jayp0521/mason-null-ls.nvim](https://github.com/jayp0521/mason-null-ls.nvim) – Provides a bridge between null-ls and Mason plugins.

## Syntax highlighting
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) – Easy colour syntax highlighting.

## Autoclosing
### Autopairs
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) – Autoclose brackets, quotation marks, etc.

### Autotags
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) – Autoclose HTML tags.

## Git integration
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) – Show line modifications, i.e. additions or deletions, on the signing column.

## Plugin customisation
If you want to install any new plugins for yourself, follow the pattern for as for all the other plugins:
```lua
use([author]/[repo])
```
This obviously is the generic pattern. There may be some plugins where you may have to specify additional parameters, and if that is the case, refer to the documentation of the plugin. Additionally, plugins may require a config file, and again, refer to the documentation of the plugin. These config files should go within the [plugins](https://github.com/iArcanic/nvim/tree/main/lua/preetham/plugins) directory.

_Note: since I'm using the [Warp](https://app.warp.dev/referral/NP9VKW) terminal, I'm not using any specific Neovim colourschemes. If you however want to, use the tutorial and its corresponding repo within the Credits section._

# Keybindings
All keybindings are defined in the [keymaps.lua](https://github.com/iArcanic/nvim/blob/main/lua/preetham/core/keymaps.lua) file.

# Credits
All credits go to this [tutorial](https://www.youtube.com/watch?v=vdn_pKJUda8&feature=youtu.be) and this [repository](https://github.com/josean-dev/dev-environment-files/tree/main/.config/nvim). Please do check out their other dev environment configuration files as well as their blog and Youtube channel.
