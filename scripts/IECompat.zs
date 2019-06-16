#modloaded immersiveengineering
#modloaded vanillafoodpantry

import mods.immersiveengineering.Crusher;

recipes.addShapeless("immc/salt_with_hammer", <vanillafoodpantry:salt> * 6,
        [ <immersiveengineering:tool>.transformDamage(),
          <vanillafoodpantry:rock_salt_crystals> ]);
recipes.addShapeless("immc/baking_soda_with_hammer", <vanillafoodpantry:baking_soda> * 6,
        [ <immersiveengineering:tool>.transformDamage(),
          <vanillafoodpantry:natron_crystals> ]);

Crusher.addRecipe(<vanillafoodpantry:salt> * 8, <vanillafoodpantry:rock_salt_crystals>, 2048, <vanillafoodpantry:salt> * 2, 0.5);
Crusher.addRecipe(<vanillafoodpantry:baking_soda> * 8, <vanillafoodpantry:natron_crystals>, 2048, <vanillafoodpantry:baking_soda> * 2, 0.5);