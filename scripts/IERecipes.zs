import mods.jei.JEI;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.ArcFurnace;

val slag = <immersiveengineering:material:7>;

val plateMold = <immersiveengineering:mold>;
val packingMold2x2 = <immersiveengineering:mold:5>;
val packingMold3x3 = <immersiveengineering:mold:6>;
val unpackingMold = <immersiveengineering:mold:7>;


// ~~~ Recipes for progression/difficulty ~~~

val cobblestoneOre = <ore:cobblestone>;

// Nether rack, brick & wart
val mushroom = <ore:mushroomAny>;
val netherrack = <minecraft:netherrack>;
val netherrackOre = <ore:netherrack>;
val netherBrick = <minecraft:netherbrick>;
val netherBrickOre = <ore:ingotBrickNether>;
val netherBrickBlk = <minecraft:nether_brick>;
val netherWart = <minecraft:nether_wart>;
val netherWartOre = <ore:cropNetherWart>;
AlloySmelter.addRecipe(netherrack, cobblestoneOre, netherWartOre, 40);
//AlloySmelter.addRecipe(netherWart, netherrackOre * 4, mushroom, 240);
//AlloySmelter.addRecipe(netherBrickBlk, netherBrickOre * 2, netherBrickOre * 2, 240);

// Slime balls
Squeezer.addRecipe(<minecraft:slime_ball>, <liquid:water> * 250, <minecraft:cactus>, 2048);

// Glowstone
AlloySmelter.addRecipe(<minecraft:glowstone_dust> * 3, <minecraft:redstone>, <immersiveengineering:metal:16>, 1536);

// Diamond Alloy
val diamondAlloyDustOre = <ore:dustDiamondAlloy>;
val diamondAlloyIngotOre = <ore:ingotDiamondAlloy>;
val diamondAlloyBlockOre = <ore:blockDiamondAlloy>;
val diamondAlloyPlateOre = <ore:plateDiamondAlloy>;
recipes.addShapeless("iec/diamond_alloy_dust", diamondAlloyDustOre.firstItem,
        [ <minecraft:blaze_powder>, <ore:dustNickel> ]);
BlastFurnace.addRecipe(diamondAlloyIngotOre.firstItem, diamondAlloyDustOre, 100);
AlloySmelter.addRecipe(diamondAlloyIngotOre.firstItem, <minecraft:blaze_powder>, <ore:dustNickel>, 120);
AlloySmelter.addRecipe(diamondAlloyIngotOre.firstItem, <minecraft:blaze_powder>, <ore:ingotNickel>, 160);
ArcFurnace.addRecipe(diamondAlloyIngotOre.firstItem, <minecraft:blaze_powder>, null, 100, 512, [ <ore:dustNickel> ]);
MetalPress.addRecipe(diamondAlloyBlockOre.firstItem, diamondAlloyIngotOre, packingMold3x3, 2048, 9);
MetalPress.addRecipe(diamondAlloyIngotOre.firstItem * 9, diamondAlloyBlockOre, unpackingMold, 2048);

// Redstone Alloy
val redstoneAlloyDustOre = <ore:dustRedstoneAlloy>;
val redstoneAlloyIngotOre = <ore:ingotRedstoneAlloy>;
val redstoneAlloyBlockOre = <ore:blockRedstoneAlloy>;
val redstoneAlloyPlateOre = <ore:plateRedstoneAlloy>;
recipes.addShapeless("iec/restone_alloy_dust", redstoneAlloyDustOre.firstItem,
        [ <ore:dustRedstone>, <ore:dustNickel> ]);
BlastFurnace.addRecipe(redstoneAlloyIngotOre.firstItem, redstoneAlloyDustOre, 100);
AlloySmelter.addRecipe(redstoneAlloyIngotOre.firstItem, <ore:dustRedstone>, <ore:dustNickel>, 120);
AlloySmelter.addRecipe(redstoneAlloyIngotOre.firstItem, <ore:dustRedstone>, <ore:ingotNickel>, 160);
ArcFurnace.addRecipe(redstoneAlloyIngotOre.firstItem, <ore:dustRedstone>, null, 100, 512, [ <ore:dustNickel> ]);
MetalPress.addRecipe(redstoneAlloyBlockOre.firstItem, redstoneAlloyIngotOre, packingMold3x3, 2048, 9);
MetalPress.addRecipe(redstoneAlloyIngotOre.firstItem * 9, redstoneAlloyBlockOre, unpackingMold, 2048);

// Blazing Alloy
val blazingAlloyDustOre = <ore:dustBlazingAlloy>;
val blazingAlloyIngotOre = <ore:ingotBlazingAlloy>;
val blazingAlloyBlockOre = <ore:blockBlazingAlloy>;
val blazingAlloyPlateOre = <ore:plateBlazingAlloy>;
recipes.addShapeless("iec/blazing_alloy_dust", blazingAlloyDustOre.firstItem,
        [ <minecraft:blaze_powder>, <ore:dustNickel> ]);
BlastFurnace.addRecipe(blazingAlloyIngotOre.firstItem, blazingAlloyDustOre, 100);
AlloySmelter.addRecipe(blazingAlloyIngotOre.firstItem, <minecraft:blaze_powder>, <ore:dustNickel>, 120);
AlloySmelter.addRecipe(blazingAlloyIngotOre.firstItem, <minecraft:blaze_powder>, <ore:ingotNickel>, 160);
ArcFurnace.addRecipe(blazingAlloyIngotOre.firstItem, <minecraft:blaze_powder>, null, 100, 512, [ <ore:dustNickel> ]);
MetalPress.addRecipe(blazingAlloyBlockOre.firstItem, blazingAlloyIngotOre, packingMold3x3, 2048, 9);
MetalPress.addRecipe(blazingAlloyIngotOre.firstItem * 9, blazingAlloyBlockOre, unpackingMold, 2048);

// Ender pearls
recipes.remove(<minecraft:ender_pearl>);
// TODO ???

// Ender eyes
recipes.remove(<minecraft:ender_eye>);
AlloySmelter.addRecipe(<minecraft:ender_eye>, <ore:enderpearl>, <minecraft:blaze_powder>, 1600);
ArcFurnace.addRecipe(<minecraft:ender_eye>, <ore:enderpearl>, null, 180, 1024, [ <minecraft:blaze_powder> ]);

// Nether Star
ArcFurnace.addRecipe(<minecraft:nether_star>, <minecraft:ender_eye>, null, 6000, 768, [ <ore:gemQuartz> * 64 ]);

// Nano Core stuff
MetalPress.addRecipe(<ore:plateDenseDiamondAlloy>.firstItem, <ore:plateDiamondAlloy>, packingMold3x3, 36864, 9);

// -- IE Things --

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
BlastFurnace.addRecipe(ironIngot, <ore:dustIron>, 60);
ArcFurnace.addRecipe(ironIngot, <ore:dustIron>, null, 20, 512);
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
recipes.removeShaped(<immersiveposts:stick_gold>, [[goldIngot],
                                                   [goldIngot]]);
ArcFurnace.removeRecipe(goldIngot);
BlastFurnace.addRecipe(goldIngot, <ore:dustGold>, 100);
ArcFurnace.addRecipe(goldIngot, <ore:dustGold>, null, 80, 512);
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
BlastFurnace.addRecipe(copperIngot, <ore:dustCopper>, 100);
ArcFurnace.addRecipe(copperIngot, <ore:dustCopper>, null, 80, 512);
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
BlastFurnace.addRecipe(aluminumIngot, <ore:dustAluminum>, 100);
ArcFurnace.addRecipe(aluminumIngot, <ore:dustAluminum>, null, 80, 512);
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
BlastFurnace.addRecipe(leadIngot, <ore:dustLead>, 100);
ArcFurnace.addRecipe(leadIngot, <ore:dustLead>, null, 80, 512);
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
BlastFurnace.addRecipe(silverIngot, <ore:dustSilver>, 100);
ArcFurnace.addRecipe(silverIngot, <ore:dustSilver>, null, 80, 512);
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
BlastFurnace.addRecipe(nickelIngot, <ore:dustNickel>, 100);
ArcFurnace.addRecipe(nickelIngot, <ore:dustNickel>, null, 80, 512);
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
BlastFurnace.addRecipe(uraniumIngot, <ore:dustUranium>, 100);
ArcFurnace.addRecipe(uraniumIngot, <ore:dustUranium>, null, 80, 512);
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

// Blast brick
val blastBrick = <immersiveengineering:stone_decoration:1>;
val brick = <ore:ingotBrick>;
val clay = <minecraft:clay_ball>;
recipes.remove(blastBrick);
AlloySmelter.addRecipe(blastBrick, netherBrickBlk, ironGrit, 200);

// -- Tools --

// Remove steel "vanilla" tools
JEI.removeAndHide(<immersiveengineering:pickaxe_steel>);
JEI.removeAndHide(<immersiveengineering:axe_steel>);
JEI.removeAndHide(<immersiveengineering:shovel_steel>);
JEI.removeAndHide(<immersiveengineering:sword_steel>);
