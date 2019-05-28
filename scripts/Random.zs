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

// Disallow crafting these things...
recipes.removeShaped(<minecraft:glowstone>,
    [ [ <ore:dustGlowstone>, <ore:dustGlowstone> ],
      [ <ore:dustGlowstone>, <ore:dustGlowstone> ] ]);
recipes.removeShapeless(<minecraft:blaze_powder>,
    [ <minecraft:blaze_rod> ]);

// Remove nether quartz ore (no world gen anyway)
furnace.remove(<minecraft:quartz>);
JEI.removeAndHide(<minecraft:quartz_ore>);

// Nano core
<quark:diamond_heart>.displayName = "Nanomaterial Core";
<ore:casingDiamondAlloy>.firstItem.displayName = "Nanomaterial Core Casing";
recipes.addShaped("immc/nano_core_casing", <ore:casingDiamondAlloy>.firstItem,
        [ [ <ore:plateDenseDiamondAlloy>, <ore:ingotUranium>,    <ore:plateDenseDiamondAlloy> ],
          [ <ore:ingotUranium>,           <minecraft:ender_eye>, <ore:ingotUranium>           ],
          [ <ore:plateDenseDiamondAlloy>, <ore:ingotUranium>,    <ore:plateDenseDiamondAlloy> ] ]);
recipes.addShaped("immc/nano_core", <quark:diamond_heart>,
        [ [ <ore:crystalChorusSteel>, <ore:casingDiamondAlloy>, <ore:crystalChorusSteel> ],
          [ <ore:casingDiamondAlloy>, <ore:netherStar>,         <ore:casingDiamondAlloy> ],
          [ <ore:crystalChorusSteel>, <ore:casingDiamondAlloy>, <ore:crystalChorusSteel> ] ]);

// Remove vanilla tools (+ quark sillyness w/ flint)
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
JEI.removeAndHide(<minecraft:iron_axe>);
JEI.removeAndHide(<minecraft:iron_pickaxe>);
JEI.removeAndHide(<minecraft:iron_shovel>);
JEI.removeAndHide(<minecraft:iron_sword>);
JEI.removeAndHide(<minecraft:iron_hoe>);
JEI.removeAndHide(<minecraft:golden_axe>);
JEI.removeAndHide(<minecraft:golden_pickaxe>);
JEI.removeAndHide(<minecraft:golden_shovel>);
JEI.removeAndHide(<minecraft:golden_sword>);
JEI.removeAndHide(<minecraft:golden_hoe>);
JEI.removeAndHide(<minecraft:diamond_axe>);
JEI.removeAndHide(<minecraft:diamond_pickaxe>);
JEI.removeAndHide(<minecraft:diamond_shovel>);
JEI.removeAndHide(<minecraft:diamond_sword>);
JEI.removeAndHide(<minecraft:diamond_hoe>);
JEI.removeAndHide(<minecraft:bow>);
recipes.removeByRecipeName("quark:stone_axe");
recipes.removeByRecipeName("quark:stone_pickaxe");
recipes.removeByRecipeName("quark:stone_shovel");
recipes.removeByRecipeName("quark:stone_sword");
recipes.removeByRecipeName("quark:stone_hoe");

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