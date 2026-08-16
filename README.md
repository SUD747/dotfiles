# Arch Linux Dotfiles

Welcome to my Arch Linux configuration repository. This repo contains all the necessary dotfiles to reproduce my system setup, managed via a bare Git repository.

## Overview
- **Window Manager**: [Hyprland](https://hyprland.org/) (configured via Lua scripts)
- **Terminal**: [Foot](https://codeberg.org/dnkl/foot)
- **Shell**: [Fish](https://fishshell.com/) & Bash
- **Prompt**: [Starship](https://starship.rs/)
- **Editor**: [Codium](https://vscodium.com/) / [Zed](https://zed.dev/)
- **System Monitor**: [Btop](https://github.com/aristocratos/btop)
- **File Manager**: [Thunar](https://docs.xfce.org/xfce/thunar/start)
- **UI/Shell**: Caelestia (Custom shell components)

## Important Shortcut Keys

Here are some of the most essential keyboard shortcuts configured in Hyprland:

### General & Apps
- `Super + Space` or `Super + Super_L`: Open Launcher (App Menu)
- `Super + T` or `Super + Return`: Open Terminal (Foot)
- `Super + W`: Open Browser (Firefox)
- `Super + E`: Open File Explorer (Thunar)
- `Super + C`: Open Editor (Codium/Zed)
- `Super + N`: Show Sidebar
- `Super + K`: Show Panels
- `Super + L`: Lock Screen
- `Super + Shift + L`: Sleep (Suspend to Hibernate)

### Window Management
- `Super + Q`: Close Active Window
- `Super + Z` (or `Super + Mouse Drag`): Move Window
- `Super + X` (or `Super + Mouse Drag`): Resize Window
- `Super + Alt + Space`: Toggle Floating Mode
- `Super + F`: Fullscreen
- `Super + P`: Pin Window
- `Alt + Tab`: Cycle Next Window
- `Shift + Alt + Tab`: Cycle Previous Window
- `Super + Arrows`: Focus in direction
- `Super + Shift + Arrows`: Move window in direction

### Workspaces
- `Super + [0-9]`: Go to Workspace [0-9]
- `Super + Shift + [0-9]`: Move Active Window to Workspace [0-9]
- `Super + S`: Toggle Special Workspace
- `Super + M`: Toggle Music Workspace
- `Ctrl + Shift + Escape`: Toggle System Monitor Workspace

### Media & Utilities
- `Print`: Screenshot
- `Super + Shift + S`: Screenshot Freeze
- `Super + Shift + Alt + S`: Screenshot Region
- `Super + V`: Clipboard Manager
- `Super + Period`: Emoji Picker
- `Ctrl + Super + Space`: Media Play/Pause
- `Ctrl + Super + Equal / Minus`: Media Next / Prev

## Managing this repository

This repository is managed as a bare Git repository. 

To manage these files locally, you can use the `config` alias (already set up in your `.bashrc` and `.config/fish/config.fish`):
```bash
config status
config add <file>
config commit -m "Update"
config push
```
