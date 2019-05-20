import mods.jei.JEI;

// 1 Snow Block to 4 Snow Balls
recipes.addShapeless("customvanilla/snow_to_snowballs", <minecraft:snowball> * 4,
    [ <minecraft:snow> ]);

// 2 Logs to 16 Sticks
recipes.addShapeless("customvanilla/logs_to_sticks", <minecraft:stick> * 16,
    [ <ore:logWood>, <ore:logWood> ]);

// 3 Gravel to 1 Flint
recipes.addShapeless("customvanilla/gravel_to_flint", <minecraft:flint>,
    [ <minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel> ]);

// 8 Logs to Chests
recipes.addShaped("customvanilla/logs_to_chests", <minecraft:chest> * 4,
    [ [ <ore:logWood>, <ore:logWood>, <ore:logWood> ],
      [ <ore:logWood>, null,          <ore:logWood> ],
      [ <ore:logWood>, <ore:logWood>, <ore:logWood> ] ]);

// Disallow crafting these things...
recipes.removeShaped(<minecraft:glowstone>,
    [ [ <ore:dustGlowstone>, <ore:dustGlowstone> ],
      [ <ore:dustGlowstone>, <ore:dustGlowstone> ] ]);
recipes.removeShapeless(<minecraft:blaze_powder>,
    [ <minecraft:blaze_rod> ]);

// Remove nether quartz ore (no world gen anyway)
furnace.remove(<minecraft:quartz>);
JEI.removeAndHide(<minecraft:quartz_ore>);

// Remove wooden & stone tools (+ quark sillyness w/ flint)
JEI.removeAndHide(<minecraft:wooden_axe>);
JEI.removeAndHide(<minecraft:wooden_pickaxe>);
JEI.removeAndHide(<minecraft:wooden_shovel>);
JEI.removeAndHide(<minecraft:wooden_sword>);
JEI.removeAndHide(<minecraft:wooden_hoe>);
JEI.removeAndHide(<minecraft:stone_axe>);
JEI.removeAndHide(<minecraft:stone_pickaxe>);
JEI.removeAndHide(<minecraft:stone_shovel>);
JEI.removeAndHide(<minecraft:stone_sword>);
JEI.removeAndHide(<minecraft:stone_hoe>);
recipes.removeByRecipeName("quark:stone_axe");
recipes.removeByRecipeName("quark:stone_pickaxe");
recipes.removeByRecipeName("quark:stone_shovel");
recipes.removeByRecipeName("quark:stone_sword");
recipes.removeByRecipeName("quark:stone_hoe");

// Fix flint tools
// TODO hoe
// TODO pickaxe
recipes.addShaped("flintmod/spade", <flintmod:spade_flint>,
    [ [ null,            <flintmod:tool_part_flint>, <flintmod:tool_part_flint> ],
      [ null,            <ore:stickWood>,            <flintmod:tool_part_flint> ],
      [ <ore:stickWood>, null,                       null                       ] ]);
recipes.addShaped("flintmod/axe", <flintmod:axe_flint>,
    [ [ <flintmod:tool_part_flint>, <ore:itemRawFlint>, null ],
      [ <flintmod:tool_part_flint>, <ore:stickWood>,    null ],
      [ null,                       <ore:stickWood>,    null ] ]);

// Remove The One Probe items
recipes.remove(<theoneprobe:probe>);
JEI.removeAndHide(<theoneprobe:probe>);
recipes.remove(<theoneprobe:iron_helmet_probe>);
JEI.removeAndHide(<theoneprobe:iron_helmet_probe>);

// Other Quark things...
recipes.remove(<quark:iron_plate>);
JEI.removeAndHide(<quark:iron_plate>);
recipes.remove(<quark:iron_plate:1>);
JEI.removeAndHide(<quark:iron_plate:1>);
recipes.remove(<quark:iron_plate_stairs>);
JEI.removeAndHide(<quark:iron_plate_stairs>);
recipes.remove(<quark:iron_plate_slab>);
JEI.removeAndHide(<quark:iron_plate_slab>);
recipes.remove(<quark:iron_ladder>);
JEI.removeAndHide(<quark:iron_ladder>);
recipes.remove(<quark:iron_rod>);
JEI.removeAndHide(<quark:iron_rod>);