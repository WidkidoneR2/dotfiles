# 🌲 Faelight Forest Dotfiles

**Complete Arch Linux + Hyprland configuration** with custom Fish shell, LazyVim, and beautiful theming.

![Faelight Forest Theme](https://img.shields.io/badge/Theme-Faelight%20Forest-5bb7a5?style=for-the-badge)
![Arch Linux](https://img.shields.io/badge/Arch-Linux-1793D1?style=for-the-badge&logo=arch-linux)
![Hyprland](https://img.shields.io/badge/WM-Hyprland-5bb7a5?style=for-the-badge)

---

## 📸 Preview

- **Shell**: Fish with custom prompt & 100+ aliases
- **WM**: Hyprland with gradient borders & smooth animations
- **Bar**: Waybar with icon workspaces
- **Terminal**: Kitty
- **Editor**: LazyVim with productivity plugins
- **Colors**: Faelight Forest (teal/mint/lime palette)

---

## 🎨 Theme Colors
```
Primary:    #5bb7a5  (Bright teal)
Secondary:  #8ed1a3  (Mint green)
Accent:     #c7df63  (Lime green)
Text:       #e8f5d5  (Soft mint)
Background: #0f1c16  (Dark forest)
Surface:    #2e6146  (Moss green)
```

---

## 📦 What's Included
```
dotfiles/
├── fish/                   # Fish Shell configuration
│   ├── config.fish        # Main config with 100+ aliases
│   └── functions/         # Custom prompt & functions
├── hypr/                  # Hyprland window manager
│   ├── hyprland.conf     # Main config
│   ├── bindings.conf     # Keybindings
│   ├── looknfeel.conf    # Visual styling
│   └── workspaces.conf   # Icon workspaces (5 themed)
├── waybar/                # Status bar
│   ├── config.jsonc      # Waybar configuration
│   └── style.css         # Faelight Forest styling
├── kitty/                 # Terminal emulator
│   └── kitty.conf        # Terminal config
├── nvim/                  # LazyVim configuration
│   └── lua/              # Plugin configs
├── scripts/               # Utility scripts
│   ├── sys-cleanup       # System maintenance
│   └── quick-note        # Daily scratchpad
├── docs/                  # Documentation
│   └── COMPLETE_GUIDE.md # Full reference guide
├── install.sh            # Installation script
├── backup.sh             # Backup current configs
└── README.md             # This file
```

---

## 🚀 Quick Install

### Prerequisites
```bash
# Required packages
sudo pacman -S fish hyprland waybar kitty neovim eza bat fd fzf

# Optional (recommended)
yay -S lazygit fastfetch
```

### Installation
```bash
# Clone this repository
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles

# Run installation script
cd ~/dotfiles
chmod +x install.sh
./install.sh

# Reload shell
exec fish

# Reload Hyprland
hyprctl reload
```

---

## 🔧 Features

### Fish Shell
- Custom Faelight Forest prompt with time, folder, git status
- 100+ bash aliases converted to Fish
- Modern CLI tools integrated (eza, bat, fd, fzf)
- Git shortcuts with LazyGit
- Quick directory navigation
- Package management shortcuts

### Hyprland
- 5 icon-based themed workspaces ( 󰈹 󰉋  󰖯)
- Auto-organization (apps go to correct workspace)
- Gradient window borders (teal → mint)
- Smooth animations & blur
- Optimized keybindings (vim-style navigation)

### Waybar
- Workspace icons always visible
- System monitoring (CPU, RAM, disk)
- Network status
- Battery indicator
- Faelight Forest themed

### LazyVim
- Show hidden files by default
- 100+ productivity keybindings
- Neo-tree, Telescope, ToggleTerm
- Git integration (LazyGit, Gitsigns)
- LSP & auto-completion

### Scripts
- `sys-cleanup` - System maintenance & cache cleaning
- `quick-note` - Daily markdown scratchpad

---

## ⌨️  Keybindings

### Essential (Learn These First)
```
SUPER + SPACE       Launcher
SUPER + RETURN      Terminal
SUPER + B           Browser
SUPER + 1-5         Workspaces
SUPER + H/J/K/L     Navigate windows
SUPER + Q           Close window
SUPER + L           Lock screen
```

### Workspaces
```
 Terminal  (WS 1)  →  Kitty, CLI tools
󰈹 Browser   (WS 2)  →  Firefox, Brave
󰉋 Files     (WS 3)  →  Nautilus, Yazi
 Code      (WS 4)  →  Neovim, VSCode
󰖯 Default   (WS 5)  →  Chat, Media, Misc
```

---

## 🔄 Updating Dotfiles

### Backup Current Configs
```bash
cd ~/dotfiles
./backup.sh
```

This will:
1. Sync all current configs to ~/dotfiles
2. Show git status
3. Ask to commit & push changes

### Pull Latest Changes
```bash
cd ~/dotfiles
git pull
./install.sh
```

---

## 📚 Documentation

See [docs/COMPLETE_GUIDE.md](docs/COMPLETE_GUIDE.md) for:
- Complete Fish alias reference
- All LazyVim keybindings
- Hyprland configuration guide
- Troubleshooting tips
- Customization instructions

---

## 🛡️ Security Features

- UFW firewall configured
- Full disk encryption (LUKS)
- Mullvad VPN support
- DNS over TLS
- Fail2ban intrusion prevention
- Disabled unnecessary services

---

## 🎯 Quick Commands
```bash
# View complete guide
guide

# System cleanup
sys-cleanup

# Quick note
quick-note

# Git shortcuts
lg          # LazyGit
gs          # Git status
gp          # Git push

# System info
ff          # Fastfetch
ll          # List files (eza)
```

---

## 📝 Customization

All configs are designed to be easily customizable:

- **Colors**: Edit color codes in configs (search for `#5bb7a5`)
- **Keybindings**: `~/.config/hypr/bindings.conf`
- **Fish aliases**: `~/.config/fish/config.fish`
- **Workspace icons**: `~/.config/hypr/workspaces.conf`

---

## 🤝 Credits

- **Theme**: Faelight Forest (custom)
- **Window Manager**: [Hyprland](https://hyprland.org/)
- **Status Bar**: [Waybar](https://github.com/Alexays/Waybar)
- **Shell**: [Fish Shell](https://fishshell.com/)
- **Editor**: [LazyVim](https://www.lazyvim.org/)

---

## 📄 License

MIT License - Feel free to use and modify!

---

**🌲 Enjoy your Faelight Forest setup!**

*Last updated: November 2025*
