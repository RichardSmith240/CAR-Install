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


