-- Pull in the wezterm API
local wezterm = require 'wezterm'

local M = {}

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return 'Dark'
end

function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'Atelier Plateau (base16)'
    -- return 'Rosé Pine (base16)'
  else
    -- return 'Rosé Pine Dawn (base16)'
    return 'Atelier Plateau Light (base16)'
  end
end

-- For example, changing the color scheme:

config.color_scheme = scheme_for_appearance(get_appearance())

-- config.window_background_opacity = 0.97

config.font = wezterm.font 'BerkeleyMono Nerd Font'
config.font_size = 16.0

-- and finally, return the configuration to wezterm
return config
