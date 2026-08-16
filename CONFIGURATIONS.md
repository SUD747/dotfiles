# Dotfiles Configurations Guide

This document provides a breakdown of the various configuration files and directories stored in this repository, what they do, and how to edit them.

## 1. Window Manager (`~/.config/hypr/`)
**Purpose:** Configures Hyprland, the core Wayland compositor (window manager) used in this setup.
- **`variables.lua`**: This is the central configuration file for Hyprland variables. It defines apps (terminal, browser), appearance (gaps, blur, shadows, border colors), and all **keybindings**.
- **`hyprland/keybinds.lua`**: Contains the logic mapping the shortcut keys defined in `variables.lua` to actual dispatcher commands.
- **`hyprland/rules.lua`**: Defines window rules (e.g., forcing specific apps to float or open on specific workspaces).
- **`hyprland/execs.lua`**: Defines commands that run automatically when Hyprland starts up.
- **How to configure:** Simply edit `variables.lua` or the respective files in `hyprland/`. Changes in Lua configs are dynamically loaded by Hyprland or by a reload command depending on the Lua parser used.

## 2. Shell & Prompt
### Fish Shell (`~/.config/fish/`)
**Purpose:** The primary interactive shell.
- **`config.fish`**: The main configuration file for Fish. Contains aliases, environment variables, and startup scripts.
- **How to configure:** Add your aliases or paths directly to `config.fish`.

### Bash (`~/.bashrc`)
**Purpose:** The default fallback shell and POSIX-compliant scripting environment.
- **How to configure:** Contains basic exports and aliases. Edit directly if you use Bash.

### Starship Prompt (`~/.config/starship.toml`)
**Purpose:** A cross-shell prompt that looks beautiful and provides system/git context.
- **How to configure:** Edit this file to change the appearance of your terminal prompt (colors, modules shown, etc.). Refer to [Starship Docs](https://starship.rs/config/) for options.

## 3. Terminal Emulator (`~/.config/foot/`)
**Purpose:** Foot is a fast, lightweight, and minimalistic Wayland terminal emulator.
- **`foot.ini`**: Controls the appearance, font (e.g., size, family), colors, and scrollback of the terminal.
- **How to configure:** Edit this file to change fonts or themes. You will need to restart Foot for changes to apply.

## 4. System Monitor (`~/.config/btop/`)
**Purpose:** A beautiful resource monitor that shows usage and stats for processor, memory, disks, network, and processes.
- **`btop.conf`**: Configures layout, update times, and color themes.
- **`themes/caelestia.theme`**: Custom theme file matching the system's aesthetic.
- **How to configure:** Open `btop` in the terminal, press `Esc` to access the options menu for an easy graphical configuration, or edit `btop.conf` manually.

## 5. UI Elements
### Fuzzel (`~/.config/fuzzel/`)
**Purpose:** An application launcher (used for clipboard history or emoji picker).
- **How to configure:** Edit `fuzzel.ini` to change dimensions, colors, and fonts.

### GTK Themes (`~/.config/gtk-3.0/` and `~/.config/gtk-4.0/`)
**Purpose:** Configures the appearance of GTK-based applications (like Thunar).
- **How to configure:** Edit the `.css` files inside these directories to tweak application window styling manually, though this is usually handled by theme engines.

## 6. Code Editors (`~/.config/zed/`)
**Purpose:** Zed is a high-performance, multiplayer code editor.
- **`settings.json`**: Core editor settings (font size, vim mode, UI scaling).
- **`keymap.json`**: Custom keybindings.
- **How to configure:** Open Zed and use `Command/Ctrl + ,` to open the settings JSON.

## 7. Audio Visualizer (`~/.config/cava/`)
**Purpose:** A console-based audio visualizer.
- **`config`**: Controls visualizer settings, gradients, and smoothing.
- **How to configure:** Edit the file and restart `cava` in the terminal to see changes.

## General Tips for Editing Configs
- **Backup Before Editing:** You can always use the Git repository to revert changes if you break something! Run `config diff` to see what changed, and `config checkout -- <file>` to revert.
- **Applying Changes:** Many Wayland native apps (like Foot or Fuzzel) apply changes on the next launch. Hyprland typically auto-reloads when you save its configuration files.
