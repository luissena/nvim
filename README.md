# Neovim Configuration

Personal Neovim configuration built on [NvChad](https://nvchad.com/) with a modular plugin structure following the Single Responsibility Principle.

## Features

- **Modular Architecture**: One file per plugin for easy maintenance
- **LSP Support**: TypeScript, Lua, HTML, CSS, YAML, Docker, Markdown
- **C# / Blazor**: Roslyn LSP with razor file support
- **Flutter / Dart**: Full Flutter development environment
- **Fast Navigation**: Flash.nvim for quick jumps
- **Formatting**: Conform.nvim with Prettier, Stylua, CSharpier
- **Markdown Rendering**: Inline rendering with icons and styled elements
- **VS Code-like Telescope**: Filename-first path display

## Structure

```
lua/
├── options.lua           # Vim options
├── mappings.lua          # Keybindings
├── autocmds.lua          # Autocommands
├── filetypes.lua         # Filetype detection
├── chadrc.lua            # NvChad theme
├── configs/
│   ├── lazy.lua          # Lazy.nvim settings
│   ├── lspconfig.lua     # LSP server configs
│   └── conform.lua       # Formatter configs
└── plugins/
    ├── init.lua          # Plugin aggregator
    ├── treesitter.lua    # Syntax highlighting
    ├── mason.lua         # Package manager
    ├── conform.lua       # Formatter
    ├── lspconfig.lua     # LSP
    ├── roslyn.lua        # C# LSP
    ├── flutter-tools.lua # Dart/Flutter
    ├── lazydev.lua       # Lua development
    ├── dressing.lua      # UI improvements
    ├── flash.lua         # Quick navigation
    ├── telescope.lua     # Fuzzy finder
    ├── nvimtree.lua      # File explorer
    └── render-markdown.lua
```

## Installation

1. Backup existing config:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

2. Clone this repository:
   ```bash
   git clone https://github.com/luissena/nvim.git ~/.config/nvim
   ```

3. Open Neovim and let lazy.nvim install plugins:
   ```bash
   nvim
   ```

## Requirements

- Neovim >= 0.10
- Git
- [Nerd Font](https://www.nerdfonts.com/) (for icons)
- Node.js (for LSP servers)
- ripgrep (for Telescope)

## Key Mappings

| Key | Mode | Action |
|-----|------|--------|
| `<leader>` | n | Space |
| `s` | n | Flash jump |
| `S` | n | Flash treesitter |
| `<Tab>` | n | Next buffer |
| `<S-Tab>` | n | Previous buffer |
| `<leader>x` | n | Close buffer |
| `<leader>fb` | n | Find buffers |
| `<leader>ff` | n | Find files |
| `<leader>ca` | n | Code action |
| `;` | n | Command mode |

## License

MIT
