--Need to redefine this old-way because  sometimes cannot be copied right parameter
----------------
--DEFINE ITEMS--
----------------
data:extend({
	{
		type = "item",
		name = "armored-wagon-chaingun-mk1",
		icon = "__Armored-train__/graphics/icons/armored-wagon-chaingun-mk1-icon.png",
		icon_size = 32,
		flags = {},
		subgroup = "transport",
		order = "a[train-system]-l[armored_platform_turret3]",
		place_result = "armored-wagon-chaingun-mk1",
		stack_size = 5
	},
	
------------------
--DEFINE RECIPES--
------------------
	{
		type = "recipe",
		name = "armored-wagon-chaingun-mk1",
		enabled = false,
		ingredients =
		{
			{"armored-wagon-mk1", 1},
			{"repair-pack", 1},						
			{"platform-minigun-turret-mk1", 1},
		},
		result = "armored-wagon-chaingun-mk1"
	}
})



------------------
--DEFINE ENTITIES--
------------------
--Deep copy base data and create new one with custom parametres
local armored_wagon_chaingun_mk1 = util.table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
armored_wagon_chaingun_mk1.name = "armored-wagon-chaingun-mk1"
armored_wagon_chaingun_mk1.icon = "__Armored-train__/graphics/icons/armored-wagon-mk1-icon.png"
armored_wagon_chaingun_mk1.minable = 
	{
		mining_time = 1, 
		result = "armored-wagon-mk1"
	}
	
	
--COPY FROM BASE HP data from tank \/
-------------------------------------
local base_tank = data.raw.car["tank"];
--use flags (not flamable)
armored_wagon_chaingun_mk1.flags = base_tank.flags;
--copy tank resistancec (maybe add acid resistane)
armored_wagon_chaingun_mk1.resistances = base_tank.resistances;
-------------------------------------
--COPY FROM BASE HP data from tank /\


--ACTUAL PARAMETRES \/
armored_wagon_chaingun_mk1.max_health = 1200
armored_wagon_chaingun_mk1.weight = 2400
armored_wagon_chaingun_mk1.energy_per_hit_point = 5
armored_wagon_chaingun_mk1.inventory_size = 20
--ACTUAL PARAMETRES /\


--no doors
armored_wagon_chaingun_mk1.horizontal_doors = nil
armored_wagon_chaingun_mk1.vertical_doors = nil
--pictures
armored_wagon_chaingun_mk1.pictures =
	{
	layers =
		{
			{
				priority = "very-low",
				width = 256,
				height = 256,
				back_equals_front = false,    --means to not rotate mirroring
				direction_count = 128, 		--means to add aditional frames
				allow_low_quality_rotation = true,
				line_length = 32,
				lines_per_file = 1,
				shift = {0.4, -1.25},
				filenames =
				{
				"__Armored-train__/graphics/entity/armored-wagon-mk1/armored-wagon-mk1-01.png",
				"__Armored-train__/graphics/entity/armored-wagon-mk1/armored-wagon-mk1-02.png",
				"__Armored-train__/graphics/entity/armored-wagon-mk1/armored-wagon-mk1-03.png",
				"__Armored-train__/graphics/entity/armored-wagon-mk1/armored-wagon-mk1-04.png"
				},
			},
			--DECORATIVES
			--SHADOW
			{
				priority = "very-low",
				width = 77,
				height = 54,
				back_equals_front = false,    --means to not rotate mirroring
				direction_count = 128, 		--means to add aditional frames
				allow_low_quality_rotation = true,
				line_length = 32,
				lines_per_file = 1,
				shift = {0.4, -1.9},
				scale = 1	,
				filenames =
				{
				"__Armored-train__/graphics/entity/chaingun-turret-128/chaingun-turret-128-01-shadow.png",
				"__Armored-train__/graphics/entity/chaingun-turret-128/chaingun-turret-128-02-shadow.png",
				"__Armored-train__/graphics/entity/chaingun-turret-128/chaingun-turret-128-03-shadow.png",
				"__Armored-train__/graphics/entity/chaingun-turret-128/chaingun-turret-128-04-shadow.png",
				}
			},
			--MAIN SPRITE
			{
				priority = "very-low",
				width = 72,
				height = 57,
				back_equals_front = false,    --means to not rotate mirroring
				direction_count = 128, 		--means to add aditional frames
				allow_low_quality_rotation = true,
				line_length = 32,
				lines_per_file = 1,
				shift = {0.0, -2.2},
				scale = 1	,
				filenames =
				{
				"__Armored-train__/graphics/entity/chaingun-turret-128/chaingun-turret-128-01.png",
				"__Armored-train__/graphics/entity/chaingun-turret-128/chaingun-turret-128-02.png",
				"__Armored-train__/graphics/entity/chaingun-turret-128/chaingun-turret-128-03.png",
				"__Armored-train__/graphics/entity/chaingun-turret-128/chaingun-turret-128-04.png",
				}
			},
			--MASK
			{
				priority = "very-low",
				width = 72,
				height = 57,
				back_equals_front = false,    --means to not rotate mirroring
				direction_count = 128, 		--means to add aditional frames
				allow_low_quality_rotation = true,
				line_length = 32,
				lines_per_file = 1,
				shift = {0.0, -2.2},
				scale = 1	,
				filenames =
				{
				"__Armored-train__/graphics/entity/chaingun-turret-128/chaingun-turret-128-01-mask.png",
				"__Armored-train__/graphics/entity/chaingun-turret-128/chaingun-turret-128-02-mask.png",
				"__Armored-train__/graphics/entity/chaingun-turret-128/chaingun-turret-128-03-mask.png",
				"__Armored-train__/graphics/entity/chaingun-turret-128/chaingun-turret-128-04-mask.png",
				}
			}
			
		},
	}



--FINAL RESULTS and write
data:extend({armored_wagon_chaingun_mk1})