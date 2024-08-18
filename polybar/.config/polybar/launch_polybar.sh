if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --config=$HOME/.config/polybar/config.ini benni --reload &
  done
else
  polybar --reload --config=$HOME/.config/polybar/config.ini benni  &
fi
