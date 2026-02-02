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
- **CLI Tools**: Neovim, Tmux, Lazygit, FZF, Ripgrep, Zoxide, and more.
- **Development**: NVM, Minikube, Multipass, and [Workmux](https://github.com/raine/workmux) for managing git worktrees and tmux sessions.
- **Fonts**: [Monaspace](https://monaspace.githubnext.com/) family for consistent terminal typography.
- **macOS Utilities**: Dockutil for managing dock items.

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
