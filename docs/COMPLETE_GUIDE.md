# 🌲 FAELIGHT FOREST - COMPLETE MASTER GUIDE

**Everything you need to know in one place**

Version 1.0 | Last Updated: November 2024

---

# 📑 TABLE OF CONTENTS

1. [Overview](#overview)
2. [Installation Summary](#installation-summary)
3. [Fish Shell Complete Guide](#fish-shell-complete-guide)
4. [LazyVim Complete Guide](#lazyvim-complete-guide)
5. [Hyprland Keybindings Reference](#hyprland-keybindings-reference)
6. [Icon Workspaces Guide](#icon-workspaces-guide)
7. [Quick Reference Cheat Sheet](#quick-reference-cheat-sheet)
8. [Troubleshooting](#troubleshooting)
9. [Customization](#customization)
10. [Theme Colors Reference](#theme-colors-reference)

---

# OVERVIEW

## What is Faelight Forest?

Faelight Forest is a **complete, unified desktop environment theme** for Arch Linux with Hyprland. Every component is themed with cohesive colors and optimized for productivity.

## System Components
```
🐠 Fish Shell         Custom prompt, 100+ aliases, themed colors
📝 LazyVim            Show hidden files, productivity shortcuts
🖥️  Hyprland          Gradient borders, blur, smooth animations
⌨️  Keybindings       Optimized, consistent patterns
🗂️  Workspaces        5 icon-based themed workspaces
📊 Waybar             Workspace icons, system monitoring
```

## Theme Colors
```
Primary:    #5bb7a5  (Bright teal)
Secondary:  #8ed1a3  (Mint green)
Accent:     #c7df63  (Lime green)
Text:       #e8f5d5  (Soft mint)
Background: #0f1c16  (Dark forest)
Surface:    #2e6146  (Moss green)
```

---

# INSTALLATION SUMMARY

## Files Installed

### Fish Shell
- `~/.config/fish/config.fish` - Main configuration
- `~/.config/fish/functions/fish_prompt.fish` - Custom prompt

### LazyVim
- `~/.config/nvim/lua/plugins/neo-tree.lua` - File browser
- `~/.config/nvim/lua/plugins/telescope.lua` - Fuzzy finder
- `~/.config/nvim/lua/plugins/productivity.lua` - Plugins
- `~/.config/nvim/lua/config/keymaps.lua` - Keybindings
- `~/.config/nvim/lua/config/options.lua` - Options

### Hyprland
- `~/.config/hypr/looknfeel.conf` - Visual styling
- `~/.config/hypr/bindings.conf` - Keybindings
- `~/.config/hypr/workspaces.conf` - Icon workspaces

### Waybar
- `~/.config/waybar/config.jsonc` - Configuration

---

# FISH SHELL COMPLETE GUIDE

## Overview

Fish Shell configuration with 100+ bash aliases converted, custom themed prompt, and modern tool integrations.

## Custom Prompt

Your prompt shows:
```
[13:45:22] 📁 Desktop ✔ ❯
```

- **[13:45:22]** - Current time (yellow/lime)
- **📁 Desktop** - Current folder (teal)
- **✔** or **✗** - Last command status (green/red)
- **❯** - Prompt symbol (mint)

## File Navigation Aliases
```bash
# Modern ls (exa/eza)
ll              # Long list with icons & git status
lt              # List sorted by time (newest first)
lsize           # List sorted by size
tree            # Tree view
la              # Show all including hidden
l               # Simple list

# Quick directory navigation
..              # Up one directory
...             # Up two directories
....            # Up three directories
.....           # Up four directories
~               # Go to home
-               # Go to previous directory

# Directory shortcuts
desk            # cd ~/Desktop
docs            # cd ~/Documents
down            # cd ~/Downloads
pics            # cd ~/Pictures
vids            # cd ~/Videos
conf            # cd ~/.config
hyprconf        # cd ~/.config/hypr
nvimconf        # cd ~/.config/nvim
fishconf        # cd ~/.config/fish
```

## Package Management (Arch/AUR)
```bash
# Pacman
pacu            # Update system (pacman -Syu)
paci            # Install package (pacman -S)
pacs            # Search packages (pacman -Ss)
pacinfo         # Package info (pacman -Qi)
pacrem          # Remove package (pacman -Rns)

# Yay (AUR)
ins             # Install from AUR (yay -S)
uns             # Uninstall (yay -Rns)
yup             # Update everything (yay -Syu)

# Maintenance
cleanup         # Remove orphaned packages
unlock          # Remove pacman lock
orphans         # Show orphaned packages
mirror          # Update mirror list

# System updates
update-all      # Update pacman + flatpak
clean-all       # Clean caches and orphans
fix-keys        # Fix pacman keys
```

## Git Shortcuts
```bash
# LazyGit
lg              # LazyGit TUI (best way!)

# Quick status
g               # git
gs              # git status
gss             # git status -s (short)

# Logs
gl              # git log (last 10, graph)
gla             # git log --all
glog            # git log (graph, all)

# Add and commit
ga              # git add
gaa             # git add --all
gc              # git commit -m
gca             # git commit --amend
gcam            # git commit -am

# Push and pull
gp              # git push
gpl             # git pull
gf              # git fetch

# Branches
gb              # git branch
gba             # git branch -a
gbd             # git branch -d
gbD             # git branch -D (force)
gco             # git checkout
gcb             # git checkout -b
gcm             # git checkout main

# Diff and show
gd              # git diff
gds             # git diff --staged
gsh             # git show

# Stash
gst             # git stash
gstp            # git stash pop
gstl            # git stash list
gstd            # git stash drop

# Undo/Reset
gundo           # git reset HEAD~1
gunstage        # git reset HEAD
greset          # git reset --hard
gclean          # git clean -fd

# Clone
gcl             # git clone
```

## System Monitoring
```bash
# System info
ff              # Fastfetch
df              # Disk usage
du              # Directory usage
duh             # Disk usage here (sorted)
free            # Memory usage
psa             # Process tree
weather         # Weather (wttr.in)

# Process management
psg <name>      # Search processes
mem             # Top 10 memory users
cpu             # Top 10 CPU users

# Network
myip            # Show public IP
localip         # Show local IP
pingg           # Ping google
ports           # Show open ports
listening       # Show listening ports
```

## Editor Shortcuts
```bash
# Neovim
v               # nvim
vi              # nvim
vim             # nvim
nv              # nvim
svi             # sudo nvim

# Config editing
nfish           # Edit Fish config
nhypr           # Edit Hyprland config
nwaybar         # Edit Waybar config
nwaybar-style   # Edit Waybar CSS
nkitty          # Edit Kitty config
```

## Modern CLI Tools
```bash
# bat (better cat)
cat             # bat --paging=never
catp            # bat with paging
catt            # bat plain (no line numbers)

# fd (better find)
search          # fd (find files/dirs)
findf           # fd --type f
findd           # fd --type d
```

## File Managers
```bash
# Yazi (terminal file manager)
y               # yazi
yy              # yazi
fm              # yazi
ya              # yazi with cd-on-quit
```

## Hyprland & Waybar
```bash
# Hyprland controls
hypr-reload     # Reload Hyprland config
hypr-info       # List all windows
hypr-windows    # Show window classes

# Waybar
waybar-restart  # Kill and restart waybar
waybar-reload   # Same as above
```

## Power Controls
```bash
# System power
ssn             # Shutdown now
sr              # Reboot
logout          # Exit Hyprland
suspend         # Suspend system
hibernate       # Hibernate system
```

## Quick Actions
```bash
# Utilities
c               # Clear screen
h               # History
reload          # Reload Fish config
path            # Pretty print PATH
now             # Current time
nowdate         # Current date
timestamp       # Timestamp for filenames
please          # Run last command with sudo

# File operations
chx             # chmod +x (make executable)
extract         # Extract tar files
targz           # Create tar.gz
untar           # Extract tar
```

---

# LAZYVIM COMPLETE GUIDE

## Overview

LazyVim is configured to show ALL files (including hidden/dotfiles), with 100+ productivity keybindings and modern plugins.

## Essential Keybindings

### File Navigation
```
Space + e           Toggle file explorer (Neo-tree)
Space + o           Focus file explorer
Space + E           Reveal current file in tree
.                   Toggle hidden files (in Neo-tree)
H                   Toggle hidden files (alternative)
```

### Finding Files
```
Space + ff          Find files (includes hidden!)
Space + fF          Find files (normal, no hidden)
Space + fg          Live grep (search in files)
Space + fw          Find word under cursor
Space + fb          Find buffers
Space + fr          Recent files
```

### File Operations
```
Ctrl+S              Save file (works in insert mode!)
Space + fn          New file
Space + fD          Delete current file
Space + yp          Copy file path
Space + yf          Copy filename
```

### Editing
```
Ctrl+S              Save
gcc                 Comment/uncomment line
gbc                 Comment/uncomment block
Alt+J               Move line down
Alt+K               Move line up
< (visual)          Indent left (stay in visual)
> (visual)          Indent right (stay in visual)
p (visual)          Paste without losing clipboard
Ctrl+A              Select all
```

### Surround (ys/cs/ds)
```
ysiw"               Add quotes around word
ysiw(               Add parentheses around word
yss)                Surround entire line
cs"'                Change " to '
ds"                 Delete surrounding "
S" (visual)         Surround selection with "
```

### Window Management
```
Ctrl+H/J/K/L        Navigate windows (vim keys)
Ctrl+← ↓ ↑ →        Navigate windows (arrows)
Space + wv          Vertical split
Space + ws          Horizontal split
Space + wd          Close window
Ctrl+Up/Down        Resize height
Ctrl+Left/Right     Resize width
```

### Buffer Management
```
Shift+H             Previous buffer
Shift+L             Next buffer
[b                  Previous buffer
]b                  Next buffer
Space + bd          Delete buffer
Space + bD          Delete all buffers
```

### Terminal
```
Ctrl + `            Toggle terminal
Space + tt          Terminal horizontal
Space + tv          Terminal vertical
Space + tf          Terminal float
Esc Esc             Exit terminal mode
```

### LSP & Code Actions
```
gd                  Go to definition
gr                  Go to references
gI                  Go to implementation
gy                  Go to type definition
K                   Hover documentation
gK                  Signature help
Space + ca          Code actions
Space + cr          Rename symbol
Space + cf          Format code
]d                  Next diagnostic
[d                  Previous diagnostic
Space + cd          Show diagnostic
```

### Git (LazyGit Integration)
```
lg (terminal)       LazyGit TUI
Space + gs          Git status (Telescope)
Space + gc          Git commits
Space + gb          Git branches
]h                  Next git hunk
[h                  Previous git hunk
Space + ghp         Preview hunk
Space + ghs         Stage hunk
Space + ghr         Reset hunk
```

### Search
```
/                   Search forward
?                   Search backward
n                   Next match (centered)
N                   Previous match (centered)
Esc                 Clear search highlight
Space + sh          Search help
Space + sk          Search keymaps
Space + sc          Search commands
```

### Quick Actions
```
Space               Wait 300ms → See ALL commands (Which-key!)
;                   Enter command mode (instead of :)
Space + ul          Toggle line numbers
Space + ur          Toggle relative numbers
Space + uw          Toggle word wrap
Space + us          Toggle spell check
```

---

# HYPRLAND KEYBINDINGS REFERENCE

## Core Applications

### Essential Apps (Single Key)
```
SUPER + RETURN      Terminal (Kitty)
SUPER + B           Browser
SUPER + E           File Manager
SUPER + N           Editor
SUPER + C           VSCode
SUPER + SPACE       Launcher (Walker)
```

## Window Management

### Focus Windows
```
SUPER + H/J/K/L         Move focus (Vim keys)
SUPER + ←/↓/↑/→         Move focus (Arrows)
SUPER + TAB             Cycle next window
SUPER + SHIFT + TAB     Cycle previous window
```

### Move Windows
```
SUPER + SHIFT + H/J/K/L      Move window (Vim keys)
SUPER + SHIFT + ←/↓/↑/→      Move window (Arrows)
```

### Resize Windows
```
SUPER + CTRL + H/J/K/L       Resize (Vim keys)
SUPER + CTRL + ←/↓/↑/→       Resize (Arrows)
```

### Window Actions
```
SUPER + Q           Kill/Close window
SUPER + V           Toggle floating
SUPER + F           Fullscreen
SUPER + SHIFT + F   Maximize (keep bar)
SUPER + Z           Pin window
SUPER + T           Toggle split
SUPER + O           Center window
```

## Workspaces (5 Icon Workspaces)

### Workspace Themes
```
1 =  Terminal     (Coding & CLI)
2 = 󰈹 Browser      (Web & Research)
3 = 󰉋 Files        (File Management)
4 =  Code         (Vim & Editors)
5 = 󰖯 Default      (Everything Else)
```

### Switch Workspace
```
SUPER + 1/2/3/4/5    Go to workspace
SUPER + `            Toggle last workspace
```

### Move Window to Workspace
```
SUPER + SHIFT + 1/2/3/4/5    Move and follow
SUPER + ALT + 1/2/3/4/5      Move silently (stay)
```

### Workspace Navigation
```
SUPER + ]               Next workspace
SUPER + [               Previous workspace
SUPER + Page Down       Next workspace
SUPER + Page Up         Previous workspace
```

## Scratchpad
```
SUPER + M            Toggle scratchpad
SUPER + SHIFT + M    Move to scratchpad
SUPER + ALT + M      Move silently to scratchpad
```

## System Controls

### Lock & Power
```
SUPER + L            Lock screen
SUPER + SHIFT + L    Logout
SUPER + ALT + L      Suspend
SUPER + CTRL + L     Hibernate
SUPER + ESCAPE       Power menu
```

### Hyprland Controls
```
SUPER + ALT + R      Reload Hyprland
SUPER + ALT + K      Kill Hyprland
SUPER + ALT + W      Restart Waybar
```

## Media & Audio

### Volume (Function Keys)
```
XF86AudioRaiseVolume     Volume up (+5%)
XF86AudioLowerVolume     Volume down (-5%)
XF86AudioMute            Toggle mute
XF86AudioMicMute         Toggle microphone
```

### Media Controls
```
XF86AudioPlay      Play/Pause
XF86AudioPause     Pause
XF86AudioNext      Next track
XF86AudioPrev      Previous track
```

### Brightness
```
XF86MonBrightnessUp      Brightness up (+5%)
XF86MonBrightnessDown    Brightness down (-5%)
```

## Screenshots
```
SUPER + S            Full screenshot (saved)
SUPER + SHIFT + S    Area screenshot (saved)
SUPER + ALT + S      Area to clipboard
SUPER + CTRL + S     Area to editor (Swappy)
```

Save location: `~/Pictures/Screenshots/`

## Clipboard
```
SUPER + P            Clipboard history
SUPER + SHIFT + P    Clear clipboard
SUPER + CTRL + P     Clipboard menu
```

## Help
```
SUPER + /    Open keybindings reference
```

---

# ICON WORKSPACES GUIDE

## Overview

5 themed workspaces with visual icons that auto-organize your applications.

## Your 5 Workspaces
```
1.  Terminal    → Kitty, Alacritty, CLI tools
2. 󰈹 Browser     → Firefox, Brave, Chrome
3. 󰉋 Files       → Nautilus, Yazi
4.  Code        → Neovim, VSCode, Obsidian
5. 󰖯 Default     → Chat, Media, Misc
```

## Auto-Organization

Apps automatically open in their designated workspace:

### Workspace 1 ( Terminal)
- Kitty, Alacritty
- btop, htop, lazydocker, lazygit

### Workspace 2 (󰈹 Browser)
- Firefox, Brave, Chrome, Edge
- Web apps

### Workspace 3 (󰉋 Files)
- Nautilus, Thunar, Dolphin
- Yazi (terminal file manager)

### Workspace 4 ( Code)
- Neovim, VSCode, VSCodium
- Obsidian, Typora
- LibreOffice

### Workspace 5 (󰖯 Default)
- Signal, Discord, Slack
- Email clients
- Media players (Spotify, VLC)
- Creative apps (GIMP, Inkscape)

## Navigation Methods

### By Number (Primary)
```
SUPER + 1-5              Switch to workspace
SUPER + SHIFT + 1-5      Move window to workspace
SUPER + ALT + 1-5        Move window silently
```

### Quick Launchers
```
SUPER + RETURN          Open Terminal (goes to WS 1)
SUPER + B               Open Browser (goes to WS 2)
SUPER + E               Open Files (goes to WS 3)
SUPER + N               Open Editor (goes to WS 4)
```

---

# QUICK REFERENCE CHEAT SHEET

## Most Important (Learn These First)
```
╔══════════════════════════════════════════════════════════╗
║         🌲 FAELIGHT FOREST ESSENTIALS 🌲                ║
╠══════════════════════════════════════════════════════════╣
║ SUPER + SPACE      Launcher                             ║
║ SUPER + RETURN     Terminal                             ║
║ SUPER + B          Browser                              ║
║ SUPER + 1-5        Workspaces                           ║
║ SUPER + H/J/K/L    Navigate                             ║
║ SUPER + Q          Close                                ║
║ SUPER + L          Lock                                 ║
║ SUPER + M          Scratchpad                           ║
║ SUPER + S          Screenshot                           ║
║ SUPER + P          Clipboard                            ║
║ SUPER + /          Help                                 ║
╚══════════════════════════════════════════════════════════╝
```

## Fish Shell Quick Commands
```fish
# Most Used
ll              # List files with icons
gs              # Git status
lg              # LazyGit
v file          # Edit with Neovim
Ctrl+R          # Fuzzy history search

# Navigation
..              # Up directory
desk/docs/down  # Quick jumps

# System
pacu            # Update system
ff              # Fastfetch
myip            # Show IP
reload          # Reload Fish
```

## LazyVim Quick Keys
```
Space           # Wait → See all commands
Space + e       # File tree
Space + ff      # Find files
.               # Toggle hidden (in tree)
Ctrl + `        # Terminal
gcc             # Comment
```

## Hyprland Quick Keys
```
SUPER + SPACE         # Launcher
SUPER + 1-5           # Workspaces
SUPER + H/J/K/L       # Navigate
SUPER + SHIFT + H/J/K/L    # Move window
SUPER + CTRL + H/J/K/L     # Resize window
SUPER + Q             # Close
SUPER + V             # Float
SUPER + F             # Fullscreen
```

## Workspace Quick Reference
```
 = Terminal  (WS 1)    SUPER + 1
󰈹 = Browser   (WS 2)    SUPER + 2
󰉋 = Files     (WS 3)    SUPER + 3
 = Code      (WS 4)    SUPER + 4
󰖯 = Default   (WS 5)    SUPER + 5
```

---

# TROUBLESHOOTING

## Common Issues & Solutions

### Fish Shell Issues

#### Aliases Not Working
```bash
# Reload config
source ~/.config/fish/config.fish
# Or use shortcut:
reload
```

#### Prompt Not Showing
```bash
# Check if function exists
type fish_prompt

# Recreate if missing
nvim ~/.config/fish/functions/fish_prompt.fish
```

### LazyVim Issues

#### Plugins Not Installing
```vim
:Lazy sync          " Sync plugins
:Lazy clean         " Clean unused
:Lazy update        " Update all
```

#### Keybindings Not Working
```vim
:checkhealth        " Check health
:Telescope keymaps  " See all keymaps
```

### Hyprland Issues

#### Config Errors
```bash
# Check version
hyprland --version

# View logs
cat /tmp/hypr/hyprland.log

# Reload
hyprctl reload
```

#### Workspaces Not Auto-Organizing
```bash
# Check window class
hyprctl activewindow | grep class

# Update workspace rules
nvim ~/.config/hypr/workspaces.conf
hyprctl reload
```

### Waybar Issues

#### Icons Not Showing
```bash
# Install Nerd Font
yay -S ttf-jetbrains-mono-nerd

# Restart Waybar
killall waybar && waybar &
```

## Finding Window Classes
```bash
# Active window
hyprctl activewindow | grep class

# All windows
hyprctl clients | grep class
```

---

# CUSTOMIZATION

## Changing Colors

### Faelight Forest Color Palette
```
Primary:    #5bb7a5  (Bright teal)
Secondary:  #8ed1a3  (Mint green)
Accent:     #c7df63  (Lime green)
Text:       #e8f5d5  (Soft mint)
Background: #0f1c16  (Dark forest)
Surface:    #2e6146  (Moss green)
```

### Where to Change Colors

**Fish Prompt:**
`~/.config/fish/functions/fish_prompt.fish`

**Hyprland Borders:**
`~/.config/hypr/looknfeel.conf`
```conf
col.active_border = rgba(5bb7a5ee) rgba(8ed1a3ee) 45deg
col.inactive_border = rgba(2e614688)
```

**Waybar:**
`~/.config/waybar/style.css`

## Changing Keybindings

### Hyprland
Edit: `~/.config/hypr/bindings.conf`
```conf
# Example: Change terminal to Ctrl+Return
bind = CTRL, RETURN, exec, kitty
```

### LazyVim
Edit: `~/.config/nvim/lua/config/keymaps.lua`
```lua
-- Example: Change file finder to Space + p
map("n", "<leader>p", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
```

---

# THEME COLORS REFERENCE

## Complete Faelight Forest Palette

### Primary Colors
```
Bright Teal:    #5bb7a5
Mint Green:     #8ed1a3
Lime Green:     #c7df63
Soft Mint:      #e8f5d5
```

### Background Colors
```
Dark Forest:    #0f1c16
Dark Alt:       #1a2e24
Moss Green:     #2e6146
Forest Green:   #3d7a5a
Muted Green:    #557d68
```

### Semantic Colors
```
Success:        #5bb77a
Warning:        #d9b380
Error:          #c94c4c
Info:           #5aaabb
```

---

# CREDITS & RESOURCES

## Resources

- [Hyprland Wiki](https://wiki.hyprland.org/)
- [LazyVim Documentation](https://www.lazyvim.org/)
- [Fish Shell Documentation](https://fishshell.com/docs/current/)
- [Waybar Wiki](https://github.com/Alexays/Waybar/wiki)
- [Nerd Fonts](https://www.nerdfonts.com/)

---

**Welcome to Faelight Forest!** 🌲✨

*Faelight Forest Complete Master Guide v1.0*
```bash


