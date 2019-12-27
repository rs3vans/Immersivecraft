#modloaded improvedbackpacks

import mods.immersiveengineering.Blueprint;

recipes.removeByRecipeName("improvedbackpacks:item.backpack");
recipes.addShaped("immc/backpack", <improvedbackpacks:backpack>,
        [[<ore:itemTieStrong>, <ore:itemTannedLeather>, <ore:itemTieStrong>],
         [<ore:itemTannedLeather>, <ore:itemCrate>, <ore:itemTannedLeather>],
         [<ore:itemTieStrong>, <ore:itemTannedLeather>, <ore:itemTieStrong>]]);

val upgradeBlank = <improvedbackpacks:blank_upgrade>;
val upgradeTier1 = <improvedbackpacks:upgrade:0>;
val upgradeTier2 = <improvedbackpacks:upgrade:1>;
val upgradeTier3 = <improvedbackpacks:upgrade:2>;
val upgradeTier4 = <improvedbackpacks:upgrade:3>;
val upgradeTier5 = <improvedbackpacks:upgrade:4>;

upgradeBlank.displayName = "Backpack Upgrade (Tier 0)";
upgradeTier1.displayName = "Backpack Upgrade (Tier 1)";
upgradeTier2.displayName = "Backpack Upgrade (Tier 2)";
upgradeTier3.displayName = "Backpack Upgrade (Tier 3)";
upgradeTier4.displayName = "Backpack Upgrade (Tier 4)";
upgradeTier5.displayName = "Backpack Upgrade (Tier 5)";

recipes.remove(upgradeTier1);
recipes.remove(upgradeTier2);
recipes.remove(upgradeTier3);
recipes.remove(upgradeTier4);
recipes.remove(upgradeTier5);

Blueprint.addRecipe("Backpack Upgrades", upgradeTier1,
        [upgradeBlank, <ore:plankTreatedWood> * 3]);
Blueprint.addRecipe("Backpack Upgrades", upgradeTier2,
        [upgradeTier1, <ore:plateSteel> * 3]);
Blueprint.addRecipe("Backpack Upgrades", upgradeTier3,
        [upgradeTier2 * 2, <ore:plateDarkSteel> * 3]);
Blueprint.addRecipe("Backpack Upgrades", upgradeTier4,
        [upgradeTier3 * 2, <ore:plateSoularium> * 3]);
Blueprint.addRecipe("Backpack Upgrades", upgradeTier5,
        [upgradeTier4 * 3, <ore:plateCrystallineAlloy> * 3]);

val backpackUpgradesBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "Backpack Upgrades"});
recipes.addShaped("immc/blueprint_backpack_upgrades", backpackUpgradesBlueprint,
        [[<ore:itemTannedLeather>, upgradeBlank, <ore:itemTannedLeather>],
         [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);