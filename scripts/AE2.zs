#modloaded appliedenergistics2
#modloaded immersivecables
#modloaded immersiveengineering
#modloaded geolosys

import mods.jei.JEI;
import mods.appliedenergistics2.Grinder;
import scripts.IEHammer.ieHammerTransformer;

recipes.removeByMod("appliedenergistics2");
recipes.removeByMod("immersivecables");

// Rename quartz dust
<appliedenergistics2:material:3>.displayName = "Quartz Dust";
<appliedenergistics2:material:11>.displayName = "Pure Quartz Crystal";

// Hide stuff
JEI.removeAndHide(<appliedenergistics2:material:1>);
JEI.removeAndHide(<appliedenergistics2:fluix_block>);

// Grinder dusts
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

Grinder.removeRecipe(<minecraft:quartz>);
Grinder.removeRecipe(<minecraft:quartz_ore>);
Grinder.removeRecipe(<minecraft:iron_ore>);
Grinder.removeRecipe(<minecraft:gold_ore>);
Grinder.removeRecipe(<minecraft:iron_ingot>);
Grinder.removeRecipe(<minecraft:gold_ingot>);
Grinder.removeRecipe(<minecraft:diamond_ore>);
Grinder.removeRecipe(<minecraft:ender_pearl>);
Grinder.removeRecipe(<minecraft:obsidian>);
Grinder.removeRecipe(<immersiveengineering:ore:0>);
Grinder.removeRecipe(<immersiveengineering:ore:1>);
Grinder.removeRecipe(<immersiveengineering:ore:2>);
Grinder.removeRecipe(<immersiveengineering:ore:3>);
Grinder.removeRecipe(<immersiveengineering:ore:4>);
Grinder.removeRecipe(<immersiveengineering:metal:0>);
Grinder.removeRecipe(<immersiveengineering:metal:1>);
Grinder.removeRecipe(<immersiveengineering:metal:2>);
Grinder.removeRecipe(<immersiveengineering:metal:3>);
Grinder.removeRecipe(<immersiveengineering:metal:4>);
Grinder.removeRecipe(<immersiveengineering:metal:5>);
Grinder.removeRecipe(<immersiveengineering:metal:6>);
Grinder.removeRecipe(<immersiveengineering:metal:7>);
Grinder.removeRecipe(<appliedenergistics2:material>);
Grinder.removeRecipe(<appliedenergistics2:material:7>);
Grinder.removeRecipe(<appliedenergistics2:sky_stone_block>);

// Quartz dusts from hammer
recipes.addShapeless("immc/quartz_dust_hammer", <ore:dustQuartz>.firstItem,
        [ <ore:gemQuartz>, ieHammerTransformer ]);
recipes.addShapeless("immc/quartz_dust_hammer_pure", <ore:dustQuartz>.firstItem,
        [ <ore:crystalPureNetherQuartz>, ieHammerTransformer ]);
recipes.addShapeless("immc/certus_quartz_dust_hammer", <ore:dustCertusQuartz>.firstItem,
        [ <ore:crystalCertusQuartz>, ieHammerTransformer ]);
recipes.addShapeless("immc/certus_quartz_dust_hammer_pure", <ore:dustCertusQuartz>.firstItem,
        [ <ore:crystalPureCertusQuartz>, ieHammerTransformer ]);
recipes.addShapeless("immc/fluix_dust_hammer", <ore:dustFluix>.firstItem,
        [ <ore:crystalFluix>, ieHammerTransformer ]);
recipes.addShapeless("immc/fluix_dust_hammer_pure", <ore:dustFluix>.firstItem,
        [ <ore:crystalPureFluix>, ieHammerTransformer ]);
