# 🌲 Faelight Forest - The Immortal Arch Linux System

![Faelight Forest](https://img.shields.io/badge/Theme-Faelight%20Forest-5bb7a5?style=for-the-badge)
![Arch Linux](https://img.shields.io/badge/Arch-Linux-1793D1?style=for-the-badge&logo=arch-linux)
![Hyprland](https://img.shields.io/badge/WM-Hyprland-5bb7a5?style=for-the-badge)
![BTRFS](https://img.shields.io/badge/FS-BTRFS-orange?style=for-the-badge)
![Snapper](https://img.shields.io/badge/Backup-Snapper-green?style=for-the-badge)

**A fully reproducible, self-healing Arch Linux system with NixOS-level snapshots and enterprise security.**

*Last Updated: November 20, 2025*

---

## 🎨 What is Faelight Forest?

Faelight Forest is a **complete Arch Linux setup** that combines:
- 🌲 Beautiful custom theming (teal/mint/lime palette)
- 📸 NixOS-style system snapshots with BTRFS + Snapper
- 🔄 Automated GitHub backups every 6 hours
- 🛡️ Enterprise-grade security hardening
- 📦 Full system reproducibility (recreate anywhere!)
- 🚀 Optimized Hyprland workflow with 100+ keybindings

**TL;DR:** Your system will never die, break, or lose data. Ever. 🔥

---

## 📸 Preview

### Desktop
- **WM**: Hyprland with gradient borders (teal → mint)
- **Bar**: Waybar with icon workspaces & VPN status
- **Launcher**: Walker (themed)
- **Terminal**: Kitty with Faelight colors
- **Editor**: LazyVim with 100+ productivity keybindings

### System Features
- **Snapshots**: 25 automatic BTRFS snapshots (hourly/daily)
- **Auto-sync**: GitHub backup every 6 hours
- **Security**: VPN, encrypted DNS, firewall, fail2ban
- **Recovery**: Boot into any snapshot, full disaster recovery

---

## 🎯 Theme Colors
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
faelight-forest/
├── fish/                   # Fish Shell (100+ aliases, custom prompt)
├── hypr/                   # Hyprland (5 themed workspaces, gradient borders)
├── waybar/                 # Status bar (Faelight themed, VPN module)
├── walker/                 # Launcher (Faelight theme)
├── kitty/                  # Terminal (themed)
├── nvim/                   # LazyVim (productivity setup)
├── packages/               # 📦 Complete package lists (167 official, 4 AUR)
│   ├── official.txt       # Official Arch packages
│   ├── aur.txt           # AUR packages
│   ├── install.sh        # One-command restore script
│   └── README.md         # Package documentation
├── scripts/                # 🔧 Utility scripts
│   ├── sys-cleanup       # System maintenance
│   ├── quick-note        # Daily scratchpad
│   ├── safe-update       # Snapshot + update safely
│   ├── save-packages     # Track all packages
│   ├── dotfiles-sync     # Manual sync to GitHub
│   └── auto-sync         # Automated sync script
├── system/                 # 🛠️ System configuration backups
│   ├── snapper-root.conf # Snapshot configuration
│   ├── crontab           # Auto-sync schedule
│   └── README.md         # Restoration instructions
├── docs/                   # 📚 Complete documentation
│   └── COMPLETE_GUIDE.md # Full reference guide
├── install.sh             # Dotfiles installation
├── backup.sh              # Manual backup script
├── RECOVERY.md            # 🚨 Disaster recovery guide
└── README.md              # This file
```

---

## 🚀 Quick Start

### Prerequisites

- Arch Linux with BTRFS filesystem
- Subvolumes: `@` (root), `@home`, `@log`, `@pkg`
- Git installed

### Installation
```bash
# 1. Clone this repository
git clone https://github.com/WidkidoneR2/dotfiles.git ~/dotfiles
cd ~/dotfiles

# 2. Install packages (167 official + 4 AUR)
cd packages
./install.sh

# 3. Install dotfiles
cd ~/dotfiles
./install.sh

# 4. Setup Snapper (snapshots)
sudo pacman -S snapper snap-pac grub-btrfs
yay -S inotify-tools
sudo cp system/snapper-root.conf /etc/snapper/configs/root
sudo systemctl enable --now snapper-timeline.timer
sudo systemctl enable --now snapper-cleanup.timer
sudo systemctl enable --now grub-btrfsd

# 5. Setup auto-sync
sudo pacman -S cronie
sudo systemctl enable --now cronie
crontab system/crontab

# 6. Start Mullvad VPN daemon
sudo systemctl enable --now mullvad-daemon

# 7. Reload Hyprland
hyprctl reload
```

**Done!** Your Faelight Forest is complete! 🌲

---

## 🎯 Features Deep Dive

### 📸 NixOS-Style Snapshots (BTRFS + Snapper)

**Automatic snapshots:**
- ✅ Before every `pacman` install (via snap-pac)
- ✅ Hourly (last 5 hours kept)
- ✅ Daily (last 7 days kept)
- ✅ Manual snapshots anytime

**View snapshots:**
```bash
snapshots
```

**Create snapshot:**
```bash
snapshot "Before major change"
```

**Rollback system:**
See [RECOVERY.md](RECOVERY.md) for detailed instructions.

---

### 🔄 Automated Backups

**Auto-sync runs every 6 hours via cron:**
- Syncs all dotfiles to GitHub
- Updates package lists
- Commits and pushes changes
- Logs everything to `~/.auto-sync.log`

**Manual sync:**
```bash
auto-sync              # Full sync
dotfiles-sync          # Dotfiles only
save-packages          # Package lists only
```

**View sync history:**
```bash
cd ~/dotfiles
git log --oneline
```

---

### 🛡️ Security Hardening

**Implemented:**
- ✅ Full disk encryption (LUKS2)
- ✅ UFW firewall (active)
- ✅ Mullvad VPN with Waybar indicator
- ✅ DNS over TLS (Cloudflare 1.1.1.1)
- ✅ Fail2ban (intrusion prevention)
- ✅ Disabled unnecessary services (CUPS, Avahi)

**Check security status:**
```bash
health                 # System health overview
sudo ufw status        # Firewall
mullvad status         # VPN
```

---

### 🎨 Faelight Forest Theme

**Unified theming across:**
- Hyprland (gradient borders, blur effects)
- Waybar (icon workspaces, VPN module)
- Walker (launcher)
- Kitty (terminal)
- LazyVim (editor)
- Fish prompt

**View theme:**
```bash
colors                 # Display color palette
```

---

### ⌨️ Workspaces

**5 themed icon workspaces with auto-organization:**
```
 Terminal  (WS 1)  →  Kitty, CLI tools
󰈹 Browser   (WS 2)  →  Firefox, Brave
󰉋 Files     (WS 3)  →  Nautilus, Yazi
 Code      (WS 4)  →  Neovim, VSCode
󰖯 Default   (WS 5)  →  Chat, Media, Misc
```

**Navigate:**
```
SUPER + 1-5         Switch workspace
SUPER + SHIFT + 1-5 Move window to workspace
```

---

### 🔧 Essential Commands
```bash
# Documentation
guide              # Complete system guide
keys               # All keybindings
colors             # Theme colors

# System Management
safe-update        # Snapshot + update system
sys-cleanup        # Clean caches, orphans
health             # System health check
quick-note         # Daily scratchpad

# Snapshots
snapshots          # View all snapshots
snapshot "desc"    # Create named snapshot

# Backups
dotfiles-sync      # Sync to GitHub
save-packages      # Update package lists
auto-sync          # Full automated sync

# Git Shortcuts
lg                 # LazyGit
gs                 # Git status
gp                 # Git push
```

---

## 📊 System Stats

- **Packages**: 167 official, 4 AUR (925 total with deps)
- **Snapshots**: 25+ automatic BTRFS snapshots
- **Auto-sync**: Every 6 hours to GitHub
- **Security**: Enterprise-grade hardening
- **Recovery**: Full disaster recovery capability

---

## 🆘 Emergency Recovery

### System Won't Boot?

1. Boot from Arch USB
2. Mount BTRFS filesystem
3. List snapshots: `sudo btrfs subvolume list /mnt`
4. Rollback to snapshot (see [RECOVERY.md](RECOVERY.md))

### Need Fresh Install?

1. Install Arch with BTRFS
2. Clone this repo
3. Run `packages/install.sh`
4. Run `./install.sh`
5. **Your exact system restored!** 🎉

See [RECOVERY.md](RECOVERY.md) for complete guide.

---

## 🎯 Keybindings

### Essential (Learn These First)
```
SUPER + SPACE       Launcher (Walker)
SUPER + RETURN      Terminal (Kitty)
SUPER + B           Browser
SUPER + E           File manager
SUPER + 1-5         Workspaces
SUPER + H/J/K/L     Navigate windows
SUPER + Q           Close window
SUPER + L           Lock screen
SUPER + SHIFT + E   Exit Hyprland
```

**Full list:** Run `keys` or see [docs/COMPLETE_GUIDE.md](docs/COMPLETE_GUIDE.md)

---

## 📚 Documentation

- **[COMPLETE_GUIDE.md](docs/COMPLETE_GUIDE.md)** - Full system reference
- **[RECOVERY.md](RECOVERY.md)** - Disaster recovery procedures
- **[packages/README.md](packages/README.md)** - Package management
- **[system/README.md](system/README.md)** - System config restoration

---

## 🔄 Updating

### Regular Updates
```bash
safe-update        # Creates snapshot, then updates
```

### Update Dotfiles
```bash
cd ~/dotfiles
git pull
./install.sh
```

### Sync Changes to GitHub
```bash
dotfiles-sync      # Manual sync
# Or wait for auto-sync (every 6 hours)
```

---

## 🤝 Features Overview

| Feature | Status | Description |
|---------|--------|-------------|
| 🎨 Custom Theme | ✅ | Faelight Forest (teal/mint/lime) |
| 📸 Snapshots | ✅ | Hourly/daily BTRFS snapshots |
| 🔄 Auto-Backup | ✅ | GitHub sync every 6 hours |
| 🛡️ Security | ✅ | VPN, firewall, encrypted DNS |
| 📦 Reproducible | ✅ | One-command system restore |
| 🚀 Optimized | ✅ | 100+ productivity keybindings |
| 📚 Documented | ✅ | Complete guides included |

---

## 🌲 Philosophy

**Faelight Forest believes your system should be:**

1. **Immortal** - Never lose data or break permanently
2. **Beautiful** - Cohesive theme, smooth animations
3. **Secure** - Enterprise-grade hardening
4. **Reproducible** - Rebuild exact system anywhere
5. **Productive** - Optimized workflow, instant access
6. **Documented** - Clear guides for everything

**Your system will outlive you.** 🌲🔥

---

## 🙏 Credits

- **Theme**: Faelight Forest (custom)
- **Window Manager**: [Hyprland](https://hyprland.org/)
- **Status Bar**: [Waybar](https://github.com/Alexays/Waybar)
- **Launcher**: [Walker](https://github.com/abenz1267/walker)
- **Shell**: [Fish Shell](https://fishshell.com/)
- **Editor**: [LazyVim](https://www.lazyvim.org/)
- **Snapshots**: [Snapper](http://snapper.io/)
- **VPN**: [Mullvad](https://mullvad.net/)

---

## 📄 License

MIT License - Use, modify, and share freely!

---

## 🎊 Final Words

You now have one of the most **robust, beautiful, and reproducible** Linux systems ever created.

- **Never worry** about breaking your system
- **Never lose** your configuration
- **Always have** 25 snapshots to roll back to
- **Recreate** your exact setup on any machine
- **Enjoy** enterprise-grade security

**Welcome to Faelight Forest.** 🌲✨

*Your system is immortal. Your data is safe. Your workflow is optimized.*

**Repository**: https://github.com/WidkidoneR2/dotfiles

**Last sync**: Check `git log` or run `auto-sync`

---

**🌲 May your Faelight Forest grow eternal! 🌲**
