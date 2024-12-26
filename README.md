# Neovim Kickstart 2025

This repository contains my custom Neovim configuration for 2025 based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). It includes features like Telescope, LSP, syntax highlighting, formatting, linting, Git integration, and more.

#### Linux Install

<details><summary>Ubuntu Install Steps</summary>

```
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```

</details>
<details><summary>Fedora Install Steps</summary>

```
sudo dnf install -y gcc make git ripgrep fd-find unzip neovim
```

</details>

<details><summary>Arch Install Steps</summary>

```
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim
```

</details>

# Neovim Keybindings Reference

Note: The `<leader>` key is mapped to `Space` in this configuration.

## Modes

| Mode         | Key Binding     | Description                              |
| ------------ | --------------- | ---------------------------------------- |
| Normal       | `<Esc>` or `jk` | Default mode for navigation and commands |
| Insert       | `i`             | Enter text insertion mode                |
| Visual       | `v`             | Select text character-wise               |
| Visual Line  | `V`             | Select text line-wise                    |
| Visual Block | `<C-v>`         | Select text in block mode                |
| Command      | `:`             | Enter command mode                       |

## Basic Operations

Essential commands for file operations and mode switching.

| Keybinding   | Mode           | Description             |
| ------------ | -------------- | ----------------------- |
| `jk`         | Insert, Visual | Exit to Normal mode     |
| `<C-s>`      | Normal         | Save file               |
| `<C-x>`      | Normal         | Save and exit           |
| `<leader>sn` | Normal         | Save without formatting |
| `<C-q>`      | Normal         | Quit file               |

## Navigation

Standard movement commands to traverse through text efficiently.

| Keybinding | Mode   | Description             |
| ---------- | ------ | ----------------------- |
| `w`        | Normal | Move forward one word   |
| `b`        | Normal | Move backward one word  |
| `e`        | Normal | Move to end of word     |
| `0`        | Normal | Move to start of line   |
| `$`        | Normal | Move to end of line     |
| `{`        | Normal | Move up one paragraph   |
| `}`        | Normal | Move down one paragraph |
| `gg`       | Normal | Move to start of file   |
| `G`        | Normal | Move to end of file     |
| `<C-d>`    | Normal | Scroll down (centered)  |
| `<C-u>`    | Normal | Scroll up (centered)    |

## Window Management

Commands for splitting and managing multiple windows efficiently.

| Keybinding     | Mode   | Description        |
| -------------- | ------ | ------------------ |
| `<leader>sv`   | Normal | Split vertically   |
| `<leader>sh`   | Normal | Split horizontally |
| `<leader>se`   | Normal | Equal window size  |
| `<leader>sx`   | Normal | Close split        |
| `<C-h/j/k/l>`  | Normal | Navigate splits    |
| `<Up/Down>`    | Normal | Resize height      |
| `<Left/Right>` | Normal | Resize width       |

## Buffer and Tab Operations

Commands for managing multiple files and tab pages.

| Keybinding      | Mode   | Description       |
| --------------- | ------ | ----------------- |
| `<Tab>`         | Normal | Next buffer       |
| `<S-Tab>`       | Normal | Previous buffer   |
| `<leader>x`     | Normal | Close buffer      |
| `<leader>b`     | Normal | New buffer        |
| `<leader>to`    | Normal | New tab           |
| `<leader>tx`    | Normal | Close tab         |
| `<leader>tn/tp` | Normal | Next/Previous tab |

## Text Operations

Commands for manipulating and selecting text.

| Keybinding | Mode   | Description               |
| ---------- | ------ | ------------------------- |
| `yy`       | Normal | Yank line                 |
| `yw`       | Normal | Yank word                 |
| `dd`       | Normal | Delete line               |
| `dw`       | Normal | Delete word               |
| `x`        | Normal | Delete character          |
| `v`        | Normal | Enter Visual mode         |
| `V`        | Normal | Visual line mode          |
| `<C-v>`    | Normal | Visual block mode         |
| `p`        | Visual | Paste preserving register |
| `>`        | Visual | Indent                    |
| `<`        | Visual | Unindent                  |

## Diagnostics

Commands for navigating and viewing code diagnostics.

| Keybinding  | Mode   | Description          |
| ----------- | ------ | -------------------- |
| `[d`        | Normal | Previous diagnostic  |
| `]d`        | Normal | Next diagnostic      |
| `<leader>d` | Normal | Float diagnostic     |
| `<leader>q` | Normal | Open diagnostic list |

## Telescope

Fuzzy finder for files, text, and more.

| Keybinding         | Mode   | Description                    |
| ------------------ | ------ | ------------------------------ |
| `<leader>fk`       | Normal | Search keymaps                 |
| `<leader>ff`       | Normal | Find files                     |
| `<leader>fw`       | Normal | Search current word            |
| `<leader>sg`       | Normal | Search by grep                 |
| `<leader>sd`       | Normal | Search diagnostics             |
| `<leader><leader>` | Normal | Find existing buffers          |
| `<leader>ft`       | Normal | Find TODOs                     |
| `<leader>/`        | Normal | Fuzzy search in current buffer |
| `<leader>s/`       | Normal | Search in open files           |

## Treesitter

Syntax highlighting and code navigation.

| Keybinding  | Mode           | Description          |
| ----------- | -------------- | -------------------- |
| `<C-space>` | Normal, Visual | Initialize selection |

## Neotree

File explorer with git integration.

| Keybinding    | Mode   | Description                 |
| ------------- | ------ | --------------------------- |
| `\`           | Normal | Reveal current file         |
| `<leader>e`   | Normal | Toggle file explorer        |
| `<leader>ngs` | Normal | Open git status window      |
| `l` or `<cr>` | Normal | Open file/directory         |
| `h` or `<bs>` | Normal | Navigate up/close directory |
| `s`           | Normal | Open in vertical split      |
| `S`           | Normal | Open in horizontal split    |
| `a`           | Normal | Add new file                |
| `A`           | Normal | Add new directory           |
| `d`           | Normal | Delete file/directory       |
| `r`           | Normal | Rename file/directory       |
| `y`           | Normal | Copy to clipboard           |
| `x`           | Normal | Cut to clipboard            |
| `p`           | Normal | Paste from clipboard        |
| `R`           | Normal | Refresh tree                |
| `H`           | Normal | Toggle hidden files         |
| `/`           | Normal | Fuzzy finder                |
| `f`           | Normal | Filter tree                 |

Note: Neotree also includes advanced git operations in the git status window (accessed via `<leader>ngs`).

## Git Operations (Gitsigns)

Advanced git integration with hunk-based operations. A hunk represents a contiguous group of code changes (additions, deletions, or modifications) within a file, making it easier to manage specific changes rather than entire files.

| Keybinding   | Mode          | Description                                                                                                 |
| ------------ | ------------- | ----------------------------------------------------------------------------------------------------------- |
| `]h`         | Normal        | Navigate to the next git change (hunk) in the buffer. Useful for reviewing changes sequentially.            |
| `[h`         | Normal        | Move to the previous git change (hunk) in the buffer. Great for backward review of modifications.           |
| `<leader>hs` | Normal/Visual | Stage the current hunk for commit. In visual mode, stages the selected portion of the hunk.                 |
| `<leader>hr` | Normal/Visual | Reset the current hunk, reverting it to its original state. Works with visual selection for partial resets. |
| `<leader>hS` | Normal        | Stage all changes in the current buffer. Useful when you want to commit all current file changes.           |
| `<leader>hR` | Normal        | Reset all changes in the current buffer back to HEAD. Use with caution as it reverts all changes.           |
| `<leader>hu` | Normal        | Undo the last hunk staging operation. Helpful when you accidentally stage unwanted changes.                 |
| `<leader>hp` | Normal        | Preview the current hunk changes in a floating window without switching context.                            |
| `<leader>hb` | Normal        | Show detailed git blame for the current line with full commit information and timestamp.                    |
| `<leader>hB` | Normal        | Toggle inline git blame information for each line in the current buffer.                                    |
| `<leader>hd` | Normal        | Open a diff view comparing the current file against the index version.                                      |
| `ih`         | Visual        | Select the current git hunk. Useful for performing operations on entire change blocks.                      |

## Trouble

A powerful problem and diagnostics viewer that helps in managing warnings, errors, and other code issues.

| Keybinding    | Mode   | Description                                                                                         |
| ------------- | ------ | --------------------------------------------------------------------------------------------------- |
| `<leader>tbw` | Normal | Display all diagnostics across the workspace. Useful for getting an overview of all project issues. |
| `<leader>tbd` | Normal | Show diagnostics for the current document only. Perfect for focusing on current file problems.      |
| `<leader>tbq` | Normal | Open the quickfix list in Trouble's improved interface. Better visualization of quickfix items.     |
| `<leader>tbl` | Normal | Display the location list with enhanced formatting and navigation capabilities.                     |
| `<leader>tbt` | Normal | Show all TODO, HACK, BUG, and other comment markers in a searchable interface.                      |

## Window Maximizer

Tool for managing split window sizes efficiently.

| Keybinding   | Mode   | Description                                                                                                                          |
| ------------ | ------ | ------------------------------------------------------------------------------------------------------------------------------------ |
| `<leader>sm` | Normal | Toggle between maximizing the current split window and restoring the original layout. Perfect for focusing on one split temporarily. |

## Comments

Code commenting utilities with support for multiple languages and comment styles.

| Keybinding                | Mode   | Description                                                                                                   |
| ------------------------- | ------ | ------------------------------------------------------------------------------------------------------------- |
| `<C-_>`, `<C-/>`, `<C-c>` | Normal | Toggle comment for current line. Automatically uses appropriate comment syntax based on file type.            |
| `<C-_>`, `<C-/>`, `<C-c>` | Visual | Toggle comments for selected lines while preserving the visual selection. Works with partial line selections. |
| `]t`                      | Normal | Jump to next TODO comment in the codebase. Works with TODO, HACK, BUG, and other markers.                     |
| `[t`                      | Normal | Jump to previous TODO comment. Useful for navigating through code annotations and reminders.                  |

## Theme

Appearance customization controls.

| Keybinding   | Mode   | Description                                                                                                                             |
| ------------ | ------ | --------------------------------------------------------------------------------------------------------------------------------------- |
| `<leader>bg` | Normal | Toggle background transparency. Useful for switching between solid and transparent terminal backgrounds while maintaining color scheme. |

## Bufferline

Buffer/tab management plugin that shows your open buffers in a clean, minimal style.

| Command         | Key Binding | Mode   | Description             |
| --------------- | ----------- | ------ | ----------------------- |
| Next Buffer     | `<Tab>`     | Normal | Move to next buffer     |
| Previous Buffer | `<S-Tab>`   | Normal | Move to previous buffer |

## Auto Linting (nvim-lint)

Automatic linting support for multiple languages with real-time feedback.

### Linters

- JavaScript/TypeScript: eslint_d
- Python: pylint
- Go: golangci-lint

| Command     | Key Binding | Mode   | Description                                 |
| ----------- | ----------- | ------ | ------------------------------------------- |
| Manual Lint | `<leader>l` | Normal | Trigger linting for current file            |
| Auto Lint   | On events   | -      | Runs on BufEnter, BufWritePost, InsertLeave |

## Auto Formatting (conform.nvim)

Automatic code formatting with support for multiple languages and formatters.

### Formatters

- JavaScript/TypeScript: prettier
- Python: isort, black
- Lua: stylua
- Go: gofumpt

| Command               | Key Binding  | Mode           | Description                            |
| --------------------- | ------------ | -------------- | -------------------------------------- |
| Format File/Selection | `<leader>mp` | Normal, Visual | Format current file or selection       |
| Auto Format           | On save      | -              | Formats automatically when saving file |

# LSP and Mason Configuration

LSP (Language Server Protocol) provides intelligent code features like auto-completion, go-to-definition, and real-time diagnostics. Mason manages LSP servers and tools installation.

## Language Servers and Tools

Automatically installs and configures development tools for supported languages.

### Key Features

- Auto-installation of LSP servers and tools via Mason
- Real-time diagnostics and code intelligence
- Format-on-save support
- Language-specific optimizations
- Custom configurations for specialized workflows

### Special Configurations

- Svelte: Live reload support for TypeScript/JavaScript changes
- GraphQL: Integrated with React and Svelte files
- Emmet: HTML/CSS expansion in multiple file types
- Go: Enhanced static analysis and formatting
- Python: Customized linting and formatting pipeline

## LSP Keybindings

Navigate and modify code efficiently with these LSP-powered shortcuts.

| Command              | Key Binding  | Mode           | Description                                     |
| -------------------- | ------------ | -------------- | ----------------------------------------------- |
| Go to Definition     | `gd`         | Normal         | Jump to definition using Telescope fuzzy finder |
| Go to References     | `gr`         | Normal         | Find all references of symbol using Telescope   |
| Go to Implementation | `gI`         | Normal         | Jump to implementation of interface/type        |
| Go to Declaration    | `gD`         | Normal         | Jump to declaration (e.g., header files)        |
| Type Definition      | `<leader>D`  | Normal         | Show type definition of symbol                  |
| Rename Symbol        | `<leader>rn` | Normal         | Rename variable/function across all files       |
| Code Action          | `<leader>ca` | Normal, Visual | Show available code actions/quick fixes         |
| Document Symbols     | `<leader>ds` | Normal         | List all symbols in current file                |
| Workspace Symbols    | `<leader>ws` | Normal         | Search all symbols in project                   |
| Toggle Inlay Hints   | `<leader>th` | Normal         | Toggle inline type hints display                |

# AI Assistants Configuration

## Setup Requirements

1. ChatGPT:

   - Set `OPENAI_API_KEY` environment variable
   - Run `:Lazy load ChatGPT.nvim` first time

2. Copilot:

   - Run `:Copilot auth` for first-time setup
   - Requires GitHub account

3. Codeium:
   - Run `:Codeium Auth` to authenticate
   - Get API key from Codeium website

## Keybindings and Functions

### ChatGPT

| Command                | Key Binding  | Mode   | Description                                         |
| ---------------------- | ------------ | ------ | --------------------------------------------------- |
| Open ChatGPT           | `<leader>cg` | Normal | Opens ChatGPT interactive window                    |
| Edit with Instructions | `<leader>ce` | Visual | Edit selected text with custom instructions         |
| Act As                 | `<leader>ca` | Normal | Opens role selection menu for different AI personas |

### Copilot

| Command        | Key Binding               | Mode    | Description                  |
| -------------- | ------------------------- | ------- | ---------------------------- |
| Enable/Disable | `:Copilot enable/disable` | Command | Toggle Copilot functionality |
| Panel          | `:Copilot panel`          | Command | Show suggestions in sidebar  |
