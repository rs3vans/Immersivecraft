#modloaded vanillafoodpantry
#modloaded immersivetech
#modloaded dynamictrees
#modloaded dttraverse
#modloaded ceramics

// Convert from IE salt to VFP salt
recipes.addShapeless("immc/salt_from_ie_salt", <vanillafoodpantry:salt>,
        [ <immersivetech:material> ]);

// Acorns
furnace.addRecipe(<vanillafoodpantry:oak_acorn>, <dynamictrees:oakseed>);
furnace.addRecipe(<vanillafoodpantry:oak_acorn>, <dynamictrees:darkoakseed>);
furnace.addRecipe(<vanillafoodpantry:oak_acorn>, <dttraverse:autumn_orangeseed>);
furnace.addRecipe(<vanillafoodpantry:oak_acorn>, <dttraverse:autumn_redseed>);
furnace.addRecipe(<vanillafoodpantry:oak_acorn>, <dttraverse:autumn_brownseed>);
recipes.remove(<vanillafoodpantry:acornmeal_portion>);

// Water
recipes.addShapeless("immc/bitowater_clay", <vanillafoodpantry:water_portion> * 32,
        [ <ceramics:clay_bucket>.withTag({fluids:{FluidName:"water",Amount:1000}}).transformReplace(<ceramics:clay_bucket>),
          <vanillafoodpantry:bit_pipette>.reuse() ]);

// Heat
recipes.addShapeless("immc/bitoheat_clay", <vanillafoodpantry:heat_portion> * 64,
        [ <ceramics:clay_bucket>.withTag({fluids:{FluidName:"lava",Amount:1000}}),
          <vanillafoodpantry:bit_pipette>.reuse() ]);

// Milk
recipes.addShapeless("immc/bitofmilk_clay", <vanillafoodpantry:milk_portion> * 32,
        [ <ceramics:clay_bucket>.withTag({fluids:{FluidName:"milk",Amount:1000}}).transformReplace(<ceramics:clay_bucket>),
          <vanillafoodpantry:bit_pipette>.reuse() ]);
recipes.addShaped("immc/milkbowls_clay", <vanillafoodpantry:bowl_milk> * 4,
        [ [ <ceramics:clay_bucket>.withTag({fluids:{FluidName:"milk",Amount:1000}}).transformReplace(<ceramics:clay_bucket>), null ],
          [ <ore:bowlWood>, <ore:bowlWood> ],
          [ <ore:bowlWood>, <ore:bowlWood> ] ]);
recipes.addShaped("immc/milkdrink_clay", <vanillafoodpantry:milkdrink> * 4,
        [ [ <ceramics:clay_bucket>.withTag({fluids:{FluidName:"milk",Amount:1000}}).transformReplace(<ceramics:clay_bucket>), null ],
          [ <ore:itemEmptyBottle>, <ore:itemEmptyBottle> ],
          [ <ore:itemEmptyBottle>, <ore:itemEmptyBottle> ] ]);