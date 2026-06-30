# Neovim C/C++ Configuration Cheat Sheet

## Leader Key

Leader is set to:

```
<Space>
```

For example:

```
<leader>ff
```

means:

```
Space f f
```

---

# General Navigation

## Move by line

```
j
k
```

## Move by word

```
w
b
e
```

## Beginning / end of line

```
0
$
```

## Top / bottom of file

```
gg
G
```

## Go to line

```
42G
```

---

# Editing

## Enter insert mode

```
i
a
o
O
```

## Delete

```
dd
```

Delete 5 lines

```
5dd
```

## Copy (yank)

```
yy
```

Copy 4 lines

```
4yy
```

## Paste

```
p
P
```

## Undo

```
u
```

## Redo

```
Ctrl-r
```

---

# Searching

Search

```
/text
```

Next match

```
n
```

Previous match

```
N
```

---

# Telescope

Find files

```
<leader>ff
```

Live grep (search project)

```
<leader>fg
```

Requires:

- ripgrep

---

# Oil

Open file explorer

```
<leader>e
```

Useful keys inside Oil:

Go into directory

```
Enter
```

Go up directory

```
-
```

Open file

```
Enter
```

---

# LSP (clangd)

Go to definition

```
gd
```

Find references

```
gr
```

Hover documentation

```
K
```

Rename symbol

```
<leader>rn
```

Code actions

```
<leader>ca
```

Examples:

- Add missing include
- Apply fix
- Modernize code

Format current file

```
<leader>f
```

---

# Completion

Open completion menu manually

```
Ctrl-Space
```

Accept selected completion

```
Enter
```

---

# Diagnostics

Next diagnostic

```
]d
```

Previous diagnostic

```
[d
```

Open diagnostic float

```
vim.diagnostic.open_float()
```

(You may wish to map this later.)

---

# Built-in Motions

Jump to matching bracket

```
%
```

Jump half page

```
Ctrl-d
Ctrl-u
```

Jump whole page

```
Ctrl-f
Ctrl-b
```

---

# Windows

Horizontal split

```
:split
```

Vertical split

```
:vsplit
```

Move between windows

```
Ctrl-w h
Ctrl-w j
Ctrl-w k
Ctrl-w l
```

Close window

```
:q
```

---

# Buffers

Next buffer

```
:bn
```

Previous buffer

```
:bp
```

Close buffer

```
:bd
```

---

# Saving

Save

```
:w
```

Quit

```
:q
```

Save and quit

```
:wq
```

Force quit

```
:q!
```

---

# Useful Commands

Open config

```
:edit ~/.config/nvim/init.lua
```

Reload config

```
:source ~/.config/nvim/init.lua
```

Check LSP status

```
:LspInfo
```

Check Neovim health

```
:checkhealth
```

Check LSP health

```
:checkhealth vim.lsp
```

---

# External Tools Used

## clangd

Provides:

- Autocomplete
- Diagnostics
- Rename
- References
- Go to definition
- Hover documentation

## clang-tidy

Runs static analysis.

## clang-format

Formats code when using:

```
<leader>f
```

(if installed/configured)

## ripgrep

Used by Telescope for:

```
<leader>fg
```

## fd

Used by Telescope for:

```
<leader>ff
```

---

# Plugins

## nvim-lspconfig

Connects Neovim to language servers.

## nvim-cmp

Autocomplete engine.

## cmp-nvim-lsp

Feeds LSP completions into nvim-cmp.

## LuaSnip

Snippet expansion.

## Treesitter

Better syntax highlighting and parsing.

## Telescope

Fuzzy finder.

## Oil

File explorer.

## Lualine

Statusline.

---

# Typical C++ Workflow

Open project

```
nvim .
```

Find file

```
<Space>ff
```

Search project

```
<Space>fg
```

Jump to definition

```
gd
```

View documentation

```
K
```

Rename symbol

```
<Space>rn
```

Find references

```
gr
```

Apply code action

```
<Space>ca
```

Format file

```
<Space>f
```

Save

```
:w
```

Quit

```
:q
```