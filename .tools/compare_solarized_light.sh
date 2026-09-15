#!/usr/bin/env bash

# Open the fixed Solarized Light theme beside the previous palette.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
CURRENT_THEME="$REPO_ROOT/themes/Solarized_Light.conf"
LEGACY_THEME="$SCRIPT_DIR/Solarized_Light_legacy.conf"
COLOR_TABLE="$SCRIPT_DIR/color_table.sh"

if ! command -v kitty >/dev/null 2>&1; then
    echo "kitty must be installed and available on PATH." >&2
    exit 1
fi

if [[ ! -f "$CURRENT_THEME" ]]; then
    echo "Cannot find $CURRENT_THEME." >&2
    exit 1
fi

if [[ ! -f "$LEGACY_THEME" ]]; then
    echo "Cannot find $LEGACY_THEME." >&2
    exit 1
fi

if [[ ! -x "$COLOR_TABLE" ]]; then
    echo "Cannot run $COLOR_TABLE." >&2
    exit 1
fi

# Kitty automatically loads *-theme.auto.conf files from its config directory
# after every other color setting. Use an empty directory so a user's automatic
# light/dark theme cannot override either comparison palette.
ISOLATED_CONFIG_DIR="$(mktemp -d "${TMPDIR:-/tmp}/kitty-solarized-light-config.XXXXXX")"

cleanup() {
    rm -rf "$ISOLATED_CONFIG_DIR"
}
trap cleanup EXIT INT TERM

launch_kitty() {
    if [[ "$(uname -s)" == "Darwin" ]]; then
        local app_binary="/Applications/kitty.app/Contents/MacOS/kitty"
        if [[ -x "$app_binary" ]]; then
            "$app_binary" "$@"
        else
            kitty "$@"
        fi
    else
        kitty "$@"
    fi
}

COMMON_ARGS=(--single-instance=no)

KITTY_CONFIG_DIRECTORY="$ISOLATED_CONFIG_DIR" launch_kitty "${COMMON_ARGS[@]}" --config="$LEGACY_THEME" \
    --title "Solarized Light — previous" --hold bash "$COLOR_TABLE" &
legacy_pid=$!
KITTY_CONFIG_DIRECTORY="$ISOLATED_CONFIG_DIR" launch_kitty "${COMMON_ARGS[@]}" --config="$CURRENT_THEME" \
    --title "Solarized Light — fixed" --hold bash "$COLOR_TABLE" &
fixed_pid=$!

wait "$legacy_pid" "$fixed_pid"
