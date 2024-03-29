local beautiful = require("beautiful")
local awful = require("awful")
require("keybinds")
require("mouse")

-- Rules
-- Rules to apply to new clients (through the "manage" signal).
awful.rules.rules = {
	-- All clients will match this rule.
	{
		rule = { },
		properties = {
			border_width = beautiful.border_width,
			border_color = beautiful.border_normal,
			focus = awful.client.focus.filter,
			raise = true,
			keys = clientkeys,
			buttons = clientbuttons,
			screen = awful.screen.preferred,
			placement = awful.placement.centered + awful.placement.no_overlap + awful.placement.no_offscreen,
			size_hints_honor = false
		}
	},
	-- Screen 1
	{ 
		rule = {
			class = "LibreWolf"
		},
		properties = {
			screen = 1,
			tag = "1",
			switchtotag = true
		}
	},
	{ 
		rule = {
			class = "Blender"
		},
		properties = {
			screen = 1,
			tag = "2"
		}
	},
	{ 
		rule = {
			class = "steam"
		},
		properties = {
			screen = 1,
			tag = "2"
		}
	},
	{ 
		rule = {
			class = "heroic"
		},
		properties = {
			screen = 1,
			tag = "2"
		}
	},
	{ 
		rule = {
			class = "retroarch"
		},
		properties = {
			screen = 1,
			tag = "2"
		}
	},
	{ 
		rule = {
			class = "RPCS3"
		},
		properties = {
			screen = 1,
			tag = "2"
		}
	},
	{ 
		rule = {
			class = "PrismLauncher"
		},
		properties = {
			screen = 1,
			tag = "2"
		}
	},
	{ 
		rule = {
			name = "Bitwig Studio"
		},
		properties = {
			screen = 1,
			tag = "2"
		}
	},
	{ 
		rule = {
			class = "Spotify"
		},
		properties = {
			screen = 1,
			tag = "3"
		}
	},
	-- Screen 2
	{ 
		rule = {
			class = "vesktop"
		},
		properties = {
			screen = 2,
			tag = "1"
		}
	},
	{ 
		rule = {
			class = "obs"
		},
		properties = {
			screen = 2,
			tag = "3"
		}
	},
	-- Floating clients.
	{
		rule_any = {
			instance = {
				"pinentry"
			},
			class = {
				"Blueman-manager",
				".blueman-manager-wrapped",
				"Nsxiv",
				"scratchpad",
				"btm",
			},
			-- Note that the name property shown in xprop might be set slightly after creation of the client and the name shown there might not match defined rules here.
			name = {
				"Event Tester", -- xev.
				"Welcome", -- bitwig
				"Friends List", -- steam friends list
				"Steam Settings", -- steam settings
				"Blender Preferences", -- blender settings
			},
			role = {
				"pop-up", -- e.g. Google Chrome's (detached) Developer Tools.
			}
		},
		properties = {
			floating = true,
			placement = awful.placement.centered
		}
	},
	-- Add titlebars to normal clients and dialogs
	{
		rule_any = {
			type = {
				"normal",
				"dialog"
			}
		},
		properties = {
			titlebars_enabled = false
		}
	}
}
	-- Set Firefox to always map on the tag named "2" on screen 1.
	-- { rule = { class = "Firefox" },
	--  	properties = { screen = 1, tag = "2" } },
