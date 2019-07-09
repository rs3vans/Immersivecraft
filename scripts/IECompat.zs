#modloaded immersiveengineering
#modloaded vanillafoodpantry
#modloaded tconstruct
#modloaded geolosys

import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.ArcFurnace;

// Remove TiC metal recipes
ArcFurnace.removeRecipe(<ore:ingotAlubrass>.firstItem);
ArcFurnace.removeRecipe(<ore:ingotManyullyn>.firstItem);
ArcFurnace.removeRecipe(<ore:ingotCobalt>.firstItem);
ArcFurnace.removeRecipe(<ore:ingotArdite>.firstItem);

// Blast furnace - Geolosys clusters
BlastFurnace.addRecipe(<ore:ingotIron>.firstItem, <geolosys:cluster:0>, 200);
BlastFurnace.addRecipe(<ore:ingotGold>.firstItem, <geolosys:cluster:1>, 200);
BlastFurnace.addRecipe(<ore:ingotCopper>.firstItem, <geolosys:cluster:2>, 200);
BlastFurnace.addRecipe(<ore:ingotSilver>.firstItem, <geolosys:cluster:4>, 200);
BlastFurnace.addRecipe(<ore:ingotLead>.firstItem, <geolosys:cluster:5>, 200);
BlastFurnace.addRecipe(<ore:ingotAluminum>.firstItem, <geolosys:cluster:6>, 200);
BlastFurnace.addRecipe(<ore:ingotNickel>.firstItem, <geolosys:cluster:7>, 200);
BlastFurnace.addRecipe(<ore:ingotUranium>.firstItem, <geolosys:cluster:9>, 200);

// VFP Salt
recipes.addShapeless("immc/salt_with_hammer", <vanillafoodpantry:salt> * 6,
        [ <immersiveengineering:tool>.transformDamage(),
          <vanillafoodpantry:rock_salt_crystals> ]);
recipes.addShapeless("immc/baking_soda_with_hammer", <vanillafoodpantry:baking_soda> * 6,
        [ <immersiveengineering:tool>.transformDamage(),
          <vanillafoodpantry:natron_crystals> ]);

Crusher.addRecipe(<vanillafoodpantry:salt> * 8, <vanillafoodpantry:rock_salt_crystals>, 2048, <vanillafoodpantry:salt> * 2, 0.5);
Crusher.addRecipe(<vanillafoodpantry:baking_soda> * 8, <vanillafoodpantry:natron_crystals>, 2048, <vanillafoodpantry:baking_soda> * 2, 0.5);

// Blaze Powder
AlloySmelter.addRecipe(<minecraft:blaze_powder>, <ore:dustGlowstone>, <vanillafoodpantry:lava_sand_portion>, 1200);