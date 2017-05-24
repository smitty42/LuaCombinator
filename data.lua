data:extend({
  	{
		type = "item",
		name = "lua-combinator",
		icon = "__LuaCombinator__/lua-combinator-icon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "circuit-network",
		order = "b[combinators]-l[lua-combinator]",
		place_result = "lua-combinator",
		stack_size = 50
	},
	
	{
		type = "recipe",
		name = "lua-combinator",
		enabled = "false",
		ingredients =
		{
			{"constant-combinator", 1},
			{"small-lamp", 1},
			{"advanced-circuit", 5}
		},
		result = "lua-combinator"
	},
	
	{
    type = "technology",
    name = "lua-combinator",
    icon = "__LuaCombinator__/lua-combinator-tech.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lua-combinator"
      }
    },
    prerequisites = {"circuit-network", "advanced-electronics"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 15
    },
    order = "a-d-d-z",
  },

	{
		type = "lamp",
		name = "lua-combinator",
		icon = "__LuaCombinator__/lua-combinator-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "lua-combinator"},
		max_health = 55,
		corpse = "small-remnants",
		collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		energy_source =
		{
		  type = "electric",
		  usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "1KW",
		light = {intensity = 0, size = 0},
		picture_off =
		{
		  filename = "__LuaCombinator__/lua-combinator-off.png",
		  priority = "high",
		  frame_count = 1,
		  axially_symmetrical = false,
		  direction_count = 1,
		  width = 61,
		  height = 50,
		  shift = {0.078125, 0.15625},
		},
		picture_on =
		{
		  filename = "__LuaCombinator__/lua-combinator-on.png",
		  priority = "high",
		  frame_count = 1,
		  axially_symmetrical = false,
		  direction_count = 1,
		  width = 61,
		  height = 50,
		  shift = {0.078125, 0.15625},
		},
		
	
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.828125, 0.328125},
        green = {0.828125, -0.078125},
      },
      wire =
      {
        red = {0.515625, -0.078125},
        green = {0.515625, -0.484375},
      }
    },

		circuit_wire_max_distance = 7.5
	},

	{
    type = "constant-combinator",
    name = "constant-combinator-trans_lua",
    icon = "__base__/graphics/icons/constant-combinator.png",
    flags = {"placeable-neutral"},
    max_health = 50,

    corpse = "small-remnants",

    collision_box = {{0.0, 0.0}, {0.0, 0}},
	  collision_mask = { "ghost-layer"},

    collision_box = {{0.0, 0.0}, {0.0, 0}},

    item_slot_count = 40,

    sprites =
    {
      north = {
        filename = "__LuaCombinator__/trans.png",
        x = 0,
        y = 0,
        width = 61,
  	    height = 50,
        shift = {0.078125, 0.15625},
      },
      south = {
        filename = "__LuaCombinator__/trans.png",
        x = 0,
        y = 0,
        width = 61,
        height = 50,
        shift = {0.078125, 0.15625},
      },
      east = {
        filename = "__LuaCombinator__/trans.png",
        x = 0,
        y = 0,
        width = 61,
        height = 50,
        shift = {0.078125, 0.15625},
      },
      west = {
        filename = "__LuaCombinator__/trans.png",
        x = 0,
        y = 0,
        width = 61,
        height = 50,
        shift = {0.078125, 0.15625},
      }
    },

    activity_led_sprites =
    {
      north =
      {
        filename = "__base__/graphics/entity/combinator/activity-leds/combinator-led-constant-north.png",
        width = 11,
        height = 10,
        frame_count = 1,
        shift = {0.296875, -0.40625},
      },
      east =
      {
        filename = "__base__/graphics/entity/combinator/activity-leds/combinator-led-constant-east.png",
        width = 14,
        height = 12,
        frame_count = 1,
        shift = {0.25, -0.03125},
      },
      south =
      {
        filename = "__base__/graphics/entity/combinator/activity-leds/combinator-led-constant-south.png",
        width = 11,
        height = 11,
        frame_count = 1,
        shift = {-0.296875, -0.078125},
      },
      west =
      {
        filename = "__base__/graphics/entity/combinator/activity-leds/combinator-led-constant-west.png",
        width = 12,
        height = 12,
        frame_count = 1,
        shift = {-0.21875, -0.46875},
      }
    },

    activity_led_light =
    {
      intensity = 0,
      size = 1,
    },
    
    activity_led_light_offsets =
    {
      {0.296875, -0.40625},
      {0.25, -0.03125},
      {-0.296875, -0.078125},
      {-0.21875, -0.46875}
    },

    circuit_wire_connection_points =
    {
      {
        shadow =
        {
          red = {0, 0.1},
          green = {0, -0.2},
        },
        wire =
        {
          red = {0, -0.1},
          green = {0, -0.2},
        }
      },
      {
        shadow =
        {
          red = {0, 0.1},
          green = {0, -0.2},
        },
        wire =
        {
          red = {0, -0.1},
          green = {0, -0.2},
        }
      },
      {
        shadow =
        {
          red = {0, 0.1},
          green = {0, -0.2},
        },
        wire =
        {
          red = {0, -0.1},
          green = {0, -0.2},
        }
      },
      {
        shadow =
        {
          red = {0, 0.1},
          green = {0, -0.2},
        },
        wire =
        {
          red = {0, -0.1},
          green = {0, -0.2},
        }
      }
    },
    circuit_wire_max_distance = 3,
	  order="z"
  },
  
  {
    type = "flying-text",
    name = "flying-text-banner_lua",
    flags = {"not-on-map"},
    time_to_live = 30,
    speed = 0.0
  },
    
})

data.raw["gui-style"].default["wide_textbox_style_lua"] =
    {
      type = "textfield_style",
      parent = "textfield_style",      
	  minimal_width = 300,
      maximal_width = 300,  
	}