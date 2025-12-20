# CAR Keybinds

A consolidated reference of my personal keybindings across applications and the window manager. This file exists to make bindings easy to remember, document intent, and simplify future changes.

---

## Neovim
*Core editor navigation and workflow helpers.*

These bindings focus on keeping editing fast and ergonomic, minimizing finger travel and improving tab-based workflows.

### General
| Keybind | Mode | Action | Reason |
|-------|------|--------|--------|
| `<Space>` | Normal | Leader key | Acts as a mnemonic prefix for custom mappings |
| `<Ctrl> + T` | Normal | Open new tab | Quickly create a new tab without leaving normal mode |

---

## Hyprland (Window Manager)
*Global system, window, and workspace management.*

These bindings are designed around fast keyboard-driven navigation and minimal mouse usage.

### Modifiers
| Modifier | Key |
|---------|-----|
| `$mainMod` | SUPER |
| `$secMod` | ALT |

---

### System / Session
| Keybind | Action | Reason |
|--------|--------|--------|
| `SUPER + ALT + Q` | Exit session | Quickly quit the window manager |

---

### Applications & Windows
| Keybind | Action | Reason |
|--------|--------|--------|
| `SUPER + Shift + Q` | Kill active window | Force-close the focused window |
| `SUPER + Enter` | Launch terminal | Primary way to spawn a terminal |
| `SUPER + Space` | App launcher | Fast access to applications |
| `ALT + F` | Open file manager | Quick file navigation |
| `SUPER + V` | Toggle floating | Switch between tiled and floating window |

---

### Layout (Dwindle)
| Keybind | Action | Reason |
|--------|--------|--------|
| `SUPER + S` | Toggle split | Change window split orientation |

---

### Workspaces
*Quick switching and organization of workspaces.*

#### Switch Workspace
| Keybind | Workspace |
|--------|-----------|
| `SUPER + 1–9` | Workspace 1–9 |
| `SUPER + 0` | Workspace 10 |

#### Move Window to Workspace
| Keybind | Action |
|--------|--------|
| `SUPER + Shift + 1–9` | Move window to workspace 1–9 |
| `SUPER + Shift + 0` | Move window to workspace 10 |

---

### Focus Movement
*Vim-style navigation for window focus.*

| Keybind | Direction |
|--------|-----------|
| `SUPER + H / ←` | Left |
| `SUPER + L / →` | Right |
| `SUPER + K / ↑` | Up |
| `SUPER + J / ↓` | Down |

---

### Move Windows
*Reposition windows within the layout.*

| Keybind | Action |
|--------|--------|
| `SUPER + Shift + H / ←` | Move window left |
| `SUPER + Shift + L / →` | Move window right |
| `SUPER + Shift + K / ↑` | Move window up |
| `SUPER + Shift + J / ↓` | Move window down |
| `SUPER + Mouse Left` | Drag window | Mouse-based repositioning |

---

### Resize Windows
| Keybind | Action | Reason |
|--------|--------|--------|
| `ALT + Mouse Left` | Resize window | Precise resizing with the mouse |

---

### Media Controls
*Hardware key bindings for audio and media playback.*

| Key | Action |
|-----|--------|
| `󰝝` | Increase volume |
| `󰝞` | Decrease volume |
| `󰝟` | Toggle mute |
| `󰍭` | Toggle microphone mute |
| `󰐎` | Play / pause media |
| `󰼧` | Next track |
| `󰼨` | Previous track |

---

### Brightness
| Key | Action |
|-----|--------|
| `󰃞 +` | Increase brightness |
| `󰃞 -` | Decrease brightness |

## Yazi (Terminal File Manager)
*Keyboard-driven file navigation and manipulation.*

These bindings mirror Vim-style motions and provide a fast, modal workflow for managing files entirely from the keyboard.

### Core Controls
| Keybind | Action | Reason |
|--------|--------|--------|
| `Esc / Ctrl-[` | Escape / cancel | Exit modes, clear selections, or cancel prompts |
| `q` | Quit | Exit Yazi cleanly |
| `Ctrl-c` | Close tab / quit | Safe abort depending on context |

---

### Navigation
| Keybind | Action | Reason |
|--------|--------|--------|
| `j / k` | Next / previous file | Vim-style vertical navigation |
| `h / l` | Parent / enter directory | Directory traversal |
| `H / L` | Back / forward | History-based navigation |
| `gg / G` | Top / bottom | Fast jumps in large directories |
| `Ctrl-u / Ctrl-d` | Half-page up / down | Efficient long-list movement |

---

### Selection & Visual Mode
| Keybind | Action | Reason |
|--------|--------|--------|
| `Space` | Toggle selection | Select files incrementally |
| `v / V` | Visual modes | Enter selection modes |
| `Ctrl-a` | Select all | Bulk operations |
| `Ctrl-r` | Invert selection | Quickly refine selections |

---

### File Operations
| Keybind | Action | Reason |
|--------|--------|--------|
| `o / Enter` | Open | Open selected file(s) |
| `y / x` | Copy / cut | Yank-style file operations |
| `p / P` | Paste / force paste | Move or duplicate files |
| `d / D` | Trash / delete permanently | Safe vs destructive delete |
| `a` | Create file/dir | Quick file creation |
| `r` | Rename | Inline renaming |
| `.` | Toggle hidden files | Visibility control |

---

### Search, Filter & Jump
| Keybind | Action | Reason |
|--------|--------|--------|
| `s / S` | Search by name / content | Fast file discovery |
| `z / Z` | FZF / Zoxide | Jump to files or directories |
| `/ / ?` | Find next / previous | In-list searching |

---

### Tabs & Workspaces
| Keybind | Action | Reason |
|--------|--------|--------|
| `t` | New tab | Parallel directory views |
| `1–9` | Switch tabs | Direct tab access |
| `[ / ]` | Prev / next tab | Sequential navigation |

---

### Sorting & View Modes
| Keybind | Action | Reason |
|--------|--------|--------|
| `,m / ,M` | Sort by modified time | Common file sorting |
| `,s / ,S` | Sort by size | Disk usage inspection |
| `,a / ,A` | Alphabetical sort | Default ordering |
| `ms / mm / mn` | Linemodes | Change file metadata display |

---

### Help & Utilities
| Keybind | Action | Reason |
|--------|--------|--------|
| `~ / F1` | Help | Built-in key reference |
| `w` | Task manager | Monitor background tasks |
