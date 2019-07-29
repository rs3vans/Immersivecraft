#modloaded immersiveengineering
#modloaded immersivepetroleum

import mods.jei.JEI;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Refinery;
import mods.immersiveengineering.Fermenter;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.ArcFurnace;
import mods.immersivepetroleum.Distillation;
import scripts.IEHammer.ieHammerTransformer;


val slag = <immersiveengineering:material:7>;
val hempFiber = <immersiveengineering:material:4>;

val plateMold = <immersiveengineering:mold>;
val gearMold = <immersiveengineering:mold:1>;
val rodMold = <immersiveengineering:mold:2>;
val packingMold2x2 = <immersiveengineering:mold:5>;
val packingMold3x3 = <immersiveengineering:mold:6>;
val unpackingMold = <immersiveengineering:mold:7>;


// ~~~ Random ~~~

// not sure where these are coming from...
JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "uranium", Amount: 1000}));
JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "constantan", Amount: 1000}));


// ~~~ Items ~~~

// Slime balls
Squeezer.addRecipe(<minecraft:slime_ball>, <liquid:water> * 250, <minecraft:cactus>, 2048);

// Lava
Squeezer.addRecipe(null, <liquid:lava> * 250, <minecraft:magma>, 2048);

// Blaze powder/rods
MetalPress.addRecipe(<ore:rodBlaze>.firstItem, <ore:dustBlaze>, rodMold, 2048, 6);

// Redstone
Crusher.removeRecipesForInput(<minecraft:redstone_ore>);
MetalPress.addRecipe(<ore:blockRedstone>.firstItem, <ore:dustRedstone>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(<ore:dustRedstone>.firstItem * 9, <ore:blockRedstone>, unpackingMold, 2048);

// Quartz
recipes.remove(<ore:blockQuartz>.firstItem);
Crusher.removeRecipesForInput(<minecraft:quartz_ore>);
Crusher.removeRecipesForInput(<minecraft:quartz_block>);
// MetalPress recipes aren't needed

// Lapis
furnace.addRecipe(<ore:gemLapis>.firstItem, <ore:dustLapis>, 0.25);
Crusher.removeRecipesForInput(<minecraft:lapis_ore>);
MetalPress.addRecipe(<ore:blockLapis>.firstItem, <ore:gemLapis>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(<ore:gemLapis>.firstItem * 9, <ore:blockLapis>, unpackingMold, 2048);

// Diamond
furnace.addRecipe(<ore:gemDiamond>.firstItem, <ore:dustDiamond>, 0.3);
Crusher.removeRecipesForInput(<minecraft:diamond_ore>);

// Emerald
furnace.addRecipe(<ore:gemEmerald>.firstItem, <ore:dustEmerald>, 0.3);
Crusher.removeRecipesForInput(<minecraft:emerald_ore>);

// Ender pearl/eye
Crusher.addRecipe(<ore:dustEnder>.firstItem, <ore:enderpearl>, 1024);


// ~~ Metals ~~

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
furnace.addRecipe(ironIngot, <ore:dustIron>, 0.25);
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
furnace.addRecipe(goldIngot, <ore:dustGold>, 0.25);
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
furnace.addRecipe(copperIngot, <ore:dustCopper>, 0.25);
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
furnace.addRecipe(aluminumIngot, <ore:dustAluminum>, 0.25);
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
furnace.addRecipe(leadIngot, <ore:dustLead>, 0.25);
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
furnace.addRecipe(silverIngot, <ore:dustSilver>, 0.25);
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
furnace.addRecipe(nickelIngot, <ore:dustNickel>, 0.25);
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
furnace.addRecipe(uraniumIngot, <ore:dustUranium>, 0.25);
ArcFurnace.addRecipe(uraniumIngot, <ore:dustUranium>, null, 60, 512);
ArcFurnace.addRecipe(uraniumIngot, <ore:oreUranium>, null, 120, 512);
MetalPress.addRecipe(uraniumIngot, <ore:nuggetUranium>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(uraniumNugget * 9, <ore:ingotUranium>, unpackingMold, 2048);
MetalPress.addRecipe(uraniumBlock, <ore:ingotUranium>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(uraniumIngot * 9, <ore:blockUranium>, unpackingMold, 2048);

// Constantan
val constantanDust = <immersiveengineering:metal:15>;
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
ArcFurnace.removeRecipe(constantanIngot);
MetalPress.addRecipe(constantanIngot, <ore:nuggetConstantan>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(constantanNugget * 9, <ore:ingotConstantan>, unpackingMold, 2048);
MetalPress.addRecipe(constantanBlock, <ore:ingotConstantan>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(constantanIngot * 9, <ore:blockConstantan>, unpackingMold, 2048);

// Electrum
val electrumDust = <immersiveengineering:metal:16>;
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
ArcFurnace.removeRecipe(electrumIngot);
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