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
- **Popups**: Quick access to `lazygit`, a `tmux-file-picker` popup, `tmux-zoxide-window`, and an `nvim-diary.sh` popup for quick notes.
- **Submodules**: [tmux-file-picker](https://github.com/raine/tmux-file-picker) (fzf-based file path picker, handy for AI coding assistants) and [tmux-tools](https://github.com/raine/tmux-tools) (session switcher and zoxide-based session/window pickers) are vendored as git submodules.

### Terminal Emulators
- **[Alacritty](./alacritty)**: Performance-focused terminal configuration.
- **[Wezterm](./wezterm)**: Configuration using the [Monaspace](https://monaspace.githubnext.com/) font family for consistent typography.
- **[Ghostty](./ghostty)**: TokyoNight theme, hidden title bar, and Monaspace Neon/Radon fonts with extended ligature/stylistic-set features.

### [Git](./git)
Global `.gitconfig` for consistent version control settings.

### [Opencode](./opencode)
Custom subagent definitions for the [opencode](https://opencode.ai/) CLI, including agents for committing changes with Conventional Commits, writing documentation, code review, and security audits.

### Tools
- **[tools/nvim-diary.sh](./tools/nvim-diary.sh)**: Opens a timestamped daily note under `~/.diary` in `$EDITOR` (or Neovim), wired up to the tmux popup above.
- **[setup-tmux-links.sh](./setup-tmux-links.sh)**: Symlinks `.tmux.conf` and the tmux/tools scripts into `~/.tmux.conf` and `~/.local/bin`.
- **[GEMINI.md](./GEMINI.md)**: Instructs Gemini to follow [Conventional Commits](https://www.conventionalcommits.org/) when committing to this repo.

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
- [UV](https://github.com/astral-sh/uv) - Fast Python package/project manager
- [Tree-sitter CLI](https://github.com/tree-sitter/tree-sitter) - Parser generator used by Neovim's Tree-sitter integration
- [Opencode](https://opencode.ai/) - AI coding agent CLI
- [Claude Code](https://claude.com/claude-code) - Anthropic's AI coding agent CLI
- [Pass](https://www.passwordstore.org/) - Standard Unix password manager

**Applications (Casks)**:
- [Wezterm](https://wezfurlong.org/wezterm/) - GPU-accelerated terminal emulator
- [Ghostty](https://ghostty.org/) - Fast, native, GPU-accelerated terminal emulator
- [Firefox](https://www.mozilla.org/firefox/) - Web browser
- [Zoom](https://zoom.us/) - Video conferencing
- [BasicTeX](https://www.tug.org/mactex/morepackages.html) - Compact TeX distribution
- [Stats](https://github.com/exelban/stats) - System monitor for menu bar
- [Visual Studio Code](https://code.visualstudio.com/) - Code editor
- [JetBrains Toolbox](https://www.jetbrains.com/toolbox-app/) - JetBrains IDE manager
- [VLC](https://www.videolan.org/vlc/) - Media viewer

**Fonts**:
- [Monaspace](https://monaspace.githubnext.com/) - GitHub's monospaced font family

**macOS Utilities**:
- [Dockutil](https://github.com/kcrawford/dockutil) - Dock management tool

**Fun**:
- [mfp](https://github.com/fpigeonjr/mfp) - Music for programming, played from the terminal
- [cmatrix](https://github.com/abishekvashok/cmatrix) - Terminal "Matrix" screensaver

## Repository Structure

```text
.
├── alacritty/      # Alacritty configuration
├── ghostty/        # Ghostty configuration
├── git/            # Git configuration
├── homebrew/       # Homebrew package management
│   └── Brewfile    # Package definitions for macOS
├── lazyvim/        # LazyVim settings
├── nvim/           # Neovim configuration
│   └── lua/
│       └── plugins/ # Plugin-specific configurations
├── opencode/       # Opencode subagent definitions
│   └── agents/
├── tmux/           # Tmux configuration
│   ├── tmux-file-picker/ # Submodule: fzf file picker popup
│   └── tmux-tools/       # Submodule: session/window switcher popups
├── tools/          # Standalone helper scripts
├── wezterm/        # Wezterm configuration
├── GEMINI.md       # Commit conventions for Gemini
├── LICENSE         # Unlicense (public domain)
└── setup-tmux-links.sh # Symlinks tmux config/tools into place
```

## Setup

Clone with submodules, since the tmux tools are vendored as git submodules:
```bash
git clone --recurse-submodules git@github.com:lasl321/dotfiles.git ~/code/dotfiles
```

Most configurations expect to be symlinked to their respective locations in `~/.config/` or `$HOME`.

Example for Neovim:
```bash
ln -s ~/code/dotfiles/nvim ~/.config/nvim
```

### Tmux

Run the setup script to symlink `.tmux.conf` and put the tmux/tools scripts (`tmux-file-picker`, `tmux-session-switcher`, `tmux-zoxide-session`, `tmux-zoxide-window`, `nvim-diary.sh`) on your `PATH` via `~/.local/bin`:
```bash
~/code/dotfiles/setup-tmux-links.sh
```
Then install plugins from inside tmux with `prefix + I` ([TPM](https://github.com/tmux-plugins/tpm)).

### Homebrew

Install all packages from the Brewfile:
```bash
brew bundle --file ~/code/dotfiles/homebrew/Brewfile
```

## License

Released into the public domain under [The Unlicense](./LICENSE).
