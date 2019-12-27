#modloaded enderio

import mods.jei.JEI;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.BottlingMachine;

val disable = false;
val debug = false;

if (!disable) {
    recipes.removeByMod("enderio");
}

val itemsToNotRemove = [
    "item.item_material.gear_iron",
    "item.item_material.gear_darksteel",
    "item.item_material.gear_energized",
    "item.item_material.gear_vibrant",
    "item.item_material.dust_wheat",
    "item.item_material.powder_ender",
    "item.item_material.powder_obsidian",
    "item.item_material.powder_lapis_lazuli",
    "item.item_material.powder_quartz",
    "item.item_material.powder_soul",
    "item.item_material.silicon",
    "item.item_material.ender_fragment",
    "item.item_material.glider_wing",
    "item.item_material.glider_wings",
    "item.item_magnet",
    "item.item_dark_steel_upgrade",
    "item.item_inventory_charger_basic",
    "item.item_inventory_charger",
    "item.item_inventory_charger_vibrant",
    "item.item_basic_capacitor.ender",
    "item.item_capacitor_crystalline",
    "item.item_capacitor_melodic",
    "item.item_capacitor_stellar",
    "item.item_material.skull_zombie_controller",
    "item.item_material.skull_zombie_frankenstien",
    "item.item_material.skull_ender_resonator",
    "item.item_alloy_ingot_dark_steel",
    "item.item_alloy_ingot_soularium",
    "item.item_alloy_ingot_end_steel",
    "item.item_alloy_ingot_energetic_alloy",
    "item.item_alloy_ingot_vibrant_alloy",
    "item.item_alloy_endergy_ingot_crystalline_alloy",
    "item.item_alloy_endergy_ingot_melodic_alloy",
    "item.item_alloy_endergy_ingot_stellar_alloy",
    "item.item_alloy_nugget_dark_steel",
    "item.item_alloy_nugget_soularium",
    "item.item_alloy_nugget_end_steel",
    "item.item_alloy_nugget_energetic_alloy",
    "item.item_alloy_nugget_vibrant_alloy",
    "item.item_alloy_endergy_nugget_crystalline_alloy",
    "item.item_alloy_endergy_nugget_melodic_alloy",
    "item.item_alloy_endergy_nugget_stellar_alloy",
    "item.item_dark_steel_pickaxe",
    "item.item_dark_steel_sword",
    "item.item_dark_steel_axe",
    "item.item_dark_steel_bow",
    "item.item_dark_steel_chestplate",
    "item.item_dark_steel_helmet",
    "item.item_dark_steel_leggings",
    "item.item_dark_steel_boots",
    "item.item_dark_steel_shears",
    "item.item_dark_steel_crook",
    "item.item_end_steel_pickaxe",
    "item.item_end_steel_sword",
    "item.item_end_steel_axe",
    "item.item_end_steel_bow",
    "item.item_end_steel_chestplate",
    "item.item_end_steel_helmet",
    "item.item_end_steel_leggings",
    "item.item_end_steel_boots",
    "item.item_stellar_alloy_pickaxe",
    "item.item_stellar_alloy_sword",
    "item.item_stellar_alloy_axe",
    "item.item_stellar_alloy_chestplate",
    "item.item_stellar_alloy_helmet",
    "item.item_stellar_alloy_leggings",
    "item.item_stellar_alloy_boots",
    "item.item_xp_transfer"
] as string[];

val blocksToNotRemove = [
    "tile.block_alloy.dark_steel",
    "tile.block_alloy.soularium",
    "tile.block_alloy.end_steel",
    "tile.block_alloy.energetic_alloy",
    "tile.block_alloy.vibrant_alloy",
    "tile.block_alloy_endergy.crystalline_alloy",
    "tile.block_alloy_endergy.melodic_alloy",
    "tile.block_alloy_endergy.stellar_alloy",
    "tile.block_enderman_skull.base",
    "tile.block_dark_steel_anvil.intact",
    "tile.block_dark_steel_anvil.slightlyDamaged",
    "tile.block_dark_steel_anvil.veryDamaged",
    "tile.block_killer_joe",
    "tile.block_vacuum_chest",
    "tile.block_xp_vacuum",
    "tile.block_reinforced_obsidian",
    "tile.block_dark_iron_bars"
] as string[];

for i in loadedMods["enderio"].items {
    if (!disable && (i.name.startsWith("item.item_") || i.name.startsWith("enderio.item_")) &&
           !(itemsToNotRemove has i.name)) {
        if (debug) {
            print("Removing EnderIO item ... " ~ i.name);
        }
        JEI.removeAndHide(i);
    } else if (!disable && i.name.startsWith("tile.block_") && !(blocksToNotRemove has i.name)) {
        if (debug) {
            print("Removing EnderIO block ... " ~ i.name);
        }
        JEI.removeAndHide(i);
    } else if (debug) {
        print("Not removing EnderIO item/block ... " ~ i.name);
    }
}

if (!disable) {
    JEI.removeAndHide(<enderio:item_soul_vial>);
    JEI.removeAndHide(<enderio:item_broken_spawner>);
}

val fluidsToRemove = [
    <liquid:nutrient_distillation>,
    <liquid:ender_distillation>,
    <liquid:vapor_of_levity>,
    <liquid:hootch>,
    <liquid:rocket_fuel>,
    <liquid:fire_water>,
    <liquid:liquid_sunshine>,
    <liquid:cloud_seed>,
    <liquid:cloud_seed_concentrated>
] as ILiquidStack[];

if (!disable) {
    for f in fluidsToRemove {
        JEI.hide(f);
        JEI.hide(<forge:bucketfilled>.withTag({FluidName: f.name, Amount: 1000}));
    }
}

val jeiCategoriesToRemove = [
    "Painter",
    "AlloySmelter",
    "CombustionGenerator",
    "Enchanter",
    "SagMill",
    "GrindingBall",
    "SliceNSPlice",
    "SolarPanel",
    "SoulBinder",
    "StirlingGenerator",
    "EIOTank",
    "Vat",
    "EIOWC",
    "EIOWO",
    "ZombieGenerator",
    "EnderGenerator",
    "LavaGenerator"
] as string[];

if (!disable) {
    for c in jeiCategoriesToRemove {
        JEI.hideCategory(c);
    }
}

val empoweredUpgradeNbt = {"enderio.darksteel.upgrade.energyUpgrade": {level: 0}} as IData;

val soulariumDust = <ore:dustSoularium>.firstItem;
val soulariumNugget = <ore:nuggetSoularium>.firstItem;
val soulariumIngot = <ore:ingotSoularium>.firstItem;
val soulariumPlate = <ore:plateSoularium>.firstItem;
val soulariumBlock = <ore:blockSoularium>.firstItem;
val darkSteelDust = <ore:dustDarkSteel>.firstItem;
val darkSteelNugget = <ore:nuggetDarkSteel>.firstItem;
val darkSteelIngot = <ore:ingotDarkSteel>.firstItem;
val darkSteelPlate = <ore:plateDarkSteel>.firstItem;
val darkSteelBlock = <ore:blockDarkSteel>.firstItem;
val endSteelDust = <ore:dustEndSteel>.firstItem;
val endSteelNugget = <ore:nuggetEndSteel>.firstItem;
val endSteelIngot = <ore:ingotEndSteel>.firstItem;
val endSteelPlate = <ore:plateEndSteel>.firstItem;
val endSteelBlock = <ore:blockEndSteel>.firstItem;
val energeticAlloyDust = <ore:dustEnergeticAlloy>.firstItem;
val energeticAlloyNugget = <ore:nuggetEnergeticAlloy>.firstItem;
val energeticAlloyIngot = <ore:ingotEnergeticAlloy>.firstItem;
val energeticAlloyPlate = <ore:plateEnergeticAlloy>.firstItem;
val energeticAlloyBlock = <ore:blockEnergeticAlloy>.firstItem;
val vibrantAlloyDust = <ore:dustVibrantAlloy>.firstItem;
val vibrantAlloyNugget = <ore:nuggetVibrantAlloy>.firstItem;
val vibrantAlloyIngot = <ore:ingotVibrantAlloy>.firstItem;
val vibrantAlloyPlate = <ore:plateVibrantAlloy>.firstItem;
val vibrantAlloyBlock = <ore:blockVibrantAlloy>.firstItem;
val crystallineAlloyDust = <ore:dustCrystallineAlloy>.firstItem;
val crystallineAlloyNugget = <ore:nuggetCrystallineAlloy>.firstItem;
val crystallineAlloyIngot = <ore:ingotCrystallineAlloy>.firstItem;
val crystallineAlloyPlate = <ore:plateCrystallineAlloy>.firstItem;
val crystallineAlloyBlock = <ore:blockCrystallineAlloy>.firstItem;
val melodicAlloyDust = <ore:dustMelodicAlloy>.firstItem;
val melodicAlloyNugget = <ore:nuggetMelodicAlloy>.firstItem;
val melodicAlloyPlate = <ore:plateMelodicAlloy>.firstItem;
val melodicAlloyIngot = <ore:ingotMelodicAlloy>.firstItem;
val melodicAlloyBlock = <ore:blockMelodicAlloy>.firstItem;
val stellarAlloyDust = <ore:dustStellarAlloy>.firstItem;
val stellarAlloyNugget = <ore:nuggetStellarAlloy>.firstItem;
val stellarAlloyIngot = <ore:ingotStellarAlloy>.firstItem;
val stellarAlloyPlate = <ore:plateStellarAlloy>.firstItem;
val stellarAlloyBlock = <ore:blockStellarAlloy>.firstItem;

val activatedCapacitor = <enderio:item_basic_capacitor:2>;
val crystallineCapacitor = <enderio:item_capacitor_crystalline>;
val melodicCapacitor = <enderio:item_capacitor_melodic>;
val enderCapacitor = <enderio:item_material:43>;
val stellarCapacitor = <enderio:item_capacitor_stellar>;

val zombieBattery = <enderio:item_material:41>;
val chargedZombieBattery = <enderio:item_material:42>;

val steelGear = <ore:gearIronInfinity>.firstItem;
val energeticGear = <ore:gearEnergized>.firstItem;
val vibrantGear = <ore:gearVibrant>.firstItem;
val darkGear = <ore:gearDark>.firstItem;

val basicCharger = <enderio:item_inventory_charger_basic>.withTag(empoweredUpgradeNbt);
val normalCharger = <enderio:item_inventory_charger>.withTag(empoweredUpgradeNbt);
val vibrantCharger = <enderio:item_inventory_charger_vibrant>.withTag(empoweredUpgradeNbt);

val flour = <ore:dustWheat>.firstItem;
val coalDust = <ore:dustCoal>.firstItem;
val enderPearlDust = <ore:nuggetEnderpearl>.firstItem;
val netherQuartzDust = <ore:dustNetherQuartz>.firstItem;

val silicon = <ore:itemSilicon>.firstItem;
val endRod = <minecraft:end_rod>;
val gliderWing = <enderio:item_material:6>;
val zombieHead = <minecraft:skull:2>;
val endermanSkull = <enderio:block_enderman_skull>;
val witherSkeleSkull = <minecraft:skull:1>;
val lvCapacitor = <immersiveengineering:metal_device0:0>;
val mvCapacitor = <immersiveengineering:metal_device0:1>;
val hvCapacitor = <immersiveengineering:metal_device0:2>;

val minecraftAnvil = <minecraft:anvil>;
val darkSteelAnvil = <enderio:block_dark_steel_anvil>;
val glider = <enderio:item_material:7>;
val magnet = <enderio:item_magnet>;
val killerJoe = <enderio:block_killer_joe>;
val vacuumChest = <enderio:block_vacuum_chest>;
val xpVacuum = <enderio:block_xp_vacuum>;
val xpRod = <enderio:item_xp_transfer>;
val darkSteelBars = <enderio:block_dark_iron_bars>;
val reinforcedObsidian = <enderio:block_reinforced_obsidian>;

val stickOre = <ore:stickWood>;
val treatedStickOre = <ore:stickTreatedWood>;
val plankOre = <ore:plankWood>;
val stringOre = <ore:string>;
val steelNuggetOre = <ore:ingotSteel>;
val steelRodOre = <ore:stickSteel>;
val steelPlateOre = <ore:plateSteel>;
val ironNuggetOre = <ore:nuggetIron>;
val ironBlockOre = <ore:blockIron>;
val leadNuggetOre = <ore:nuggetLead>;
val silverNuggetOre = <ore:nuggetSilver>;
val electrumNuggetOre = <ore:nuggetElectrum>;

val darkSteelUpgrade = <enderio:item_dark_steel_upgrade:0>;
val darkSteelUpgradeWithUpgrade = <enderio:item_dark_steel_upgrade:1>;
val darkSteelUpgradeEmpoweredII = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:energyupgrade1"});
val darkSteelUpgradeEmpoweredIII = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:energyupgrade2"});
val darkSteelUpgradeEmpoweredIV = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:energyupgrade3"});
val darkSteelUpgradeEmpoweredV = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:energyupgrade4"});
val darkSteelUpgradeAnvilI = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:anvil"});
val darkSteelUpgradeAnvilII = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:anvil1"});
val darkSteelUpgradeAnvilIII = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:anvil2"});
val darkSteelUpgradeInventoryI = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:inv"});
val darkSteelUpgradeInventoryII = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:inv1"});
val darkSteelUpgradeInventoryIII = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:inv2"});
val darkSteelUpgradeJumpI = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:jumpboost1"});
val darkSteelUpgradeJumpII = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:jumpboost2"});
val darkSteelUpgradeJumpIII = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:jumpboost3"});
val darkSteelUpgradeSpeedI = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:speedboost1"});
val darkSteelUpgradeSpeedII = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:speedboost2"});
val darkSteelUpgradeSpeedIII = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:speedboost3"});
val darkSteelUpgradeStepAssist = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:step_assist"});
val darkSteelUpgradeSpoon = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:spoon"});
val darkSteelUpgradeFork = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:hoe"});
val darkSteelUpgradePadding = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:padding"});
val darkSteelUpgradeSoundDetector = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:sounddetector"});
val darkSteelUpgradeFlippers = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:swim"});
val darkSteelUpgradeDirect = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:direct"});
val darkSteelUpgradeNightVision = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:nightvision"});
val darkSteelUpgradeGlider = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:glide"});
val darkSteelUpgradeElytra = darkSteelUpgradeWithUpgrade.withTag({"enderio:dsu": "enderio:elytra"});

val darkSteelPickaxe = <enderio:item_dark_steel_pickaxe>.withTag(empoweredUpgradeNbt);
val darkSteelAxe = <enderio:item_dark_steel_axe>.withTag(empoweredUpgradeNbt);
val darkSteelSword = <enderio:item_dark_steel_sword>.withTag(empoweredUpgradeNbt);
val darkSteelBow = <enderio:item_dark_steel_bow>.withTag(empoweredUpgradeNbt);
val darkSteelShears = <enderio:item_dark_steel_shears>.withTag(empoweredUpgradeNbt);
val darkSteelCrook = <enderio:item_dark_steel_crook>.withTag(empoweredUpgradeNbt);
val darkSteelChestplate = <enderio:item_dark_steel_chestplate>.withTag(empoweredUpgradeNbt);
val darkSteelHelmet = <enderio:item_dark_steel_helmet>.withTag(empoweredUpgradeNbt);
val darkSteelLeggings = <enderio:item_dark_steel_leggings>.withTag(empoweredUpgradeNbt);
val darkSteelBoots = <enderio:item_dark_steel_boots>.withTag(empoweredUpgradeNbt);
val endSteelPickaxe = <enderio:item_end_steel_pickaxe>.withTag(empoweredUpgradeNbt);
val endSteelAxe = <enderio:item_end_steel_axe>.withTag(empoweredUpgradeNbt);
val endSteelSword = <enderio:item_end_steel_sword>.withTag(empoweredUpgradeNbt);
val endSteelBow = <enderio:item_end_steel_bow>.withTag(empoweredUpgradeNbt);
val endSteelChestplate = <enderio:item_end_steel_chestplate>.withTag(empoweredUpgradeNbt);
val endSteelHelmet = <enderio:item_end_steel_helmet>.withTag(empoweredUpgradeNbt);
val endSteelLeggings = <enderio:item_end_steel_leggings>.withTag(empoweredUpgradeNbt);
val endSteelBoots = <enderio:item_end_steel_boots>.withTag(empoweredUpgradeNbt);
val stellarAlloyPickaxe = <enderio:item_stellar_alloy_pickaxe>.withTag(empoweredUpgradeNbt);
val stellarAlloyAxe = <enderio:item_stellar_alloy_axe>.withTag(empoweredUpgradeNbt);
val stellarAlloySword = <enderio:item_stellar_alloy_sword>.withTag(empoweredUpgradeNbt);
val stellarAlloyChestplate = <enderio:item_stellar_alloy_chestplate>.withTag(empoweredUpgradeNbt);
val stellarAlloyHelmet = <enderio:item_stellar_alloy_helmet>.withTag(empoweredUpgradeNbt);
val stellarAlloyLeggings = <enderio:item_stellar_alloy_leggings>.withTag(empoweredUpgradeNbt);
val stellarAlloyBoots = <enderio:item_stellar_alloy_boots>.withTag(empoweredUpgradeNbt);

// RENAMES
steelGear.displayName = "Steel Gear";
energeticGear.displayName = "Energetic Alloy Compound Gear";
vibrantGear.displayName = "Vibrant Alloy Compound Gear";
darkGear.displayName = "Dark Steel Compound Gear";

activatedCapacitor.displayName = "Activated Capacitor";
enderCapacitor.displayName = "Ender Capacitor";

zombieBattery.displayName = "Zombie Battery";
chargedZombieBattery.displayName = "Charged Zombie Battery";

soulariumDust.displayName = "Soularium Dust";

darkSteelBars.displayName = "Dark Steel Bars";
darkSteelPickaxe.displayName = "Dark Steel Pickaxe";
darkSteelAxe.displayName = "Dark Steel Axe";
darkSteelSword.displayName = "Dark Steel Sword";
darkSteelBow.displayName = "Dark Steel Bow";
darkSteelShears.displayName = "Dark Steel Shears";
darkSteelCrook.displayName = "Dark Steel Crook";
darkSteelChestplate.displayName = "Dark Steel Chestplate";
darkSteelHelmet.displayName = "Dark Steel Helmet";
darkSteelLeggings.displayName = "Dark Steel Leggings";
darkSteelBoots.displayName = "Dark Steel Boots";

endSteelPickaxe.displayName = "End Steel Pickaxe";
endSteelAxe.displayName = "End Steel Axe";
endSteelSword.displayName = "End Steel Sword";
endSteelBow.displayName = "End Steel Bow";
endSteelChestplate.displayName = "End Steel Chestplate";
endSteelHelmet.displayName = "End Steel Helmet";
endSteelLeggings.displayName = "End Steel Leggings";
endSteelBoots.displayName = "End Steel Boots";

stellarAlloyPickaxe.displayName = "Stellar Alloy Pickaxe";
stellarAlloyAxe.displayName = "Stellar Alloy Axe";
stellarAlloySword.displayName = "Stellar Alloy Sword";
stellarAlloyChestplate.displayName = "Stellar Alloy Chestplate";
stellarAlloyHelmet.displayName = "Stellar Alloy Helmet";
stellarAlloyLeggings.displayName = "Stellar Alloy Leggings";
stellarAlloyBoots.displayName = "Stellar Alloy Boots";


// CRAFTING
if (loadedMods has "quark") {
    val blackDye = <quark:root_dye:1>;
    val waterBucketToEmpty = <ore:itemWaterBucket>.transformReplace(<ore:itemEmptyBucket>.firstItem);
    recipes.addShaped("immc/black_dye_from_coal_powder", blackDye * 8,
           [[coalDust, coalDust, coalDust],
             [coalDust, waterBucketToEmpty, coalDust],
             [coalDust, coalDust, coalDust]]);
} else {
    <ore:dyeBlack>.add(coalDust);
}

recipes.addShaped("immc/dark_steel_anvil", darkSteelAnvil,
        [[darkSteelBlock, darkSteelBlock, darkSteelBlock],
         [null, darkSteelIngot, null],
         [darkSteelIngot, darkSteelIngot, darkSteelIngot]]);

recipes.addShaped("immc/wood_gear", woodGear,
        [[stickOre, plankOre, stickOre],
         [plankOre, null, plankOre],
         [stickOre, plankOre, stickOre]]);
recipes.addShaped("immc/energetic_gear", energeticGear,
        [[energeticAlloyNugget, energeticAlloyNugget, energeticAlloyNugget],
         [energeticAlloyNugget, steelGear, energeticAlloyNugget],
         [energeticAlloyNugget, energeticAlloyNugget, energeticAlloyNugget]]);
recipes.addShaped("immc/vibrant_gear", vibrantGear,
        [[vibrantAlloyNugget, vibrantAlloyNugget, vibrantAlloyNugget],
         [vibrantAlloyNugget, steelGear, vibrantAlloyNugget],
         [vibrantAlloyNugget, vibrantAlloyNugget, vibrantAlloyNugget]]);
recipes.addShaped("immc/dark_gear", darkGear,
        [[darkSteelNugget, darkSteelNugget, darkSteelNugget],
         [darkSteelNugget, steelGear, darkSteelNugget],
         [darkSteelNugget, darkSteelNugget, darkSteelNugget]]);

recipes.addShaped("immc/activated_capacitor", activatedCapacitor,
        [[darkSteelNugget, darkSteelNugget, darkSteelNugget],
         [silicon, leadNuggetOre, silicon],
         [ironNuggetOre, energeticAlloyDust, ironNuggetOre]]);
recipes.addShaped("immc/crystalline_capacitor", crystallineCapacitor,
        [[crystallineAlloyNugget, crystallineAlloyNugget, crystallineAlloyNugget],
         [silicon, leadNuggetOre, silicon],
         [silverNuggetOre, energeticAlloyDust, silverNuggetOre]]);
recipes.addShaped("immc/melodic_capacitor", melodicCapacitor,
        [[melodicAlloyNugget, melodicAlloyNugget, melodicAlloyNugget],
         [silicon, leadNuggetOre, silicon],
         [electrumNuggetOre, energeticAlloyDust, electrumNuggetOre]]);
recipes.addShaped("immc/ender_capacitor", enderCapacitor,
        [[vibrantAlloyNugget, vibrantAlloyNugget, vibrantAlloyNugget],
         [silicon, endermanSkull, silicon],
         [soulariumNugget, energeticAlloyDust, soulariumNugget]]);
recipes.addShaped("immc/stellar_capacitor", stellarCapacitor,
        [[stellarAlloyNugget, stellarAlloyNugget, stellarAlloyNugget],
         [silicon, witherSkeleSkull, silicon],
         [vibrantAlloyNugget, energeticAlloyDust, vibrantAlloyNugget]]);

recipes.addShaped("immc/zombie_battery", zombieBattery,
        [[soulariumNugget, soulariumNugget, soulariumNugget],
         [silicon, zombieHead, silicon],
         [soulariumNugget, energeticAlloyDust, soulariumNugget]]);

recipes.addShaped("immc/dark_steel_upgrade_blank", darkSteelUpgrade,
        [[darkSteelPlate, darkSteelPlate, darkSteelPlate],
         [darkSteelNugget, darkGear, darkSteelNugget],
         [darkSteelPlate, darkSteelPlate, darkSteelPlate]]);

recipes.addShaped("immc/inventory_charger_basic", basicCharger,
        [[steelPlateOre, steelPlateOre, steelPlateOre],
         [lvCapacitor, steelGear, lvCapacitor],
         [steelPlateOre, steelPlateOre, steelPlateOre]]);
recipes.addShaped("immc/inventory_charger", normalCharger,
        [[darkSteelPlate, darkSteelPlate, darkSteelPlate],
         [mvCapacitor, energeticGear, mvCapacitor],
         [darkSteelPlate, darkSteelPlate, darkSteelPlate]]);
recipes.addShaped("immc/inventory_charger_vibrant", vibrantCharger,
        [[darkSteelPlate, darkSteelPlate, darkSteelPlate],
         [hvCapacitor, vibrantGear, hvCapacitor],
         [darkSteelPlate, darkSteelPlate, darkSteelPlate]]);

recipes.addShaped("immc/dark_steel_sword", darkSteelSword,
        [[null, darkSteelIngot, darkSteelIngot],
         [darkSteelNugget, activatedCapacitor, darkSteelIngot],
         [treatedStickOre, darkSteelNugget, null]]);
recipes.addShaped("immc/dark_steel_pickaxe", darkSteelPickaxe,
        [[darkSteelNugget, darkSteelIngot, darkSteelIngot],
         [null, activatedCapacitor, darkSteelIngot],
         [treatedStickOre, null, darkSteelNugget]]);
recipes.addShaped("immc/dark_steel_axe", darkSteelAxe,
        [[darkSteelIngot, darkSteelIngot, darkSteelNugget],
         [darkSteelIngot, activatedCapacitor, darkSteelNugget],
         [treatedStickOre, null, null]]);
recipes.addShaped("immc/dark_steel_bow", darkSteelBow,
        [[activatedCapacitor, darkSteelIngot, darkSteelNugget],
         [darkSteelIngot, null, stringOre],
         [darkSteelNugget, stringOre, null]]);
recipes.addShaped("immc/dark_steel_shears", darkSteelShears,
        [[darkSteelIngot, null],
         [activatedCapacitor, darkSteelIngot]]);
recipes.addShaped("immc/dark_steel_crook", darkSteelCrook,
        [[darkSteelNugget, darkSteelIngot, darkSteelIngot],
         [null, activatedCapacitor, null],
         [treatedStickOre, null, null]]);
recipes.addShaped("immc/dark_steel_chestplate", darkSteelChestplate,
        [[darkSteelPlate, null, darkSteelPlate],
         [darkSteelPlate, activatedCapacitor, darkSteelPlate],
         [darkSteelPlate, darkSteelIngot, darkSteelPlate]]);
recipes.addShaped("immc/dark_steel_helmet", darkSteelHelmet,
        [[darkSteelPlate, darkSteelIngot, darkSteelPlate],
         [darkSteelPlate, activatedCapacitor, darkSteelPlate]]);
recipes.addShaped("immc/dark_steel_leggings", darkSteelLeggings,
        [[darkSteelPlate, darkSteelIngot, darkSteelPlate],
         [darkSteelPlate, activatedCapacitor, darkSteelPlate],
         [darkSteelPlate, null, darkSteelPlate]]);
recipes.addShaped("immc/dark_steel_boots", darkSteelBoots,
        [[darkSteelPlate, null, darkSteelPlate],
         [darkSteelIngot, activatedCapacitor, darkSteelIngot]]);

recipes.addShaped("immc/end_steel_sword", endSteelSword,
        [[null, endSteelIngot, endSteelIngot],
         [endSteelNugget, melodicCapacitor, endSteelIngot],
         [steelRodOre, endSteelNugget, null]]);
recipes.addShaped("immc/end_steel_pickaxe", endSteelPickaxe,
        [[endSteelNugget, endSteelIngot, endSteelIngot],
         [null, melodicCapacitor, endSteelIngot],
         [steelRodOre, null, endSteelNugget]]);
recipes.addShaped("immc/end_steel_axe", endSteelAxe,
        [[endSteelIngot, endSteelIngot, endSteelNugget],
         [endSteelIngot, melodicCapacitor, endSteelNugget],
         [steelRodOre, null, null]]);
recipes.addShaped("immc/end_steel_bow", endSteelBow,
        [[melodicCapacitor, endSteelIngot, endSteelNugget],
         [endSteelIngot, null, stringOre],
         [endSteelNugget, stringOre, null]]);
recipes.addShaped("immc/end_steel_chestplate", endSteelChestplate,
        [[endSteelPlate, null, endSteelPlate],
         [endSteelPlate, melodicCapacitor, endSteelPlate],
         [endSteelPlate, endSteelIngot, endSteelPlate]]);
recipes.addShaped("immc/end_steel_helmet", endSteelHelmet,
        [[endSteelPlate, endSteelIngot, endSteelPlate],
         [endSteelPlate, melodicCapacitor, endSteelPlate]]);
recipes.addShaped("immc/end_steel_leggings", endSteelLeggings,
        [[endSteelPlate, endSteelIngot, endSteelPlate],
         [endSteelPlate, melodicCapacitor, endSteelPlate],
         [endSteelPlate, null, endSteelPlate]]);
recipes.addShaped("immc/end_steel_boots", endSteelBoots,
        [[endSteelPlate, null, endSteelPlate],
         [endSteelIngot, melodicCapacitor, endSteelIngot]]);

recipes.addShaped("immc/stellar_alloy_sword", stellarAlloySword,
        [[null, stellarAlloyIngot, stellarAlloyIngot],
         [stellarAlloyNugget, enderCapacitor, stellarAlloyIngot],
         [steelRodOre, stellarAlloyNugget, null]]);
recipes.addShaped("immc/stellar_alloy_pickaxe", stellarAlloyPickaxe,
        [[stellarAlloyNugget, stellarAlloyIngot, stellarAlloyIngot],
         [null, enderCapacitor, stellarAlloyIngot],
         [steelRodOre, null, stellarAlloyNugget]]);
recipes.addShaped("immc/stellar_alloy_axe", stellarAlloyAxe,
        [[stellarAlloyIngot, stellarAlloyIngot, stellarAlloyNugget],
         [stellarAlloyIngot, enderCapacitor, stellarAlloyNugget],
         [steelRodOre, null, null]]);
recipes.addShaped("immc/stellar_alloy_chestplate", stellarAlloyChestplate,
        [[stellarAlloyPlate, null, stellarAlloyPlate],
         [stellarAlloyPlate, enderCapacitor, stellarAlloyPlate],
         [stellarAlloyPlate, stellarAlloyIngot, stellarAlloyPlate]]);
recipes.addShaped("immc/stellar_alloy_helmet", stellarAlloyHelmet,
        [[stellarAlloyPlate, stellarAlloyIngot, stellarAlloyPlate],
         [stellarAlloyPlate, enderCapacitor, stellarAlloyPlate]]);
recipes.addShaped("immc/stellar_alloy_leggings", stellarAlloyLeggings,
        [[stellarAlloyPlate, stellarAlloyIngot, stellarAlloyPlate],
         [stellarAlloyPlate, enderCapacitor, stellarAlloyPlate],
         [stellarAlloyPlate, null, stellarAlloyPlate]]);
recipes.addShaped("immc/stellar_alloy_boots", stellarAlloyBoots,
        [[stellarAlloyPlate, null, stellarAlloyPlate],
         [stellarAlloyIngot, enderCapacitor, stellarAlloyIngot]]);

recipes.addShaped("immc/end_rod", endRod,
        [[endSteelNugget],
         [melodicAlloyNugget]]);

recipes.addShaped("immc/dark_steel_bars", darkSteelBars * 16,
        [[darkSteelIngot, darkSteelIngot, darkSteelIngot],
         [darkSteelIngot, darkSteelIngot, darkSteelIngot]]);
recipes.addShaped("immc/reinforced_obsidian", reinforcedObsidian,
        [[null, darkSteelBars, null],
         [darkSteelBars, <ore:blockObsidian>, darkSteelBars],
         [null, darkSteelBars, null]]);

if (loadedMods has "improvedbackpacks") {
    recipes.addShaped("immc/glider_wing", gliderWing,
            [[null, null, darkSteelIngot],
             [null, darkSteelIngot, <ore:itemTannedLeather>],
             [darkSteelIngot, <ore:itemTannedLeather>, <ore:itemTannedLeather>]]);
} else {
    recipes.addShaped("immc/glider_wing", gliderWing,
           [[null, null, darkSteelIngot],
            [null, darkSteelIngot, <ore:itemLeather>],
            [darkSteelIngot, <ore:itemLeather>, <ore:itemLeather>]]);
}
recipes.addShaped("immc/glider", glider,
        [[gliderWing, <minecraft:elytra>, gliderWing]]);

recipes.addShaped("immc/killer_joe", killerJoe,
        [[soulariumPlate, soulariumPlate, soulariumPlate],
         [<ore:paneGlassColorless>, chargedZombieBattery, <ore:paneGlassColorless>],
         [darkSteelPlate, darkGear, darkSteelPlate]]);
recipes.addShaped("immc/vacuum_chest", vacuumChest,
        [[soulariumPlate, <ore:paneGlassColorless>, soulariumPlate],
         [<ore:paneGlassColorless>, <ore:itemAnyCrate>, <ore:paneGlassColorless>],
         [soulariumPlate, chargedZombieBattery, soulariumPlate]]);
recipes.addShaped("immc/xp_vacuum", xpVacuum,
        [[soulariumPlate, <ore:paneGlassColorless>, soulariumPlate],
         [<ore:paneGlassColorless>, <ore:itemFluidPipe>, <ore:paneGlassColorless>],
         [soulariumPlate, chargedZombieBattery, soulariumPlate]]);
recipes.addShaped("immc/xp_transfer_rod", xpRod,
        [[null, vibrantAlloyNugget, zombieBattery],
         [null, soulariumIngot, vibrantAlloyNugget],
         [soulariumIngot, null, null]]);


// FURNACE

// ingots from hidden enderio dusts
furnace.remove(<ore:ingotIron>.firstItem, <enderio:item_material:24>);
furnace.remove(<ore:ingotGold>.firstItem, <enderio:item_material:25>);

furnace.addRecipe(crystallineAlloyIngot, crystallineAlloyDust);
furnace.addRecipe(melodicAlloyIngot, melodicAlloyDust);
furnace.addRecipe(endSteelIngot, endSteelDust);
furnace.addRecipe(stellarAlloyIngot, stellarAlloyDust);

furnace.addRecipe(silicon, netherQuartzDust, 0.25);


// BLUEPRINT

Blueprint.addRecipe("Dark Steel Upgrades I", darkSteelUpgradeEmpoweredII,
        [darkSteelUpgrade, activatedCapacitor]);
Blueprint.addRecipe("Dark Steel Upgrades I", darkSteelUpgradeAnvilI,
        [darkSteelUpgrade, ironBlockOre]);
if (loadedMods has "improvedbackpacks" && loadedMods has "storagedrawers" && loadedMods has "refinedstorage") {
    Blueprint.addRecipe("Dark Steel Upgrades I", darkSteelUpgradeInventoryI,
           [darkSteelUpgrade, <improvedbackpacks:backpack>, <ore:chestWood>]);
} else {
    Blueprint.addRecipe("Dark Steel Upgrades I", darkSteelUpgradeInventoryI,
           [darkSteelUpgrade, <ore:chestWood> * 2]);
}
Blueprint.addRecipe("Dark Steel Upgrades I", darkSteelUpgradeJumpI,
        [darkSteelUpgrade, <minecraft:piston> * 2]);
Blueprint.addRecipe("Dark Steel Upgrades I", darkSteelUpgradeSpeedI,
        [darkSteelUpgrade, steelGear]);
Blueprint.addRecipe("Dark Steel Upgrades I", darkSteelUpgradeStepAssist,
        [darkSteelUpgrade, <ore:stairWood> * 4]);
Blueprint.addRecipe("Dark Steel Upgrades I", darkSteelUpgradePadding,
        [darkSteelUpgrade, <immersiveengineering:earmuffs>]);
Blueprint.addRecipe("Dark Steel Upgrades I", darkSteelUpgradeFlippers,
        [darkSteelUpgrade, <immersiveengineering:earmuffs>]);
Blueprint.addRecipe("Dark Steel Upgrades I", darkSteelUpgradeSoundDetector,
        [darkSteelUpgrade, <minecraft:noteblock>, <minecraft:observer>]);

Blueprint.addRecipe("Dark Steel Upgrades II", darkSteelUpgradeEmpoweredIII,
        [darkSteelUpgrade, crystallineCapacitor]);
Blueprint.addRecipe("Dark Steel Upgrades II", darkSteelUpgradeEmpoweredIV,
        [darkSteelUpgrade, melodicCapacitor]);
Blueprint.addRecipe("Dark Steel Upgrades II", darkSteelUpgradeAnvilII,
        [darkSteelUpgrade, minecraftAnvil]);
if (loadedMods has "improvedbackpacks" && loadedMods has "storagedrawers" && loadedMods has "refinedstorage") {
    Blueprint.addRecipe("Dark Steel Upgrades II", darkSteelUpgradeInventoryII,
           [darkSteelUpgrade, <improvedbackpacks:backpack>, <immersiveengineering:wooden_device0:0>, <storagedrawers:upgrade_storage:4>]);
} else {
    Blueprint.addRecipe("Dark Steel Upgrades II", darkSteelUpgradeInventoryII,
           [darkSteelUpgrade, <immersiveengineering:wooden_device0:0> * 2]);
}
Blueprint.addRecipe("Dark Steel Upgrades II", darkSteelUpgradeJumpII,
        [darkSteelUpgrade, <minecraft:piston> * 2, <immersiveengineering:metal_decoration0:4> * 2]);
Blueprint.addRecipe("Dark Steel Upgrades II", darkSteelUpgradeSpeedII,
        [darkSteelUpgrade, energeticGear]);
Blueprint.addRecipe("Dark Steel Upgrades II", darkSteelUpgradeDirect,
        [darkSteelUpgrade, magnet]);
Blueprint.addRecipe("Dark Steel Upgrades II", darkSteelUpgradeFork,
        [darkSteelUpgrade, <minecraft:iron_hoe>]);
Blueprint.addRecipe("Dark Steel Upgrades II", darkSteelUpgradeSpoon,
        [darkSteelUpgrade, <minecraft:iron_shovel>]);

Blueprint.addRecipe("Dark Steel Upgrades III", darkSteelUpgradeEmpoweredV,
        [darkSteelUpgrade, enderCapacitor]);
Blueprint.addRecipe("Dark Steel Upgrades III", darkSteelUpgradeAnvilIII,
        [darkSteelUpgrade, darkSteelAnvil]);
if (loadedMods has "improvedbackpacks" && loadedMods has "storagedrawers" && loadedMods has "refinedstorage") {
    Blueprint.addRecipe("Dark Steel Upgrades III", darkSteelUpgradeInventoryIII,
            [darkSteelUpgrade, <improvedbackpacks:backpack>, <immersiveengineering:wooden_device0:5>, <refinedstorage:storage_part:3>]);
} else {
    Blueprint.addRecipe("Dark Steel Upgrades III", darkSteelUpgradeInventoryIII,
            [darkSteelUpgrade, <immersiveengineering:wooden_device0:5> * 2]);
}
Blueprint.addRecipe("Dark Steel Upgrades III", darkSteelUpgradeJumpIII,
        [darkSteelUpgrade, <minecraft:piston> * 2, <immersiveengineering:metal_decoration0:5> * 2]);
Blueprint.addRecipe("Dark Steel Upgrades III", darkSteelUpgradeSpeedIII,
        [darkSteelUpgrade, vibrantGear]);
Blueprint.addRecipe("Dark Steel Upgrades III", darkSteelUpgradeNightVision,
        [darkSteelUpgrade, <immersiveengineering:material:27>, <immersiveengineering:stone_decoration:8> * 2]);
Blueprint.addRecipe("Dark Steel Upgrades III", darkSteelUpgradeElytra,
        [darkSteelUpgrade, <minecraft:elytra>]);
Blueprint.addRecipe("Dark Steel Upgrades III", darkSteelUpgradeGlider,
        [darkSteelUpgrade, glider]);

val dsuIBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "Dark Steel Upgrades I"});
val dsuIIBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "Dark Steel Upgrades II"});
val dsuIIIBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "Dark Steel Upgrades III"});

recipes.addShaped("immc/blueprint_dsi_i", dsuIBlueprint,
        [[darkSteelPlate, darkSteelUpgrade, darkSteelPlate],
         [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);
recipes.addShaped("immc/blueprint_dsi_ii", dsuIIBlueprint,
        [[endSteelPlate, darkSteelUpgrade, endSteelPlate],
         [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);
recipes.addShaped("immc/blueprint_dsi_iii", dsuIIIBlueprint,
        [[stellarAlloyPlate, darkSteelUpgrade, stellarAlloyPlate],
         [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);


// BOTTLING MACHINE

BottlingMachine.addRecipe(chargedZombieBattery, zombieBattery, <liquid:xpjuice> * 1000);


// METAL PRESS
val packingMold2x2 = <immersiveengineering:mold:5>;
val unpackingMold = <immersiveengineering:mold:7>;
val gearMold = <immersiveengineering:mold:1>;

MetalPress.addRecipe(soulariumIngot, soulariumNugget, packingMold2x2, 4000, 4);
MetalPress.addRecipe(soulariumNugget * 4, soulariumIngot, unpackingMold, 4000);
MetalPress.addRecipe(soulariumBlock, soulariumIngot, packingMold2x2, 4000, 4);
MetalPress.addRecipe(soulariumIngot * 4, soulariumBlock, unpackingMold, 4000);

MetalPress.addRecipe(darkSteelIngot, darkSteelNugget, packingMold2x2, 4000, 4);
MetalPress.addRecipe(darkSteelNugget * 4, darkSteelIngot, unpackingMold, 4000);
MetalPress.addRecipe(darkSteelBlock, darkSteelIngot, packingMold2x2, 4000, 4);
MetalPress.addRecipe(darkSteelIngot * 4, darkSteelBlock, unpackingMold, 4000);

MetalPress.addRecipe(endSteelIngot, endSteelNugget, packingMold2x2, 4000, 4);
MetalPress.addRecipe(endSteelNugget * 4, endSteelIngot, unpackingMold, 4000);
MetalPress.addRecipe(endSteelBlock, endSteelIngot, packingMold2x2, 4000, 4);
MetalPress.addRecipe(endSteelIngot * 4, endSteelBlock, unpackingMold, 4000);

MetalPress.addRecipe(energeticAlloyIngot, energeticAlloyNugget, packingMold2x2, 4000, 4);
MetalPress.addRecipe(energeticAlloyNugget * 4, energeticAlloyIngot, unpackingMold, 4000);
MetalPress.addRecipe(energeticAlloyBlock, energeticAlloyIngot, packingMold2x2, 4000, 4);
MetalPress.addRecipe(energeticAlloyIngot * 4, energeticAlloyBlock, unpackingMold, 4000);

MetalPress.addRecipe(vibrantAlloyIngot, vibrantAlloyNugget, packingMold2x2, 4000, 4);
MetalPress.addRecipe(vibrantAlloyNugget * 4, vibrantAlloyIngot, unpackingMold, 4000);
MetalPress.addRecipe(vibrantAlloyBlock, vibrantAlloyIngot, packingMold2x2, 4000, 4);
MetalPress.addRecipe(vibrantAlloyIngot * 4, vibrantAlloyBlock, unpackingMold, 4000);

MetalPress.addRecipe(crystallineAlloyIngot, crystallineAlloyNugget, packingMold2x2, 4000, 4);
MetalPress.addRecipe(crystallineAlloyNugget * 4, crystallineAlloyIngot, unpackingMold, 4000);
MetalPress.addRecipe(crystallineAlloyBlock, crystallineAlloyIngot, packingMold2x2, 4000, 4);
MetalPress.addRecipe(crystallineAlloyIngot * 4, crystallineAlloyBlock, unpackingMold, 4000);

MetalPress.addRecipe(melodicAlloyIngot, melodicAlloyNugget, packingMold2x2, 4000, 4);
MetalPress.addRecipe(melodicAlloyNugget * 4, melodicAlloyIngot, unpackingMold, 4000);
MetalPress.addRecipe(melodicAlloyBlock, melodicAlloyIngot, packingMold2x2, 4000, 4);
MetalPress.addRecipe(melodicAlloyIngot * 4, melodicAlloyBlock, unpackingMold, 4000);

MetalPress.addRecipe(stellarAlloyIngot, stellarAlloyNugget, packingMold2x2, 4000, 4);
MetalPress.addRecipe(stellarAlloyNugget * 4, stellarAlloyIngot, unpackingMold, 4000);
MetalPress.addRecipe(stellarAlloyBlock, stellarAlloyIngot, packingMold2x2, 4000, 4);
MetalPress.addRecipe(stellarAlloyIngot * 4, stellarAlloyBlock, unpackingMold, 4000);

MetalPress.addRecipe(steelGear, steelNuggetOre, gearMold, 2000, 4);


// CRUSHER


// ARC FURNACE / ALLOY SMELTER

// removals
ArcFurnace.removeRecipe(<ore:ingotElectricalSteel>.firstItem);
ArcFurnace.removeRecipe(<ore:ingotConductiveIron>.firstItem);
ArcFurnace.removeRecipe(soulariumIngot);
ArcFurnace.removeRecipe(energeticAlloyIngot);
ArcFurnace.removeRecipe(vibrantAlloyIngot);
ArcFurnace.removeRecipe(darkSteelIngot);

// silicon
ArcFurnace.addRecipe(silicon, netherQuartzDust, null, 100, 500);

// energetic
AlloySmelter.addRecipe(energeticAlloyIngot, <ore:dustRedstone>, <ore:dustElectrum> * 2, 1800);
ArcFurnace.addRecipe(energeticAlloyIngot, energeticAlloyDust, null, 60, 500);
ArcFurnace.addRecipe(energeticAlloyIngot, <ore:dustRedstone>, null, 300, 1000, [<ore:dustElectrum> * 2]);

// dark
AlloySmelter.addRecipe(darkSteelIngot, <ore:dustObsidian>, <ore:dustSteel> * 2, 2000);
ArcFurnace.addRecipe(darkSteelIngot, darkSteelDust, null, 60, 500);
ArcFurnace.addRecipe(darkSteelIngot, <ore:dustObsidian>, null, 400, 2000, [<ore:dustSteel> * 2]);

// soularium
ArcFurnace.addRecipe(soulariumIngot, soulariumDust, null, 60, 500);
ArcFurnace.addRecipe(soulariumIngot, <ore:dustSoul>, null, 200, 1000, [<ore:dustConstantan> * 2, <ore:itemSkull>]);

// crystalline
ArcFurnace.addRecipe(crystallineAlloyIngot, <ore:dustDiamond>, null, 500, 2000, [<ore:dustNickel> * 2, <ore:dustPrismarine>]);

// end
ArcFurnace.addRecipe(endSteelIngot, <ore:dustEndStone>, null, 700, 3000, [<ore:dustDarkSteel> * 3]);

// melodic
ArcFurnace.addRecipe(melodicAlloyIngot, <ore:dustGlowstone>, null, 900, 3000, [<ore:dustUranium> * 2, <ore:bottleDragonsBreath>]);

// vibrant
ArcFurnace.addRecipe(vibrantAlloyIngot, vibrantAlloyDust, null, 60, 500);
ArcFurnace.addRecipe(vibrantAlloyIngot, <ore:dustEmerald>, null, 360, 1500, [<ore:dustEnergeticAlloy> * 2, <ore:endereye>]);

// stellar
ArcFurnace.addRecipe(stellarAlloyIngot, <ore:dustNetherStar>, null, 1200, 4000, [<ore:dustEndSteel> * 3, <ore:dustMelodicAlloy> * 2]);
