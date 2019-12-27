#modloaded witherskelefix

import mods.jei.JEI;
import mods.immersiveengineering.MetalPress;


recipes.removeByMod("witherskelefix");


// Remove swords
JEI.removeAndHide(<witherskelefix:blade>);
JEI.removeAndHide(<witherskelefix:blade2>);


// Skull
val packingMold2x2 = <immersiveengineering:mold:5>;
val unpackingMold = <immersiveengineering:mold:7>;
val witherSkeleSkull = <minecraft:skull:1>;
val witherSkeleFragment = <witherskelefix:fragment>;

MetalPress.addRecipe(witherSkeleSkull, witherSkeleFragment, packingMold2x2, 2000, 4);
MetalPress.addRecipe(witherSkeleFragment * 4, witherSkeleSkull, unpackingMold, 2000);
