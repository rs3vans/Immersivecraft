import mods.jei.JEI;
import mods.immersiveengineering.Refinery;
import mods.immersiveengineering.Squeezer;
import mods.rustic.Condenser;

// Tiny pile of iron to iron grit
recipes.addShapeless("rustic/tiny_iron_to_grit", <immersiveengineering:metal:18>,
        [ <ore:dustTinyIron> * 4 ]);

// Biodiesel from olive oil
Refinery.addRecipe(<liquid:biodiesel>, <liquid:oliveoil>, <liquid:ethanol>, 512);

// Squeezer recipes
Squeezer.addRecipe(<rustic:apple_seeds>, <liquid:applejuice>, <ore:foodApple>, 512);

// Remove recipes...
recipes.remove(<rustic:iron_lantern>);
JEI.removeAndHide(<rustic:iron_lantern>);
