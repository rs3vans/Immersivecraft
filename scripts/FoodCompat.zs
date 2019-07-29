#modloaded vanillafoodpantry
#modloaded immersiveengineering
#modloaded tconstruct
#modloaded dynamictrees
#modloaded dttraverse
#modloaded ceramics

import mods.tconstruct.Melting;

// Acorns
furnace.addRecipe(<vanillafoodpantry:oak_acorn>, <dynamictrees:oakseed>, 0.1);
furnace.addRecipe(<vanillafoodpantry:oak_acorn>, <dynamictrees:darkoakseed>, 0.1);
furnace.addRecipe(<vanillafoodpantry:oak_acorn>, <dttraverse:autumn_orangeseed>, 0.1);
furnace.addRecipe(<vanillafoodpantry:oak_acorn>, <dttraverse:autumn_redseed>, 0.1);
furnace.addRecipe(<vanillafoodpantry:oak_acorn>, <dttraverse:autumn_brownseed>, 0.1);
recipes.remove(<vanillafoodpantry:acornmeal_portion>);

// Water
val clayWaterBucket = <ceramics:clay_bucket>.withTag({fluids:{FluidName:"water",Amount:1000}});
recipes.addShapeless("immc/bitowater_clay", <vanillafoodpantry:water_portion> * 32,
        [ clayWaterBucket.transformReplace(<ceramics:clay_bucket>),
          <vanillafoodpantry:bit_pipette>.reuse() ]);

// Heat
val clayLavaBucket = <ceramics:clay_bucket>.withTag({fluids:{FluidName:"lava",Amount:1000}});
recipes.addShapeless("immc/bitoheat_clay", <vanillafoodpantry:heat_portion> * 64,
        [ clayLavaBucket,
          <vanillafoodpantry:bit_pipette>.reuse() ]);

// Lava Sand
recipes.addShaped("immc/lava_sand_clay", <vanillafoodpantry:lava_sand_block> * 8,
        [ [<ore:sand>, <ore:sand>, <ore:sand>],
          [<ore:sand>, clayLavaBucket, <ore:sand>],
          [<ore:sand>, <ore:sand>, <ore:sand>] ]);

Melting.addRecipe(<liquid:lava> * 13, <vanillafoodpantry:lava_sand_portion>, 1000);
Melting.addRecipe(<liquid:lava> * 124, <vanillafoodpantry:lava_sand_block>, 1100);

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

// Sandwich Press
recipes.addShaped("immc/sandwich_press", <vanillafoodpantry:sandwich_press_plate>,
        [ [ null, <ore:plateSteel>, <ore:plateSteel> ],
          [ <immersiveengineering:material:9> , null, null ],
          [ null, <ore:plateSteel>, <ore:plateSteel> ] ]);