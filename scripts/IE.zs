#modloaded immersiveengineering

import mods.jei.JEI;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Blueprint;

val slag = <immersiveengineering:material:7>;

val plateMold = <immersiveengineering:mold>;
val gearMold = <immersiveengineering:mold:1>;
val rodMold = <immersiveengineering:mold:2>;
val packingMold2x2 = <immersiveengineering:mold:5>;
val packingMold3x3 = <immersiveengineering:mold:6>;
val unpackingMold = <immersiveengineering:mold:7>;


// ~~~ Recipes for progression/difficulty ~~~

// Slime balls
Squeezer.addRecipe(<minecraft:slime_ball>, <liquid:water> * 250, <minecraft:cactus>, 2048);

// Redstone
recipes.remove(<minecraft:redstone>);
recipes.remove(<minecraft:redstone_block>);
furnace.remove(<minecraft:redstone>);
Crusher.removeRecipesForInput(<minecraft:redstone_ore>);
MetalPress.addRecipe(<minecraft:redstone_block>, <ore:dustRedstone>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(<minecraft:redstone> * 9, <ore:blockRedstone>, unpackingMold, 2048);

// Glowstone
recipes.remove(<minecraft:glowstone>);
Crusher.removeRecipesForInput(<minecraft:glowstone>);
AlloySmelter.addRecipe(<minecraft:glowstone_dust> * 2, <minecraft:redstone>, <ore:dustElectrum>, 1536);
ArcFurnace.addRecipe(<minecraft:glowstone_dust> * 2, <minecraft:redstone>, null, 512, 200, [ <ore:dustElectrum> ]);
MetalPress.addRecipe(<minecraft:glowstone>, <ore:dustGlowstone>, packingMold2x2, 2048, 4);
MetalPress.addRecipe(<minecraft:glowstone_dust> * 4, <ore:glowstone>, unpackingMold, 2048);

// Blaze powder/rods
recipes.remove(<minecraft:blaze_powder>);
AlloySmelter.addRecipe(<minecraft:blaze_powder>, <ore:dustGlowstone>, <ore:gunpowder>, 1200);
MetalPress.addRecipe(<minecraft:blaze_rod>, <minecraft:blaze_powder>, rodMold, 2048, 6);

// Hardened Brick
val hardenedBrick = <contenttweaker:hardened_brick>;
AlloySmelter.addRecipe(hardenedBrick, <minecraft:clay_ball>, <ore:dustIron>, 120);

// Quartz
recipes.remove(<minecraft:quartz_block>);
Crusher.removeRecipesForInput(<minecraft:quartz_ore>);
Crusher.removeRecipesForInput(<minecraft:quartz_block>);
MetalPress.addRecipe(<minecraft:quartz_block>, <ore:gemQuartz>, packingMold2x2, 2048, 4);
MetalPress.addRecipe(<minecraft:quartz> * 4, <ore:blockQuartz>, unpackingMold, 2048);
MetalPress.addRecipe(<contenttweaker:compressed_quartz_1>, <ore:blockQuartz>, packingMold2x2, 4096, 4);
MetalPress.addRecipe(<ore:blockQuartz>.firstItem * 4, <contenttweaker:compressed_quartz_1>, unpackingMold, 4096);
MetalPress.addRecipe(<contenttweaker:compressed_quartz_2>, <contenttweaker:compressed_quartz_1>, packingMold2x2, 8192, 4);
MetalPress.addRecipe(<contenttweaker:compressed_quartz_1> * 4, <contenttweaker:compressed_quartz_2>, unpackingMold, 8192);
MetalPress.addRecipe(<contenttweaker:compressed_quartz_3>, <contenttweaker:compressed_quartz_2>, packingMold2x2, 16384, 4);
MetalPress.addRecipe(<contenttweaker:compressed_quartz_2> * 4, <contenttweaker:compressed_quartz_3>, unpackingMold, 16384);
recipes.addShaped("immc/quartz_star", <contenttweaker:quartz_star>,
    [ [ null, <contenttweaker:compressed_quartz_3>, null ],
      [ <contenttweaker:compressed_quartz_3>, <contenttweaker:compressed_quartz_3>, <contenttweaker:compressed_quartz_3> ],
      [ null, <contenttweaker:compressed_quartz_3>, null ] ]);

// Diamond
recipes.remove(<minecraft:diamond>);
recipes.remove(<minecraft:diamond_block>);
furnace.remove(<minecraft:diamond>);
Crusher.removeRecipesForInput(<minecraft:diamond_ore>);

// Emerald
recipes.remove(<minecraft:emerald>);
recipes.remove(<minecraft:emerald_block>);
furnace.remove(<minecraft:emerald>);
Crusher.removeRecipesForInput(<minecraft:emerald_ore>);

// Ender pearl/eye
recipes.remove(<minecraft:ender_eye>);
AlloySmelter.addRecipe(<minecraft:ender_pearl>, <ore:gemDiamond> * 2, <ore:gemEmerald> * 2, 3600);
BlastFurnace.addRecipe(<contenttweaker:refined_ender_pearl>, <ore:enderpearl>, 1200);
ArcFurnace.addRecipe(<minecraft:ender_pearl>, <ore:gemDiamond> * 2, null, 512, 1200, [ <ore:gemEmerald> * 2 ]);
ArcFurnace.addRecipe(<minecraft:ender_eye>, <ore:enderpearl>, null, 600, 1536, [ <minecraft:blaze_powder> * 8, <ore:dustCoke> * 4 ]);
ArcFurnace.addRecipe(<minecraft:ender_eye>, <contenttweaker:refined_ender_pearl>, null, 300, 1536, [ <minecraft:blaze_powder> * 8 ]);

// Obsidian Alloy
AlloySmelter.addRecipe(<ore:ingotObsidianEnderAlloy>.firstItem, <ore:obsidian>, <contenttweaker:refined_ender_pearl>, 1200);
ArcFurnace.addRecipe(<ore:ingotObsidianEnderAlloy>.firstItem, <ore:obsidian>, null, 512, 600, [ <contenttweaker:refined_ender_pearl> ]);
MetalPress.addRecipe(<ore:blockObsidianEnderAlloy>.firstItem, <ore:ingotObsidianEnderAlloy>, packingMold3x3, 8192, 9);
MetalPress.addRecipe(<ore:ingotObsidianEnderAlloy>.firstItem * 9, <ore:blockObsidianEnderAlloy>, unpackingMold, 8192);

// Nether Star
ArcFurnace.addRecipe(<minecraft:nether_star>, <contenttweaker:quartz_star>, null, 2400, 3072, [ <minecraft:blaze_powder> * 64 ]);

// -- Metals --

// Iron
val ironIngot = <minecraft:iron_ingot>;
val ironBlock = <minecraft:iron_block>;
val ironNugget = <minecraft:iron_nugget>;
val ironNuggetIE = <immersiveengineering:metal:29>;
val ironGrit = <immersiveengineering:metal:18>;
furnace.remove(ironIngot);
furnace.remove(ironNugget);
recipes.remove(ironIngot);
recipes.remove(ironBlock);
recipes.remove(ironNugget);
recipes.remove(ironNuggetIE);
recipes.removeShaped(<immersiveengineering:material:1>, [[ironIngot],
                                                         [ironIngot]]);
ArcFurnace.removeRecipe(ironIngot);
furnace.addRecipe(ironIngot, <ore:dustIron>);
BlastFurnace.addRecipe(ironIngot, <ore:dustIron>, 120);
BlastFurnace.addRecipe(ironIngot, <ore:oreIron>, 200);
ArcFurnace.addRecipe(ironIngot, <ore:dustIron>, null, 60, 512);
ArcFurnace.addRecipe(ironIngot, <ore:oreIron>, null, 120, 512);
MetalPress.addRecipe(ironIngot, <ore:nuggetIron>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(ironNuggetIE * 9, <ore:ingotIron>, unpackingMold, 2048);
MetalPress.addRecipe(ironBlock, <ore:ingotIron>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(ironIngot * 9, <ore:blockIron>, unpackingMold, 2048);

// Gold
val goldIngot = <minecraft:gold_ingot>;
val goldBlock = <minecraft:gold_block>;
val goldNugget = <minecraft:gold_nugget>;
furnace.remove(goldIngot);
recipes.remove(goldIngot);
recipes.remove(goldBlock);
recipes.remove(goldNugget);
recipes.removeShaped(<immersiveposts:stick_gold>, [[ goldIngot ],
                                                   [ goldIngot ]]);
ArcFurnace.removeRecipe(goldIngot);
furnace.addRecipe(goldIngot, <ore:dustGold>);
BlastFurnace.addRecipe(goldIngot, <ore:dustGold>, 120);
BlastFurnace.addRecipe(goldIngot, <ore:oreGold>, 200);
ArcFurnace.addRecipe(goldIngot, <ore:dustGold>, null, 60, 512);
ArcFurnace.addRecipe(goldIngot, <ore:oreGold>, null, 120, 512);
MetalPress.addRecipe(goldIngot, <ore:nuggetGold>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(goldNugget * 9, <ore:ingotGold>, unpackingMold, 2048);
MetalPress.addRecipe(goldBlock, <ore:ingotGold>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(goldIngot * 9, <ore:blockGold>, unpackingMold, 2048);

// Copper
val copperIngot = <immersiveengineering:metal>;
val copperBlock = <immersiveengineering:storage>;
val copperNugget = <immersiveengineering:metal:20>;
furnace.remove(copperIngot);
recipes.remove(copperIngot);
recipes.remove(copperBlock);
recipes.remove(copperNugget);
recipes.removeShaped(<immersiveposts:stick_copper>, [[copperIngot],
                                                     [copperIngot]]);
ArcFurnace.removeRecipe(copperIngot);
furnace.addRecipe(copperIngot, <ore:dustCopper>);
BlastFurnace.addRecipe(copperIngot, <ore:dustCopper>, 120);
BlastFurnace.addRecipe(copperIngot, <ore:oreCopper>, 200);
ArcFurnace.addRecipe(copperIngot, <ore:dustCopper>, null, 60, 512);
ArcFurnace.addRecipe(copperIngot, <ore:oreCopper>, null, 120, 512);
MetalPress.addRecipe(copperIngot, <ore:nuggetCopper>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(copperNugget * 9, <ore:ingotCopper>, unpackingMold, 2048);
MetalPress.addRecipe(copperBlock, <ore:ingotCopper>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(copperIngot * 9, <ore:blockCopper>, unpackingMold, 2048);

// Aluminum
val aluminumIngot = <immersiveengineering:metal:1>;
val aluminumBlock = <immersiveengineering:storage:1>;
val aluminumNugget = <immersiveengineering:metal:21>;
furnace.remove(aluminumIngot);
recipes.remove(aluminumIngot);
recipes.remove(aluminumBlock);
recipes.remove(aluminumNugget);
recipes.removeShaped(<immersiveengineering:material:3>, [[aluminumIngot],
                                                         [aluminumIngot]]);
ArcFurnace.removeRecipe(aluminumIngot);
furnace.addRecipe(aluminumIngot, <ore:dustAluminum>);
BlastFurnace.addRecipe(aluminumIngot, <ore:dustAluminum>, 120);
BlastFurnace.addRecipe(aluminumIngot, <ore:oreAluminum>, 200);
ArcFurnace.addRecipe(aluminumIngot, <ore:dustAluminum>, null, 60, 512);
ArcFurnace.addRecipe(aluminumIngot, <ore:oreAluminum>, null, 120, 512);
MetalPress.addRecipe(aluminumIngot, <ore:nuggetAluminum>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(aluminumNugget * 9, <ore:ingotAluminum>, unpackingMold, 2048);
MetalPress.addRecipe(aluminumBlock, <ore:ingotAluminum>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(aluminumIngot * 9, <ore:blockAluminum>, unpackingMold, 2048);

// Lead
val leadIngot = <immersiveengineering:metal:2>;
val leadBlock = <immersiveengineering:storage:2>;
val leadNugget = <immersiveengineering:metal:22>;
furnace.remove(leadIngot);
recipes.remove(leadIngot);
recipes.remove(leadBlock);
recipes.remove(leadNugget);
recipes.removeShaped(<immersiveposts:stick_lead>, [[leadIngot],
                                                   [leadIngot]]);
ArcFurnace.removeRecipe(leadIngot);
furnace.addRecipe(leadIngot, <ore:dustLead>);
BlastFurnace.addRecipe(leadIngot, <ore:dustLead>, 120);
BlastFurnace.addRecipe(leadIngot, <ore:oreLead>, 200);
ArcFurnace.addRecipe(leadIngot, <ore:dustLead>, null, 60, 512);
ArcFurnace.addRecipe(leadIngot, <ore:oreLead>, null, 120, 512);
MetalPress.addRecipe(leadIngot, <ore:nuggetLead>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(leadNugget * 9, <ore:ingotLead>, unpackingMold, 2048);
MetalPress.addRecipe(leadBlock, <ore:ingotLead>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(leadIngot * 9, <ore:blockLead>, unpackingMold, 2048);

// Silver
val silverIngot = <immersiveengineering:metal:3>;
val silverBlock = <immersiveengineering:storage:3>;
val silverNugget = <immersiveengineering:metal:23>;
furnace.remove(silverIngot);
recipes.remove(silverIngot);
recipes.remove(silverBlock);
recipes.remove(silverNugget);
recipes.removeShaped(<immersiveposts:stick_silver>, [[silverIngot],
                                                     [silverIngot]]);
ArcFurnace.removeRecipe(silverIngot);
furnace.addRecipe(silverIngot, <ore:dustSilver>);
BlastFurnace.addRecipe(silverIngot, <ore:dustSilver>, 120);
BlastFurnace.addRecipe(silverIngot, <ore:oreSilver>, 200);
ArcFurnace.addRecipe(silverIngot, <ore:dustSilver>, null, 60, 512);
ArcFurnace.addRecipe(silverIngot, <ore:oreSilver>, null, 120, 512);
MetalPress.addRecipe(silverIngot, <ore:nuggetSilver>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(silverNugget * 9, <ore:ingotSilver>, unpackingMold, 2048);
MetalPress.addRecipe(silverBlock, <ore:ingotSilver>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(silverIngot * 9, <ore:blockSilver>, unpackingMold, 2048);

// Nickel
val nickelIngot = <immersiveengineering:metal:4>;
val nickelBlock = <immersiveengineering:storage:4>;
val nickelNugget = <immersiveengineering:metal:24>;
furnace.remove(nickelIngot);
recipes.remove(nickelIngot);
recipes.remove(nickelBlock);
recipes.remove(nickelNugget);
recipes.removeShaped(<immersiveposts:stick_nickel>, [[nickelIngot],
                                                     [nickelIngot]]);
ArcFurnace.removeRecipe(nickelIngot);
furnace.addRecipe(nickelIngot, <ore:dustNickel>);
BlastFurnace.addRecipe(nickelIngot, <ore:dustNickel>, 120);
BlastFurnace.addRecipe(nickelIngot, <ore:oreNickel>, 200);
ArcFurnace.addRecipe(nickelIngot, <ore:dustNickel>, null, 60, 512);
ArcFurnace.addRecipe(nickelIngot, <ore:oreNickel>, null, 120, 512);
MetalPress.addRecipe(nickelIngot, <ore:nuggetNickel>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(nickelNugget * 9, <ore:ingotNickel>, unpackingMold, 2048);
MetalPress.addRecipe(nickelBlock, <ore:ingotNickel>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(nickelIngot * 9, <ore:blockNickel>, unpackingMold, 2048);

// Uranium
val uraniumIngot = <immersiveengineering:metal:5>;
val uraniumBlock = <immersiveengineering:storage:5>;
val uraniumNugget = <immersiveengineering:metal:25>;
furnace.remove(uraniumIngot);
recipes.remove(uraniumIngot);
recipes.remove(uraniumBlock);
recipes.remove(uraniumNugget);
recipes.removeShaped(<immersiveposts:stick_uranium>, [[uraniumIngot],
                                                      [uraniumIngot]]);
ArcFurnace.removeRecipe(uraniumIngot);
furnace.addRecipe(uraniumIngot, <ore:dustUranium>);
BlastFurnace.addRecipe(uraniumIngot, <ore:dustUranium>, 120);
BlastFurnace.addRecipe(uraniumIngot, <ore:oreUranium>, 200);
ArcFurnace.addRecipe(uraniumIngot, <ore:dustUranium>, null, 60, 512);
ArcFurnace.addRecipe(uraniumIngot, <ore:oreUranium>, null, 120, 512);
MetalPress.addRecipe(uraniumIngot, <ore:nuggetUranium>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(uraniumNugget * 9, <ore:ingotUranium>, unpackingMold, 2048);
MetalPress.addRecipe(uraniumBlock, <ore:ingotUranium>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(uraniumIngot * 9, <ore:blockUranium>, unpackingMold, 2048);

// Constantan
val constantanIngot = <immersiveengineering:metal:6>;
val constantanBlock = <immersiveengineering:storage:6>;
val constantanNugget = <immersiveengineering:metal:26>;
furnace.remove(constantanIngot);
recipes.remove(constantanIngot);
recipes.remove(constantanBlock);
recipes.remove(constantanNugget);
recipes.removeShaped(<immersiveposts:stick_constantan>, [[constantanIngot],
                                                         [constantanIngot]]);
AlloySmelter.removeRecipe(constantanIngot);
AlloySmelter.addRecipe(constantanIngot, <ore:dustCopper>, <ore:dustNickel>, 200);
ArcFurnace.removeRecipe(constantanIngot);
BlastFurnace.addRecipe(constantanIngot, <ore:dustConstantan>, 150);
ArcFurnace.addRecipe(constantanIngot, <ore:dustConstantan>, slag, 100, 512);
MetalPress.addRecipe(constantanIngot, <ore:nuggetConstantan>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(constantanNugget * 9, <ore:ingotConstantan>, unpackingMold, 2048);
MetalPress.addRecipe(constantanBlock, <ore:ingotConstantan>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(constantanIngot * 9, <ore:blockConstantan>, unpackingMold, 2048);

// Electrum
val electrumIngot = <immersiveengineering:metal:7>;
val electrumBlock = <immersiveengineering:storage:7>;
val electrumNugget = <immersiveengineering:metal:27>;
furnace.remove(electrumIngot);
recipes.remove(electrumIngot);
recipes.remove(electrumBlock);
recipes.remove(electrumNugget);
recipes.removeShaped(<immersiveposts:stick_electrum>, [[electrumIngot],
                                                       [electrumIngot]]);
AlloySmelter.removeRecipe(electrumIngot);
AlloySmelter.addRecipe(electrumIngot, <ore:dustGold>, <ore:dustSilver>, 220);
ArcFurnace.removeRecipe(electrumIngot);
BlastFurnace.addRecipe(electrumIngot, <ore:dustElectrum>, 170);
ArcFurnace.addRecipe(electrumIngot, <ore:dustElectrum>, slag, 120, 512);
MetalPress.addRecipe(electrumIngot, <ore:nuggetElectrum>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(electrumNugget * 9, <ore:ingotElectrum>, unpackingMold, 2048);
MetalPress.addRecipe(electrumBlock, <ore:ingotElectrum>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(electrumIngot * 9, <ore:blockElectrum>, unpackingMold, 2048);

// Steel
val steelIngot = <immersiveengineering:metal:8>;
val steelBlock = <immersiveengineering:storage:8>;
val steelNugget = <immersiveengineering:metal:28>;
furnace.remove(steelIngot);
recipes.remove(steelIngot);
recipes.remove(steelBlock);
recipes.remove(steelNugget);
recipes.removeShaped(<immersiveengineering:material:2>, [[steelIngot],
                                                         [steelIngot]]);
MetalPress.addRecipe(steelIngot, <ore:nuggetSteel>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(steelNugget * 9, <ore:ingotSteel>, unpackingMold, 2048);
MetalPress.addRecipe(steelBlock, <ore:ingotSteel>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(steelIngot * 9, <ore:blockSteel>, unpackingMold, 2048);

// Graphite
val graphiteIngot = <immersiveengineering:material:19>;
furnace.remove(graphiteIngot);
BlastFurnace.addRecipe(graphiteIngot, <ore:dustHOPGraphite>, 260);


// -- Multiblocks --

recipes.addShaped("immc/blast_brick", <immersiveengineering:stone_decoration:1>,
    [ [ hardenedBrick, hardenedBrick, hardenedBrick ],
      [ hardenedBrick, <minecraft:blaze_powder>, hardenedBrick ],
      [ hardenedBrick, hardenedBrick, hardenedBrick ] ]);


// -- Remove other recipes ---

JEI.removeAndHide(<immersiveengineering:axe_steel>);
JEI.removeAndHide(<immersiveengineering:pickaxe_steel>);
JEI.removeAndHide(<immersiveengineering:shovel_steel>);
JEI.removeAndHide(<immersiveengineering:sword_steel>);

recipes.removeByRecipeName("immersiveengineering:material/component_iron");
recipes.removeByRecipeName("immersiveengineering:material/component_steel");
recipes.removeByRecipeName("immersiveengineering:tool/shield");
recipes.removeByRecipeName("immersiveengineering:stone_decoration/blastbrick");

MetalPress.removeRecipe(<immersiveengineering:graphite_electrode>);

Crusher.removeRecipesForInput(<minecraft:clay>);