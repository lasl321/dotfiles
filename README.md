# dotfiles

This repository contains personal configuration files (dotfiles) for a development environment, optimized for macOS.

## Components

### [Neovim](./nvim)
A modern Neovim configuration using [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager. Features include:
- **LSP Support**: Configured via `lsp-config.lua` and `none-ls.lua`.
- **Tree-sitter**: Enhanced syntax highlighting and code understanding.
- **File Explorer**: [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) and [Oil.nvim](https://github.com/stevearc/oil.nvim).
- **UI/Theming**: [Catppuccin](https://github.com/catppuccin/nvim) mocha flavor, [Lualine](https://github.com/nvim-lualine/lualine.nvim) for the status line, and [Alpha](https://github.com/goolord/alpha-nvim) for the dashboard.
- **Fuzzy Finding**: [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim).

### [Tmux](./tmux)
A feature-rich `.tmux.conf` utilizing [TPM](https://github.com/tmux-plugins/tpm). Key features:
- **Catppuccin Theme**: Consistent mocha styling.
- **Status Bar**: Displays CPU usage, battery status, weather, and uptime.
- **Persistence**: Auto-saving and restoring sessions via `tmux-resurrect` and `tmux-continuum`.
- **Popups**: Quick access to `lazygit` and a file picker within popups.

### Terminal Emulators
- **[Alacritty](./alacritty)**: Performance-focused terminal configuration.
- **[Wezterm](./wezterm)**: Configuration using the [Monaspace](https://monaspace.githubnext.com/) font family for consistent typography.

### [Git](./git)
Global `.gitconfig` for consistent version control settings.

### [Homebrew](./homebrew)
A comprehensive `Brewfile` for managing macOS packages and applications. Includes:

**CLI Tools**:
- [Neovim](https://neovim.io/) - Modern Vim-fork focused on extensibility
- [Tmux](https://github.com/tmux/tmux) - Terminal multiplexer
- [Lazygit](https://github.com/jesseduffield/lazygit) - Simple terminal UI for git commands
- [FZF](https://github.com/junegunn/fzf) - Command-line fuzzy finder
- [Ripgrep](https://github.com/BurntSushi/ripgrep) - Fast search tool
- [Zoxide](https://github.com/ajeetdsouza/zoxide) - Smart directory navigator
- [FD](https://github.com/sharkdp/fd) - Fast and user-friendly alternative to `find`
- [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) - Good-looking diffs
- [GitHub CLI](https://cli.github.com/) - GitHub command-line tool
- [Tree](https://oldmanprogrammer.net/source.php?dir=projects/tree) - Directory tree display
- [Neofetch](https://github.com/dylanaraps/neofetch) - System info script

**Development**:
- [NVM](https://github.com/nvm-sh/nvm) - Node.js version manager
- [Minikube](https://minikube.sigs.k8s.io/) - Local Kubernetes cluster
- [Multipass](https://multipass.run/) - Ubuntu VM orchestration
- [Workmux](https://github.com/raine/workmux) - Git worktrees and tmux session manager
- [LuaRocks](https://luarocks.org/) - Lua package manager
- [Ghostscript](https://www.ghostscript.com/) - PostScript/PDF interpreter
- [ImageMagick](https://imagemagick.org/) - Image manipulation tools

**Applications (Casks)**:
- [Wezterm](https://wezfurlong.org/wezterm/) - GPU-accelerated terminal emulator
- [Firefox](https://www.mozilla.org/firefox/) - Web browser
- [Zoom](https://zoom.us/) - Video conferencing
- [BasicTeX](https://www.tug.org/mactex/morepackages.html) - Compact TeX distribution
- [Stats](https://github.com/exelban/stats) - System monitor for menu bar

**Fonts**:
- [Monaspace](https://monaspace.githubnext.com/) - GitHub's monospaced font family

**macOS Utilities**:
- [Dockutil](https://github.com/kcrawford/dockutil) - Dock management tool

## Repository Structure

```text
.
├── alacritty/      # Alacritty configuration
├── git/            # Git configuration
├── homebrew/       # Homebrew package management
│   └── Brewfile    # Package definitions for macOS
├── lazyvim/        # LazyVim settings
├── nvim/           # Neovim configuration
│   └── lua/
│       └── plugins/ # Plugin-specific configurations
├── tmux/           # Tmux configuration
└── wezterm/        # Wezterm configuration
```

## Setup

Most configurations expect to be symlinked to their respective locations in `~/.config/` or `$HOME`.

Example for Neovim:
```bash
ln -s ~/code/dotfiles/nvim ~/.config/nvim
```

Example for Tmux:
```bash
ln -s ~/code/dotfiles/tmux/.tmux.conf ~/.tmux.conf
```

### Homebrew

Install all packages from the Brewfile:
```bash
brew bundle --file ~/code/dotfiles/homebrew/Brewfile
```
