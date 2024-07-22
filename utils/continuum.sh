show_continuum() {
  local index icon color text module command
  index=$1
  icon="$(get_tmux_option "@catppuccin_continuum_icon" " ")"
  color="$(get_tmux_option "@catppuccin_coninuum_color" "$thm_yellow")"
  text="$(get_tmux_option "@continuum-current-status")"
  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
