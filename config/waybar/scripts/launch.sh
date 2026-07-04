#!/bin/bash

pkill hyprpaper
hyprpaper &

pkill waybar
waybar &

kitty @ load-config