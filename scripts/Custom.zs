#priority 10

// ~~~ Custom OreDict Entries ~~~

// Misc. custom items
<ore:grout>.add(<contenttweaker:grout>);
<ore:itemHardenedBrick>.add(<contenttweaker:hardened_brick>);

<ore:dustSaw>.add(<contenttweaker:sawdust>);
<ore:itemSoakedLeather>.add(<contenttweaker:soaked_leather>);

<ore:dustNetherStar>.add(<contenttweaker:nether_star_dust>);

// Vanilla
<ore:fuelCoal>.add(<minecraft:coal>);
<ore:blockObsidian>.add(<minecraft:obsidian>);
<ore:blockGlowstone>.add(<minecraft:glowstone>);
<ore:blockEndStone>.add(<minecraft:end_stone>);
<ore:fruitChorus>.add(<minecraft:chorus_fruit>);
<ore:endereye>.add(<minecraft:ender_eye>);
<ore:rodBlaze>.add(<minecraft:blaze_rod>);
<ore:dustBlaze>.add(<minecraft:blaze_powder>);
<ore:skullWither>.add(<minecraft:skull:1>);
<ore:skullDragon>.add(<minecraft:skull:5>);
<ore:eggDragon>.add(<minecraft:dragon_egg>);
<ore:itemSponge>.add(<minecraft:sponge:0>);
<ore:itemWetSponge>.add(<minecraft:sponge:1>);
<ore:bottleDragonsBreath>.add(<minecraft:dragon_breath>);
<ore:starNether>.add(<minecraft:nether_star>);
<ore:itemAnyLeather>.add(<minecraft:leather>);
<ore:itemMagmaCream>.add(<minecraft:magma_cream>);
<ore:tnt>.add(<minecraft:tnt>);
<ore:piston>.add(<minecraft:piston>);
<ore:fishClown>.add(<minecraft:fish:2>);
<ore:fishPuffer>.add(<minecraft:fish:3>);
<ore:eyeSpider>.add(<minecraft:spider_eye>);
<ore:itemLilypad>.add(<minecraft:waterlily>);
<ore:toolFishingRod>.add(<minecraft:fishing_rod>);
<ore:bottleXp>.add(<minecraft:experience_bottle>);
<ore:fruitPoppedChorus>.add(<minecraft:chorus_fruit_popped>);
<ore:itemCocoaBeans>.add(<minecraft:dye:3>);
<ore:sandSoul>.add(<minecraft:soul_sand>);

// Other
<ore:itemCrate>.add(<immersiveengineering:wooden_device0:0>);
<ore:itemReinforcedCrate>.add(<immersiveengineering:wooden_device0:5>);
<ore:itemAnyCrate>.add(<immersiveengineering:wooden_device0:0>);
<ore:itemAnyCrate>.add(<immersiveengineering:wooden_device0:5>);
<ore:itemFluidPipe>.add(<immersiveengineering:metal_device1:6>);
<ore:itemBulletCasing>.add(<immersiveengineering:bullet:0>);
<ore:itemCircuitBoard>.add(<immersiveengineering:material:27>);
<ore:blockLightEng>.add(<immersiveengineering:metal_decoration0:4>);
<ore:blockHeavyEng>.add(<immersiveengineering:metal_decoration0:5>);
if (loadedMods has "improvedbackpacks") {
    <ore:itemBoundLeather>.add(<improvedbackpacks:bound_leather>);
    <ore:itemAnyLeather>.add(<improvedbackpacks:bound_leather>);
    <ore:itemTannedLeather>.add(<improvedbackpacks:tanned_leather>);
    <ore:itemAnyLeather>.add(<improvedbackpacks:tanned_leather>);
}
if (loadedMods has "quark") {
    <ore:logWood>.add(<quark:bark:*>);
    <ore:dustSoul>.add(<quark:soul_powder>);
    <ore:dustWither>.add(<quark:black_ash>);
}
if (loadedMods has "ceramics") {
    <ore:bucketClay>.add(<ceramics:clay_bucket>);
}
if (loadedMods has "witherskelefix") {
    <ore:ingotWither>.add(<witherskelefix:fragment>);
}
if (loadedMods has "engineersdecor") {
    val treatedWoodCraftingBench = <engineersdecor:treated_wood_crafting_table>;
    <ore:workbench>.add(treatedWoodCraftingBench);
    <ore:craftingTableWood>.add(treatedWoodCraftingBench);
    <ore:craftingTableTreatedWood>.add(treatedWoodCraftingBench);
}
if (loadedMods has "storagedrawers") {
    <ore:upgradeDrawerStorageV>.add(<storagedrawers:upgrade_storage:4>);
}
if (loadedMods has "enderio") {
    <ore:dustEnderpearl>.add(<enderio:item_material:28>);
    <ore:itemSkullEnderman>.add(<enderio:block_enderman_skull>);
    <ore:itemXpCharged>.add(<enderio:item_material:42>);
    <ore:blockWitherProof>.add(<enderio:block_reinforced_obsidian>);
    <ore:arrowWithering>.add(<minecraft:tipped_arrow>.withTag({Potion: "enderio:withering"}));
    <ore:dyeBlue>.add(<enderio:item_material:32>);

    val activatedCapacitor = <enderio:item_basic_capacitor:2>;
    val crystallineCapacitor = <enderio:item_capacitor_crystalline>;
    val melodicCapacitor = <enderio:item_capacitor_melodic>;
    val enderCapacitor = <enderio:item_material:43>;
    val stellarCapacitor = <enderio:item_capacitor_stellar>;
    <ore:capacitorAny>.add(activatedCapacitor);
    <ore:capacitorActivated>.add(activatedCapacitor);
    <ore:capacitorAny>.add(crystallineCapacitor);
    <ore:capacitorCrystalline>.add(crystallineCapacitor);
    <ore:capacitorAny>.add(melodicCapacitor);
    <ore:capacitorMelodic>.add(melodicCapacitor);
    <ore:capacitorAny>.add(enderCapacitor);
    <ore:capacitorEnder>.add(enderCapacitor);
    <ore:capacitorAny>.add(stellarCapacitor);
    <ore:capacitorStellar>.add(stellarCapacitor);
}
