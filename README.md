# 🍕 pizzaClient-linux-fix

Simple script to fix Pizza Client crashes on Linux by safely faking `libc.so` for the [minecraft-launcher](https://aur.archlinux.org/packages/minecraft-launcher) package.

## Tested On
- Arch Linux (Kernel 6.14.2-arch1-1)
- Hyprland DE, zsh 5.9
- AMD Ryzen 5 3400G / GTX 1660 SUPER
- 16GB RAM
- Pizza Client Public v2.7.5

## Usage
```bash
chmod +x minecraft-pizza-fix.sh
./minecraft-pizza-fix.sh start
```
To undo:
```bash
./minecraft-pizza-fix.sh undo
```

## Notes
- No root required
- Does not modify system files
- Only affects Minecraft Launcher runtime

---
Made for Linux Pizza Client users 🐧🎮
