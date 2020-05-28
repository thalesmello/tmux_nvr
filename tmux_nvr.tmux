#!/usr/bin/env bash
# vim: set filetype=bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/scripts/common.sh"

set_pane_split_bindings() {
  tmux bind-key "v" run "$CURRENT_DIR/scripts/split.sh -h"
  tmux bind-key "%" run "$CURRENT_DIR/scripts/split.sh -h"
  tmux bind-key '"' run "$CURRENT_DIR/scripts/split.sh -v"
}

set_new_window_binding() {
  tmux bind c run "$CURRENT_DIR/scripts/new_window.sh"
}

main() {
  set_pane_split_bindings
  set_new_window_binding
}

main
