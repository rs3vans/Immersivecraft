#modloaded appliedenergistics2
#modloaded immersiveengineering
#modloaded geolosys

import mods.jei.JEI;
import mods.appliedenergistics2.Grinder;

recipes.removeByRecipeName("appliedenergistics2:decorative/fluix_block_pure" as string);

val ironDustOre = <ore:dustIron>;
val ae2IronDust = <appliedenergistics2:material:49>;
val ieIronDust = <immersiveengineering:metal:18>;
val geoIronCluster = <geolosys:cluster:0>;
if (ironDustOre has ae2IronDust) {
    ironDustOre.remove(ae2IronDust);
}
JEI.removeAndHide(ae2IronDust);
Grinder.removeRecipe(geoIronCluster);
Grinder.addRecipe(ieIronDust, geoIronCluster, 5);

val goldDustOre = <ore:dustGold>;
val ae2GoldDust = <appliedenergistics2:material:51>;
val ieGoldDust = <immersiveengineering:metal:19>;
val geoGoldCluster = <geolosys:cluster:1>;
if (goldDustOre has ae2GoldDust) {
    goldDustOre.remove(ae2GoldDust);
}
JEI.removeAndHide(ae2GoldDust);
Grinder.removeRecipe(geoGoldCluster);
Grinder.addRecipe(ieGoldDust, geoGoldCluster, 4);