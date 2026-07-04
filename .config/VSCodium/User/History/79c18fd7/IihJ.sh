#!/bin/bash

hyprctl hyprpaper reload all

pkill waybar
waybar &