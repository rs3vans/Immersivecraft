import mods.jei.JEI;

// 1 Snow Block to 4 Snow Balls
recipes.addShapeless("immc/snow_to_snowballs", <minecraft:snowball> * 4,
    [ <minecraft:snow> ]);

// 2 Logs to 16 Sticks
recipes.addShapeless("immc/logs_to_sticks", <minecraft:stick> * 16,
    [ <ore:logWood>, <ore:logWood> ]);

// 3 Gravel to 1 Flint
recipes.addShapeless("immc/gravel_to_flint", <minecraft:flint>,
    [ <minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel> ]);

// 8 Logs to Chests
recipes.addShaped("immc/logs_to_chests", <minecraft:chest> * 4,
    [ [ <ore:logWood>, <ore:logWood>, <ore:logWood> ],
      [ <ore:logWood>, null,          <ore:logWood> ],
      [ <ore:logWood>, <ore:logWood>, <ore:logWood> ] ]);

// Clay balls from clay
recipes.addShapeless("immc/clay_balls_from_clay", <minecraft:clay_ball> * 4,
    [ <minecraft:clay> ]);

// Remove nether quartz ore (no world gen anyway)
furnace.remove(<minecraft:quartz>);
JEI.removeAndHide(<minecraft:quartz_ore>);

// Vanilla tools/armor
JEI.removeAndHide(<minecraft:wooden_axe>);
JEI.removeAndHide(<minecraft:wooden_pickaxe>);
JEI.removeAndHide(<minecraft:wooden_shovel>);
JEI.removeAndHide(<minecraft:wooden_sword>);
JEI.removeAndHide(<minecraft:wooden_hoe>);

JEI.removeAndHide(<minecraft:stone_axe>);
JEI.removeAndHide(<minecraft:stone_pickaxe>);
JEI.removeAndHide(<minecraft:stone_shovel>);
JEI.removeAndHide(<minecraft:stone_sword>);

JEI.removeAndHide(<minecraft:golden_axe>);
JEI.removeAndHide(<minecraft:golden_pickaxe>);
JEI.removeAndHide(<minecraft:golden_shovel>);
JEI.removeAndHide(<minecraft:golden_sword>);
JEI.removeAndHide(<minecraft:golden_hoe>);
JEI.removeAndHide(<minecraft:golden_helmet>);
JEI.removeAndHide(<minecraft:golden_chestplate>);
JEI.removeAndHide(<minecraft:golden_leggings>);
JEI.removeAndHide(<minecraft:golden_boots>);

JEI.removeAndHide(<minecraft:chainmail_helmet>);
JEI.removeAndHide(<minecraft:chainmail_chestplate>);
JEI.removeAndHide(<minecraft:chainmail_leggings>);
JEI.removeAndHide(<minecraft:chainmail_boots>);

JEI.removeAndHide(<minecraft:iron_axe>);
JEI.removeAndHide(<minecraft:iron_pickaxe>);
JEI.removeAndHide(<minecraft:iron_shovel>);
JEI.removeAndHide(<minecraft:iron_sword>);
recipes.remove(<minecraft:iron_hoe>);
JEI.removeAndHide(<minecraft:iron_chestplate>);
JEI.removeAndHide(<minecraft:iron_leggings>);
JEI.removeAndHide(<minecraft:iron_helmet>);
JEI.removeAndHide(<minecraft:iron_boots>);

JEI.removeAndHide(<minecraft:diamond_axe>);
JEI.removeAndHide(<minecraft:diamond_pickaxe>);
JEI.removeAndHide(<minecraft:diamond_shovel>);
JEI.removeAndHide(<minecraft:diamond_sword>);
JEI.removeAndHide(<minecraft:diamond_hoe>);
JEI.removeAndHide(<minecraft:diamond_chestplate>);
JEI.removeAndHide(<minecraft:diamond_leggings>);
JEI.removeAndHide(<minecraft:diamond_helmet>);
JEI.removeAndHide(<minecraft:diamond_boots>);

JEI.removeAndHide(<minecraft:leather_chestplate>);
JEI.removeAndHide(<minecraft:leather_leggings>);
JEI.removeAndHide(<minecraft:leather_helmet>);
JEI.removeAndHide(<minecraft:leather_boots>);

JEI.removeAndHide(<minecraft:bow>);

recipes.remove(<minecraft:stone_hoe>);
recipes.remove(<minecraft:shield>);
recipes.remove(<minecraft:shears>);