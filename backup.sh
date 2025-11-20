#!/usr/bin/env bash
# ═══════════════════════════════════════════════════════════
# 🌲 Faelight Forest Dotfiles Backup Script
# Syncs current configs back to dotfiles repo
# ═══════════════════════════════════════════════════════════

set -e

echo "╔══════════════════════════════════════════════════════════╗"
echo "║   🌲 FAELIGHT FOREST DOTFILES BACKUP                   ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo ""

DOTFILES_DIR="$HOME/dotfiles"

# Check if dotfiles directory exists
if [ ! -d "$DOTFILES_DIR" ]; then
    echo "❌ Error: Dotfiles directory not found at $DOTFILES_DIR"
    exit 1
fi

cd "$DOTFILES_DIR"

echo "📦 Syncing configs to dotfiles..."
echo ""

# Fish Shell
echo "🐠 Backing up Fish Shell..."
cp ~/.config/fish/config.fish fish/
cp -r ~/.config/fish/functions fish/ 2>/dev/null || true

# Hyprland
echo "🖥️  Backing up Hyprland..."
cp ~/.config/hypr/*.conf hypr/ 2>/dev/null || true

# Waybar
echo "📊 Backing up Waybar..."
cp ~/.config/waybar/config.jsonc waybar/
cp ~/.config/waybar/style.css waybar/

# Kitty
echo "🐱 Backing up Kitty..."
cp ~/.config/kitty/kitty.conf kitty/

# LazyVim
echo "📝 Backing up LazyVim..."
cp -r ~/.config/nvim/lua nvim/ 2>/dev/null || true

# Scripts
echo "🔧 Backing up scripts..."
cp ~/.local/bin/sys-cleanup scripts/
cp ~/.local/bin/quick-note scripts/

# Documentation
echo "📚 Backing up documentation..."
cp ~/faelight-forest-docs/COMPLETE_GUIDE.md docs/

echo ""
echo "✅ Backup complete!"
echo ""

# Show git status
if [ -d ".git" ]; then
    echo "📊 Git status:"
    git status --short
    echo ""
    
    # Ask to commit
    read -p "💾 Commit changes? [y/N]: " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        read -p "📝 Commit message: " commit_msg
        git add -A
        git commit -m "${commit_msg:-Update dotfiles $(date +%Y-%m-%d)}"
        
        read -p "🚀 Push to GitHub? [y/N]: " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            git push
            echo "✅ Pushed to GitHub!"
        fi
    fi
else
    echo "💡 Initialize git with: cd ~/dotfiles && git init"
fi

echo ""
echo "🌲 Dotfiles backup complete!"
echo ""
