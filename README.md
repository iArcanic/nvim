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
All the plugin installation commands can be found within the [plugins-setup.lua](https://github.com/iArcanic/nvim/blob/main/lua/preetham/plugins-setup.lua). Here are the plugins I'm using for this configuration

#### Plugin manager
- [wbthomason/packer](https://github.com/wbthomason/packer.nvim) - Popular plugin manager

#### Dependency for other plugins
- [nvim-lua/plenary](https://github.com/nvim-lua/plenary.nvim) - Useful lua functions other plugins use

#### Navigating Between Neovim Windows and Tmux
- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) – Vim window navigator with tmux

If you want to install any new plugins for yourself, follow the pattern for as for all the other plugins:
```lua
use([author]/[repo])
```
This obviously is the generic pattern. There may be some plugins where you may have to specify additional parameters, and if that is the case, refer to the documentation of the plugin. Additionally, plugins may require a config file, and again, refer to the documentation of the plugin. These config files should go within the [plugins](https://github.com/iArcanic/nvim/tree/main/lua/preetham/plugins) directory.

_Note: since I'm using the [Warp](https://app.warp.dev/referral/NP9VKW) terminal, I'm not using any specific Neovim colourschemes. If you however want to, use the tutorial and its corresponding repo within the Credits section._

# Credits
All credits go to this [tutorial](https://www.youtube.com/watch?v=vdn_pKJUda8&feature=youtu.be) and this [repository](https://github.com/josean-dev/dev-environment-files/tree/main/.config/nvim). Please do check out their other dev environment configuration files as well as their blog and Youtube channel.
