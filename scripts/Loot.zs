#modloaded loottweaker

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.Functions;

// ~~~ REMOVE ~~~

val endCityChestTable = LootTables.getTable("minecraft:chests/end_city_treasure");
val endCityChestMainPool = endCityChestTable.getPool("main");
endCityChestMainPool.removeEntry("minecraft:diamond_sword");
endCityChestMainPool.removeEntry("minecraft:diamond_pickaxe");
endCityChestMainPool.removeEntry("minecraft:diamond_shovel");
endCityChestMainPool.removeEntry("minecraft:diamond_boots");
endCityChestMainPool.removeEntry("minecraft:diamond_leggings");
endCityChestMainPool.removeEntry("minecraft:diamond_chestplate");
endCityChestMainPool.removeEntry("minecraft:diamond_helmet");

val netherBridgeTable = LootTables.getTable("minecraft:chests/nether_bridge");
val netherBridgeMainPool = netherBridgeTable.getPool("main");
netherBridgeMainPool.removeEntry("minecraft:golden_sword");
netherBridgeMainPool.removeEntry("minecraft:golden_chestplate");

val strongholdCorridorTable = LootTables.getTable("minecraft:chests/stronghold_corridor");
val strongholdCorridorMainPool = strongholdCorridorTable.getPool("main");

val strongholdCrossingTable = LootTables.getTable("minecraft:chests/stronghold_crossing");
val strongholdCrossingMainPool = strongholdCrossingTable.getPool("main");

val strongholdLibraryTable = LootTables.getTable("minecraft:chests/stronghold_library");
val strongholdLibraryMainPool = strongholdLibraryTable.getPool("main");

val villageBlacksmithTable = LootTables.getTable("minecraft:chests/village_blacksmith");
val villageBlacksmithMainPool = villageBlacksmithTable.getPool("main");

val abandonedMineshaftTable = LootTables.getTable("minecraft:chests/abandoned_mineshaft");
val abandonedMineshaftMainPool = abandonedMineshaftTable.getPool("main");

val woodlandMansionTable = LootTables.getTable("minecraft:chests/woodland_mansion");
val woodlandMansionMainPool = woodlandMansionTable.getPool("main");
woodlandMansionMainPool.removeEntry("minecraft:chainmail_chestplate");
woodlandMansionMainPool.removeEntry("minecraft:diamond_chestplate");

val iglooChestTable = LootTables.getTable("minecraft:chests/igloo_chest");
val iglooChestMainPool = iglooChestTable.getPool("main");
iglooChestMainPool.removeEntry("minecraft:stone_axe");

val desertPyramidTable = LootTables.getTable("minecraft:chests/desert_pyramid");
val desertPyramidMainPool = desertPyramidTable.getPool("main");

val jungleTempleTable = LootTables.getTable("minecraft:chests/jungle_temple");
val jungleTempleMainPool = jungleTempleTable.getPool("main");

val simpleDungeonTable = LootTables.getTable("minecraft:chests/simple_dungeon");
val simpleDungeonMainPool = simpleDungeonTable.getPool("main");

val spawnBonusChestTable = LootTables.getTable("minecraft:chests/spawn_bonus_chest");
val spawnBonusChestMainPool = spawnBonusChestTable.getPool("main");
spawnBonusChestMainPool.removeEntry("minecraft:stone_axe");
//spawnBonusChestMainPool.removeEntry("minecraft:wooden_axe");
val spawnBonusChestPool1 = spawnBonusChestTable.getPool("pool1");
spawnBonusChestPool1.removeEntry("minecraft:stone_pickaxe");
//spawnBonusChestPool1.removeEntry("minecraft:wooden_pickaxe");

val fishingJunkTable = LootTables.getTable("minecraft:gameplay/fishing/junk");
val fishingJunkMainPool = fishingJunkTable.getPool("main");

val fishingTreasureTable = LootTables.getTable("minecraft:gameplay/fishing/treasure");
val fishingTreasureMainPool = fishingTreasureTable.getPool("main");


val guardianTable = LootTables.getTable("minecraft:entities/guardian");
val guardianPool1 = guardianTable.getPool("pool1");


// ~~~ ADD ~~~


val endermanTable = LootTables.getTable("minecraft:entities/enderman");
val endermanChorusPool = endermanTable.addPool("chorus", 0, 1, 0, 0);

endermanChorusPool.addItemEntryHelper(<minecraft:chorus_fruit>, 1, 1, [
    Functions.setCount(0, 1),
    Functions.lootingEnchantBonus(0, 1, 0)
], []);
