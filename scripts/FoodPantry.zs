#modloaded vanillafoodpantry

import mods.jei.JEI;

JEI.removeAndHide(<vanillafoodpantry:iron_stomach>);

// Lava sand
recipes.remove(<vanillafoodpantry:lava_sand_portion>);
recipes.remove(<vanillafoodpantry:lava_sand_pack>);
recipes.remove(<vanillafoodpantry:lava_sand_block>);
JEI.removeAndHide(<vanillafoodpantry:lava_sand_pack>);
recipes.addShaped("immc/lava_sand", <vanillafoodpantry:lava_sand_block> * 8,
        [ [<ore:sand>, <ore:sand>, <ore:sand>],
          [<ore:sand>, <ore:itemLavaBucket>.transformReplace(<ore:itemEmptyBucket>.firstItem), <ore:sand>],
          [<ore:sand>, <ore:sand>, <ore:sand>] ]);
recipes.addShapeless("immc/lava_sand_portion", <vanillafoodpantry:lava_sand_portion> * 9,
        [ <vanillafoodpantry:lava_sand_block>, <vanillafoodpantry:bit_pipette>.reuse() ]);

// Heat bits
recipes.removeByRecipeName("vanillafoodpantry:bit_heat_from_lava_sand");
//recipes.removeByRecipeName("vanillafoodpantry:bit_heat_from_coal");
recipes.removeByRecipeName("vanillafoodpantry:bit_heat_from_blazerod");
recipes.addShapeless("immc/bitoheat_blaze", <vanillafoodpantry:heat_portion> * 16,
        [ <ore:dustBlaze>, <vanillafoodpantry:bit_pipette>.reuse() ]);

// Salt and other ores
JEI.removeAndHide(<vanillafoodpantry:rock_salt_ingot>);
JEI.removeAndHide(<vanillafoodpantry:natron_ingot>);
recipes.removeByRecipeName("vanillafoodpantry:bit_salt_no_measure");

// Remove ores
JEI.removeAndHide(<vanillafoodpantry:rock_salt_ore>);
JEI.removeAndHide(<vanillafoodpantry:rock_salt_ore_nether>);
JEI.removeAndHide(<vanillafoodpantry:natron_ore>);
JEI.removeAndHide(<vanillafoodpantry:trona_ore>);

// Rename others
<vanillafoodpantry:ink_pearl_shard>.displayName = "Ink Crystal";

// Remove others
recipes.remove(<vanillafoodpantry:sandwich_press_plate>);
JEI.removeAndHide(<vanillafoodpantry:flint_butcher_axe>);
JEI.removeAndHide(<vanillafoodpantry:llama_fleece_block>);
JEI.removeAndHide(<vanillafoodpantry:flour_pantry_block>);
JEI.removeAndHide(<vanillafoodpantry:leavening_agent_pantry_block>);
JEI.removeAndHide(<vanillafoodpantry:drying_agent_pantry_block>);
JEI.removeAndHide(<vanillafoodpantry:salt_pantry_block>);
JEI.removeAndHide(<vanillafoodpantry:baking_soda_pantry_block>);
JEI.removeAndHide(<vanillafoodpantry:fizzing_agent_pantry_block>);
JEI.removeAndHide(<vanillafoodpantry:cheese_pantry_block>);
JEI.removeAndHide(<vanillafoodpantry:hardened_sugar_pantry_block>);
JEI.removeAndHide(<vanillafoodpantry:dough_pantry_block>);
JEI.removeAndHide(<vanillafoodpantry:gelatin_pantry_block>);
JEI.removeAndHide(<vanillafoodpantry:drying_agent_ball>);
JEI.removeAndHide(<vanillafoodpantry:drying_agent_unprocessed_ball>);
JEI.removeAndHide(<vanillafoodpantry:leavening_agent_ball>);
JEI.removeAndHide(<vanillafoodpantry:flesh_meal>);
JEI.removeAndHide(<vanillafoodpantry:ink_pearl>);
recipes.removeByRecipeName("vanillafoodpantry:book_from_carton_sides");
recipes.removeByRecipeName("vanillafoodpantry:bit_pipette_alt1");
recipes.removeByRecipeName("vanillafoodpantry:flour_portion");
recipes.removeByRecipeName("vanillafoodpantry:bonemeal_from_small_bones");
recipes.removeByRecipeName("vanillafoodpantry:bonemeal_from_fleshmeal_and_smallbones");
recipes.removeByRecipeName("vanillafoodpantry:rock_salt_ingot_unpack");
recipes.removeByRecipeName("vanillafoodpantry:natron_ingot_unpack");
recipes.removeByRecipeName("vanillafoodpantry:salt_from_crystals");
recipes.removeByRecipeName("vanillafoodpantry:baking_soda");
recipes.removeByRecipeName("vanillafoodpantry:dough_pantry_block_unpack");
recipes.removeByRecipeName("vanillafoodpantry:gelatin_pantry_block_unpack");
recipes.removeByRecipeName("vanillafoodpantry:hardened_sugar_pantry_block_unpack");
recipes.removeByRecipeName("vanillafoodpantry:fizzing_agent_pantry_block_unpack");
recipes.removeByRecipeName("vanillafoodpantry:baking_soda_pantry_block_unpack");
recipes.removeByRecipeName("vanillafoodpantry:cheese_pantry_block_unpack");
