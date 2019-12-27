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

// Redstone
recipes.remove(<minecraft:redstone>);
recipes.remove(<minecraft:redstone_block>);
furnace.remove(<minecraft:redstone>);

// Quartz
furnace.remove(<minecraft:quartz>);
JEI.removeAndHide(<minecraft:quartz_ore>);

<minecraft:quartz>.displayName = "Quartz";

// Magma
furnace.setFuel(<minecraft:magma>, 5000);
recipes.remove(<minecraft:magma>);

// Glowstone
recipes.remove(<minecraft:glowstone>);

// Blaze
recipes.remove(<minecraft:blaze_powder>);

// Lapis
recipes.remove(<minecraft:dye:4>);
recipes.remove(<minecraft:lapis_block>);
furnace.remove(<minecraft:lapis_ore>);

// Diamond
recipes.remove(<minecraft:diamond>);
recipes.remove(<minecraft:diamond_block>);
furnace.remove(<minecraft:diamond>);

// Emerald
recipes.remove(<minecraft:emerald>);
recipes.remove(<minecraft:emerald_block>);
furnace.remove(<minecraft:emerald>);

// Ender
recipes.remove(<minecraft:ender_eye>);

// Brewing stand
JEI.removeAndHide(<minecraft:brewing_stand>);

// Pistons
recipes.removeByRecipeName("minecraft:piston");
recipes.addShaped("immc/piston", <minecraft:piston>,
        [ [ <ore:plankWood>,   <ore:plankWood>,    <ore:plankWood>   ],
          [ <ore:cobblestone>, <ore:stickIron>,    <ore:cobblestone> ],
          [ <ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone> ] ]);
          
recipes.removeByRecipeName("minecraft:sticky_piston");
recipes.addShaped("immc/sticky_piston", <minecraft:piston>,
        [ [ <ore:plankWood>,   <ore:slimeball>,    <ore:plankWood>   ],
          [ <ore:cobblestone>, <ore:stickSteel>,    <ore:cobblestone> ],
          [ <ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone> ] ]);

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
JEI.removeAndHide(<minecraft:stone_hoe>);

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

JEI.removeAndHide(<minecraft:diamond_axe>);
JEI.removeAndHide(<minecraft:diamond_pickaxe>);
JEI.removeAndHide(<minecraft:diamond_shovel>);
JEI.removeAndHide(<minecraft:diamond_sword>);
JEI.removeAndHide(<minecraft:diamond_hoe>);
JEI.removeAndHide(<minecraft:diamond_chestplate>);
JEI.removeAndHide(<minecraft:diamond_leggings>);
JEI.removeAndHide(<minecraft:diamond_helmet>);
JEI.removeAndHide(<minecraft:diamond_boots>);

recipes.remove(<minecraft:shears>);
recipes.addShaped("immc/shears", <minecraft:shears>,
        [[<ore:ingotIron>, null],
         [<ore:itemTieStrong>, <ore:ingotIron>]]);

recipes.remove(<minecraft:shield>);
recipes.addShaped("immc/shield", <minecraft:shield>,
        [[<ore:plateIron>, <ore:plankWood>, <ore:plateIron>],
         [<ore:plateIron>, <ore:plankWood>, <ore:plateIron>],
         [<ore:plateIron>, <ore:plankWood>, <ore:plateIron>]]);

recipes.remove(<minecraft:leather_chestplate>);
recipes.remove(<minecraft:leather_leggings>);
recipes.remove(<minecraft:leather_helmet>);
recipes.remove(<minecraft:leather_boots>);

val anyLeather = <ore:itemAnyLeather>;
recipes.addShaped("immc/leather_chestplate", <minecraft:leather_chestplate>,
        [[anyLeather, null, anyLeather],
         [anyLeather, anyLeather, anyLeather],
         [anyLeather, anyLeather, anyLeather]]);
recipes.addShaped("immc/leather_leggings", <minecraft:leather_leggings>,
        [[anyLeather, anyLeather, anyLeather],
         [anyLeather, null, anyLeather],
         [anyLeather, null, anyLeather]]);
recipes.addShaped("immc/leather_helmet", <minecraft:leather_helmet>,
        [[anyLeather, anyLeather, anyLeather],
         [anyLeather, null, anyLeather]]);
recipes.addShaped("immc/leather_boots", <minecraft:leather_boots>,
        [[anyLeather, null, anyLeather],
         [anyLeather, null, anyLeather]]);

// Enchanting & Stuff
JEI.removeAndHide(<minecraft:enchanting_table>);

// The End
recipes.remove(<minecraft:end_rod>);

// Ender Chest
recipes.removeByRecipeName("minecraft:ender_chest");
recipes.addShaped("immc/ender_chest", <minecraft:ender_chest>,
    [[<ore:blockObsidian>, <ore:capacitorEnder>, <ore:blockObsidian>],
     [<ore:capacitorEnder>, <ore:endereye>, <ore:capacitorEnder>],
     [<ore:blockObsidian>, <ore:capacitorEnder>, <ore:blockObsidian>]]);

// Logs
recipes.removeByRecipeName("minecraft:oak_planks");
recipes.removeByRecipeName("minecraft:spruce_planks");
recipes.removeByRecipeName("minecraft:birch_planks");
recipes.removeByRecipeName("minecraft:jungle_planks");
recipes.removeByRecipeName("minecraft:acacia_planks");
recipes.removeByRecipeName("minecraft:dark_oak_planks");
recipes.removeByRecipeName("traverse:fir_planks");

// Plants & Seeds
recipes.removeByRecipeName("minecraft:pumpkin_seeds");
recipes.removeByRecipeName("minecraft:melon_seeds");