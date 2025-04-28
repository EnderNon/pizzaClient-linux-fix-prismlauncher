#!/bin/bash
# This script creates a fake libc.so environment for Minecraft Launcher
# by credit200 on discord

FAKE_LIBC_DIR="$HOME/minecraft-fake-libc"

create_fake_libc() {
    echo "Creating fake libc.so environment..."
    mkdir -p "$FAKE_LIBC_DIR"
    ln -sf /lib/libc.so.6 "$FAKE_LIBC_DIR/libc.so"
    echo "Fake libc.so created at $FAKE_LIBC_DIR"
}

launch_minecraft() {
    echo "Launching Minecraft Launcher with fake libc.so..."
    LD_LIBRARY_PATH="$FAKE_LIBC_DIR" minecraft-launcher
}

undo_fake_libc() {
    echo "Undoing fake libc.so setup..."
    if [ -d "$FAKE_LIBC_DIR" ]; then
        rm -rf "$FAKE_LIBC_DIR"
        echo "Fake libc.so setup removed."
    else
        echo "No fake libc.so setup found."
    fi
}

show_help() {
    echo "Usage: $0 [start|undo]"
    echo "  start - Create fake libc.so and launch Minecraft"
    echo "  undo  - Remove fake libc.so setup"
}

case "$1" in
    start)
        create_fake_libc
        launch_minecraft
        ;;
    undo)
        undo_fake_libc
        ;;
    *)
        show_help
        ;;
esac
