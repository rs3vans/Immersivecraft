import mods.jei.JEI;

JEI.removeAndHide(<vanillafoodpantry:iron_stomach>);

// No to lava sand
recipes.remove(<vanillafoodpantry:lava_sand_portion>);
recipes.remove(<vanillafoodpantry:lava_sand_pack>);
recipes.remove(<vanillafoodpantry:lava_sand_block>);
JEI.removeAndHide(<vanillafoodpantry:lava_sand_portion>);
JEI.removeAndHide(<vanillafoodpantry:lava_sand_pack>);
JEI.removeAndHide(<vanillafoodpantry:lava_sand_block>);

// Heat bits
recipes.removeByRecipeName("vanillafoodpantry:bit_heat_from_lava_sand");
recipes.removeByRecipeName("vanillafoodpantry:bit_heat_from_coal");
recipes.removeByRecipeName("vanillafoodpantry:bit_heat_from_blazerod");

// Prefer VFP salt
JEI.removeAndHide(<vanillafoodpantry:rock_salt_crystals>);
JEI.removeAndHide(<vanillafoodpantry:rock_salt_ingot>);
recipes.removeByRecipeName("vanillafoodpantry:bit_salt_no_measure");
recipes.addShapeless("vfpcustom/salt_from_ie_salt", <vanillafoodpantry:salt>, [ <immersivetech:material> ]);

// Remove ores
JEI.removeAndHide(<vanillafoodpantry:rock_salt_ore>);
JEI.removeAndHide(<vanillafoodpantry:rock_salt_ore_nether>);
JEI.removeAndHide(<vanillafoodpantry:natron_ore>);
JEI.removeAndHide(<vanillafoodpantry:trona_ore>);

// Remove others
recipes.removeByRecipeName("vanillafoodpantry:book_from_carton_sides");
