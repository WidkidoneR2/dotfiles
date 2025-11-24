# 🌲 Faelight Forest – Master Guide 2.1

*Version 2.1 – Legendary Edition*  
*Updated: November 23, 2025*  
*Built with ❤️ by Christian*  
*Snapshots: 36+ | Commits: 15 | Status: LEGENDARY ♾️*

---

## Table of Contents

1. [Introduction](#introduction)  
2. [System Philosophy](#system-philosophy)  
3. [Core Components](#core-components)  
4. [Keybindings Overview](#keybindings-overview)  
5. [Detailed Keybindings](#detailed-keybindings)  
6. [Terminal & Shell Setup](#terminal--shell-setup)  
7. [Fish Shell References](#fish-shell-references)  
8. [Browsers & Web Tools](#browsers--web-tools)  
9. [AI & Productivity Tools](#ai--productivity-tools)  
10. [System Utilities & Security](#system-utilities--security)  
11. [Media & Audio Controls](#media--audio-controls)  
12. [Window Management](#window-management)  
13. [Workspaces](#workspaces)  
14. [Scratchpad & Special Workspaces](#scratchpad--special-workspaces)  
15. [Mouse Bindings](#mouse-bindings)  
16. [Window Groups](#window-groups)  
17. [Recovery & Snapshots](#recovery--snapshots)  
18. [Package Management & Monitoring](#package-management--monitoring)  
19. [VPN & Network Status](#vpn--network-status)  
20. [Security & Secret Management](#security--secret-management)  
21. [Notifications & Alerts](#notifications--alerts)  
22. [Theme & Aesthetics](#theme--aesthetics)  
23. [Help & Documentation](#help--documentation)  
24. [🎊 Congratulations!](#-congratulations)  

---

## Introduction

Welcome to **Faelight Forest**, a fully reproducible, secure, and beautiful Linux setup. Designed to maximize **productivity, security, and aesthetics**, Faelight Forest gives you a **robust workflow** with snapshots, GitHub backups, and total recoverability.

Whether you are a developer, writer, or digital creator, Faelight Forest ensures:

- Full control of your **system state**  
- **Reproducibility** across devices  
- **Zero credential leaks**  
- **Instant recovery** from errors  

This guide contains **all keybindings, workflows, and security procedures** you need.

---

## System Philosophy

- **Modularity** – each component can be updated or replaced independently  
- **Snapshots & Rollbacks** – all configurations are version-controlled and snapshot-ready  
- **Minimal yet powerful** – lightweight apps with maximum workflow efficiency  
- **Security first** – monitoring, secret protection, and isolation of sensitive data  

---

## Core Components

| Component             | Primary App / Tool          | Notes                                      |
|-----------------------|---------------------------|--------------------------------------------|
| Terminal              | Kitty / Alacritty          | Backup in case of issues                   |
| Launcher              | Walker                     | Dmenu-style quick launcher                 |
| File Manager          | Nautilus / Yazi TUI        | GUI + TUI variants                          |
| Editor                | Neovim / Typora / VSCode   | For writing, coding, and note-taking      |
| Browser               | Omarchy Launcher           | Supports multiple profiles + private mode |
| AI Assistants         | Claude / Grok              | Web apps accessible with shortcuts        |
| Communication         | Signal / Email / Calendar  | Quick launch via keybindings              |
| System Utilities      | btop, lazydocker, keepassxc| Monitoring & password management           |
| Media                 | Playerctl / XF86 keys      | Full media and volume controls            |
| Window Management     | Hyprland                   | Tiling + floating + groups                 |
| Package Tracking      | Gitleaks / Package scripts | Secret scanning & updates                  |
| Security & VPN        | OpenVPN / WireGuard / Visual| Status monitoring with icons               |
| Snapshots             | Timeshift / Git            | 36+ snapshots, automated and manual       |

---

## Keybindings Overview

### Modifiers
- **SUPER** = Windows/Command key  
- **SUPER SHIFT** = Advanced actions / Variants  
- **SUPER CTRL** = Resize / Fine control  
- **SUPER ALT** = Quick access / Alternative actions  

---

## Detailed Keybindings

### Core Applications

```text
SUPER + RETURN → Terminal (Kitty)
SUPER CTRL + RETURN → Terminal (Alacritty)
SUPER + B → Browser
SUPER + E → File Manager (Nautilus)
SUPER + N → Editor (Neovim / Typora)
SUPER + C → VSCode
File Managers
text
Copy code
SUPER SHIFT + F → File Manager GUI
SUPER SHIFT + Y → File Manager Yazi TUI
Browsers & Web
text
Copy code
SUPER SHIFT + B → Browser New
SUPER SHIFT ALT + B → Browser Private
SUPER SHIFT + U → YouTube (New shortcut, no conflict)
SUPER SHIFT + X → X / Twitter
SUPER SHIFT ALT + X → X Post
AI Assistants
text
Copy code
SUPER SHIFT ALT + A → Claude
SUPER CTRL + A → Grok
Communication
text
Copy code
SUPER SHIFT + G → Signal
SUPER SHIFT + E → Email
SUPER SHIFT + C → Calendar
Media Controls
text
Copy code
XF86AudioRaiseVolume → Increase Volume
XF86AudioLowerVolume → Decrease Volume
XF86AudioMute → Toggle Mute
XF86AudioMicMute → Toggle Mic
XF86AudioPlay → Play / Pause
XF86AudioNext → Next Track
XF86AudioPrev → Previous Track
XF86MonBrightnessUp → Increase Brightness
XF86MonBrightnessDown → Decrease Brightness
Screenshots
text
Copy code
SUPER + S → Full Screenshot
SUPER SHIFT + S → Area Screenshot
SUPER ALT + S → Clipboard Screenshot
SUPER CTRL + S → Screenshot Editor
Window Management
Focus

text
Copy code
SUPER + h/j/k/l → Move Focus (Vim)
SUPER + arrow keys → Move Focus (Alternative)
SUPER + TAB → Cycle Next Window
SUPER SHIFT + TAB → Cycle Previous Window
Move

text
Copy code
SUPER SHIFT + h/j/k/l → Move Window
SUPER SHIFT + arrow keys → Move Window
Resize

text
Copy code
SUPER CTRL + h/j/k/l → Resize Window (-/+)
SUPER CTRL + arrow keys → Resize Window
Actions

text
Copy code
SUPER + Q → Kill Active
SUPER + V → Toggle Floating
SUPER + F → Fullscreen
SUPER SHIFT + F → Fullscreen (secondary)
SUPER + Z → Pin
SUPER + T → Toggle Split
SUPER + O → Center Window
Workspaces
Workspace	Theme	Shortcut
1	Terminal & CLI	SUPER + 1
2	Browser / Research	SUPER + 2
3	Editor / Writing	SUPER + 3
4	Communication	SUPER + 4
5	Creative / Media	SUPER + 5

Move Window Between Workspaces

text
Copy code
SUPER SHIFT + 1-5 → Move Window to Workspace
SUPER ALT + 1-5 → Move Window Silently
Workspace Navigation

text
Copy code
SUPER + [ → Previous Workspace
SUPER + ] → Next Workspace
SUPER + PAGE_UP → Previous
SUPER + PAGE_DOWN → Next
SUPER + grave → Last Workspace
SUPER + W → Workspace Switcher (Walker)
Scratchpad
text
Copy code
SUPER + M → Toggle Scratchpad
SUPER SHIFT + M → Move to Scratchpad
SUPER ALT + M → Move to Scratchpad silently
Mouse Bindings
text
Copy code
SUPER + mouse_up / mouse_down → Switch Workspace
SUPER + mouse:272 → Move Window
SUPER + mouse:273 → Resize Window
Window Groups
text
Copy code
SUPER + G → Toggle Group
SUPER + TAB → Cycle Group Active Forward
SUPER SHIFT + TAB → Cycle Group Active Backward
Security & Secret Management
Gitleaks runs automatically every snapshot

Secret leaks trigger notifications

VPN status visible in Waybar with green/red icons

OpenVPN / WireGuard setup scripts included

Package Tracking
sudo pacman -Syu updates system

pacman -Qe lists explicitly installed packages

Auto-logs for auditing

Recovery & Snapshots
Timeshift + Git for full recovery

36+ snapshots maintained

One-command restore:

bash
Copy code
faelight-restore latest
Notifications & Alerts
text
Copy code
SUPER + I → Toggle Do-Not-Disturb
SUPER SHIFT + I → Clear Notifications
Terminal & Shell Setup
Default shell: Fish

Aliases, functions, and scripts loaded via ~/.config/fish/config.fish

Plugin manager: Fisher

Key snippets:

fish
Copy code
function update
    sudo pacman -Syu
end
Theme & Aesthetics
Walker launcher supports icons & module integration

Theme scripts allow quick toggling

Full emoji support in terminals & notifications

Help & Documentation
SUPER + SLASH → Keybindings help (opens nvim)

Full Markdown docs in ~/faelight-forest-setup/

🎊 Congratulations!
You now have one of the most robust, beautiful, and reproducible Linux systems ever created.

Your Faelight Forest stands eternal. 🌲

Never worry about:

❌ Breaking your system
❌ Losing configurations
❌ Forgetting how you set things up
❌ Not being able to restore
❌ Leaking credentials to GitHub or local secrets

Always have:

✅ 36+ snapshots to roll back to
✅ GitHub backup of everything
✅ Complete, up-to-date documentation (Master Guide 2.1)
✅ One-command system restoration
✅ Zero credential leaks with Gitleaks monitoring

🌲 May your Faelight Forest grow eternal! 🌲

Version 2.1 – Legendary Edition
Updated: November 23, 2025
Built with ❤️ by Christian
Snapshots: 36+ | Commits: 15 | Status: LEGENDARY ♾️


