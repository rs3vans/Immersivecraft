#modloaded immersiveengineering
#modloaded immersivepetroleum

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
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
import mods.immersiveengineering.BottlingMachine;
import mods.immersivepetroleum.Distillation;
import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.ExplosionCrafting;
import scripts.IEHammer.ieHammerTransformer;


val slag = <immersiveengineering:material:7>;
val hempFiber = <immersiveengineering:material:4>;

val plateMold = <immersiveengineering:mold>;
val rodMold = <immersiveengineering:mold:2>;
val packingMold2x2 = <immersiveengineering:mold:5>;
val packingMold3x3 = <immersiveengineering:mold:6>;
val unpackingMold = <immersiveengineering:mold:7>;

val ironComp = <immersiveengineering:material:8>;
val steelComp = <immersiveengineering:material:9>;
val handle = <immersiveengineering:material:13>;

val redstoneEngBlock = <immersiveengineering:metal_decoration0:3>;
val lightEngBlock = <immersiveengineering:metal_decoration0:4>;
val heavyEngBlock = <immersiveengineering:metal_decoration0:5>;


// ~~~ Items ~~~

// Blast Brick
val waterBucket = <forge:bucketfilled>.withTag({FluidName: "water", Amount: 1000});
val concreteBucket = <forge:bucketfilled>.withTag({FluidName: "concrete", Amount: 1000});
val waterClayBucket = <ore:bucketClay>.firstItem.withTag({fluids:{FluidName: "water", Amount: 1000}});
val concreteClayBucket = <ore:bucketClay>.firstItem.withTag({fluids:{FluidName: "concrete", Amount: 1000}});
val sand = <ore:sand>;
val gravel = <ore:gravel>;
val clay = <ore:clay>;
val grout = <ore:grout>;
recipes.removeByRecipeName("immersiveengineering:stone_decoration/blastbrick");
recipes.addShaped("immc/liquid_concrete_bucket_a", concreteBucket,
        [[sand, gravel, sand],
          [clay, waterBucket, clay],
          [sand, gravel, sand]]);
recipes.addShaped("immc/liquid_concrete_bucket_b", concreteBucket,
        [[sand, clay, sand],
          [gravel, waterBucket, gravel],
          [sand, clay, sand]]);
recipes.addShaped("immc/liquid_concrete_clay_bucket_a", concreteClayBucket,
        [[sand, gravel, sand],
          [clay, waterClayBucket, clay],
          [sand, gravel, sand]]);
recipes.addShaped("immc/liquid_concrete_clay_bucket_b", concreteClayBucket,
        [[sand, clay, sand],
          [gravel, waterClayBucket, gravel],
          [sand, clay, sand]]);
recipes.addShaped("immc/grout", grout.firstItem * 8,
        [[sand, sand, sand],
          [sand, concreteBucket, sand],
          [sand, sand, sand]]);
recipes.addShaped("immc/grout_clay", grout.firstItem * 8,
        [[sand, sand, sand],
          [sand, concreteClayBucket, sand],
          [sand, sand, sand]]);
recipes.addShaped("immc/blast_brick", <immersiveengineering:stone_decoration:1>,
        [[<ore:itemHardenedBrick>, grout],
          [grout, <ore:itemHardenedBrick>]]);
AlloySmelter.addRecipe(<ore:itemHardenedBrick>.firstItem * 2, <minecraft:clay_ball>, <ore:dustIron>, 120);
ArcFurnace.addRecipe(<ore:itemHardenedBrick>.firstItem * 2, <minecraft:clay_ball>, null, 60, 250, [<ore:dustIron>]);

// Redstone Engineering Block
recipes.removeByRecipeName("immersiveengineering:metal_decoration/redstone_engineering");
recipes.addShaped("immc/redstone_engineering_block", redstoneEngBlock,
        [[<ore:plateSteel>, <ore:blockRedstone>, <ore:plateSteel>],
          [<ore:blockRedstone>, <ore:blockCopper>, <ore:blockRedstone>],
          [<ore:plateSteel>, <ore:blockRedstone>, <ore:plateSteel>]]);

// Light Engineering Block
recipes.removeByRecipeName("immersiveengineering:metal_decoration/light_engineering");
recipes.addShaped("immc/light_engineering_block", lightEngBlock,
        [[<ore:plateAluminum>, ironComp, <ore:plateAluminum>],
          [<ore:plateCopper>, <ore:blockCopper>, <ore:plateCopper>],
          [<ore:plateAluminum>, ironComp, <ore:plateAluminum>]]);

// Heavy Engineering Block
recipes.removeByRecipeName("immersiveengineering:metal_decoration/heavy_engineering");
recipes.addShaped("immc/heavy_engineering_block", heavyEngBlock,
        [[<ore:plateSteel>, steelComp, <ore:plateSteel>],
          [<minecraft:piston>, <ore:blockElectrum>, <minecraft:piston>],
          [<ore:plateSteel>, steelComp, <ore:plateSteel>]]);

// Tools & Upgrades & Parts

recipes.removeByRecipeName("immersiveengineering:stone_decoration/insulating_glass");
recipes.addShaped("immc/insulating_glass", <immersiveengineering:stone_decoration:8>,
        [[null, <ore:blockGlass>, null],
          [<ore:dustIron>, <ore:dustEmerald>, <ore:dustIron>],
          [null, <ore:blockGlass>, null]]);

if (loadedMods has "enderio") {
        // Drill (Base)
        recipes.removeByRecipeName("immersiveengineering:tool/drill_diesel");
        recipes.addShaped("immc/drill", <immersiveengineering:drill>,
                [[null, <ore:gearDark>, handle],
                  [null, heavyEngBlock, handle],
                  [steelComp, null, null]]);

        // Drill Lube
        recipes.removeByRecipeName("immersiveengineering:toolupgrades/drill_lube");
        recipes.removeByRecipeName("immersivepetroleum:misc/drill_lube_alt");
        val lubricantBucket = <forge:bucketfilled>.withTag({FluidName: "lubricant", Amount: 1000});
        recipes.addShaped("immc/drill_lube", <immersiveengineering:toolupgrade:1>,
                [[<ore:gearEnergized>, <ore:ingotSteel>, null],
                  [<ore:ingotSteel>, lubricantBucket, <ore:ingotSteel>],
                  [null, <ore:ingotSteel>, steelComp]]);

        // Augers
        recipes.removeByRecipeName("immersiveengineering:toolupgrades/drill_damage");
        recipes.addShaped("immc/drill_damage", <immersiveengineering:toolupgrade:2>,
                [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
                  [null, <ore:gearIronInfinity>, null],
                  [null, steelComp, null]]);

        // Revolver Drum
        recipes.removeByRecipeName("immersiveengineering:material/gunpart_drum");
        recipes.addShaped("immc/revolver_drum", <immersiveengineering:material:15>,
                [[null, <ore:ingotSteel>, null],
                  [<ore:ingotSteel>, <ore:gearIronInfinity>, <ore:ingotSteel>],
                  [null, <ore:ingotSteel>, null]]);

        // Core Sample Drill
        recipes.removeByRecipeName("immersiveengineering:metal_devices/coresample_drill");
        recipes.addShaped("immc/coresample_drill", <immersiveengineering:metal_device1:7>,
                [[<ore:scaffoldingSteel>, <ore:fenceSteel>, <ore:scaffoldingSteel>],
                  [<ore:scaffoldingSteel>, <ore:gearDark>, <ore:scaffoldingSteel>],
                  [lightEngBlock, steelComp, lightEngBlock]]);
}

// Treated wood
recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood");
FluidToItem.transform(<ore:plankTreatedWood>.firstItem, <liquid:creosote>, [<ore:plankWood> * 4], true);

// Leather
furnace.remove(<ore:itemTannedLeather>.firstItem);
furnace.addRecipe(<ore:itemTannedLeather>.firstItem, <ore:itemSoakedLeather>, 0.25);
FluidToItem.transform(<ore:itemSoakedLeather>.firstItem * 4, <liquid:tannicacid>, [<ore:itemBoundLeather> * 4], true);

// Plants
Squeezer.addRecipe(null, <liquid:water> * 10, <minecraft:yellow_flower>, 150);
Squeezer.addRecipe(null, <liquid:water> * 10, <minecraft:red_flower:*>, 150);
Squeezer.addRecipe(null, <liquid:water> * 10, <minecraft:red_mushroom>, 150);
Squeezer.addRecipe(null, <liquid:water> * 10, <minecraft:brown_mushroom>, 150);
Squeezer.addRecipe(null, <liquid:water> * 10, <minecraft:double_plant:*>, 150);
Squeezer.addRecipe(null, <liquid:water> * 50, <minecraft:vine>, 150);
Squeezer.addRecipe(null, <liquid:water> * 100, <minecraft:waterlily>, 150);
Squeezer.addRecipe(<minecraft:melon_seeds>, <liquid:water> * 50, <minecraft:melon>, 150);
Squeezer.addRecipe(<minecraft:pumpkin_seeds>, <liquid:water> * 100, <minecraft:pumpkin>, 150);

// Fish
Squeezer.addRecipe(null, <liquid:water> * 100, <minecraft:fish:*>, 150);

// Slime balls
Squeezer.addRecipe(<minecraft:slime_ball>, <liquid:water> * 250, <minecraft:cactus>, 2000);

// Planks / Sawdust
recipes.addShapeless("immc/sawdust_with_hammer", <ore:dustSaw>.firstItem,
        [<ore:plankWood>, ieHammerTransformer]);
Crusher.addRecipe(<minecraft:planks:0> * 6, <minecraft:log:0>, 600, <ore:dustSaw>.firstItem, 0.2);
Crusher.addRecipe(<minecraft:planks:1> * 6, <minecraft:log:1>, 600, <ore:dustSaw>.firstItem, 0.2);
Crusher.addRecipe(<minecraft:planks:2> * 6, <minecraft:log:2>, 600, <ore:dustSaw>.firstItem, 0.2);
Crusher.addRecipe(<minecraft:planks:3> * 6, <minecraft:log:3>, 600, <ore:dustSaw>.firstItem, 0.2);
Crusher.addRecipe(<minecraft:planks:4> * 6, <minecraft:log2:0>, 600, <ore:dustSaw>.firstItem, 0.2);
Crusher.addRecipe(<minecraft:planks:5> * 6, <minecraft:log2:1>, 600, <ore:dustSaw>.firstItem, 0.2);
Crusher.addRecipe(<ore:dustSaw>.firstItem * 2, <ore:plankWood>, 500, <ore:dustSaw>.firstItem, 0.5);

// Clay
Crusher.removeRecipesForInput(<minecraft:clay>);

// Lava/Magma
AlloySmelter.addRecipe(<minecraft:magma>, <ore:cobblestone>, <ore:dustBlaze>, 200);
ArcFurnace.addRecipe(<minecraft:magma>, <ore:cobblestone>, null, 100, 500, [<ore:dustBlaze>]);
Squeezer.addRecipe(null, <liquid:lava> * 250, <minecraft:magma>, 2000);

// Coal Coke
recipes.addShapeless("immc/coke_dust_with_hammer", <ore:dustCoke>.firstItem,
        [<ore:fuelCoke>, ieHammerTransformer]);

// Blaze powder/rods
MetalPress.addRecipe(<ore:rodBlaze>.firstItem, <ore:dustBlaze>, rodMold, 2000, 6);

// Redstone
Crusher.removeRecipesForInput(<minecraft:redstone_ore>);
MetalPress.addRecipe(<ore:blockRedstone>.firstItem, <ore:dustRedstone>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(<ore:dustRedstone>.firstItem * 9, <ore:blockRedstone>, unpackingMold, 2000);

// Quartz
recipes.remove(<ore:blockQuartz>.firstItem);
Crusher.removeRecipesForInput(<minecraft:quartz_ore>);
Crusher.removeRecipesForInput(<minecraft:quartz_block>);
Crusher.addRecipe(<ore:dustQuartz>.firstItem, <ore:gemQuartz>, 2000);
// MetalPress recipes aren't needed

// Glowstone
recipes.addShapeless("immc/glowstone_dust_with_hammer", <ore:dustGlowstone>.firstItem * 4,
        [<ore:blockGlowstone>, ieHammerTransformer]);

// Obsidian
recipes.addShapeless("immc/obsidian_dust_with_hammer", <ore:dustObsidian>.firstItem,
        [<ore:blockObsidian>, ieHammerTransformer]);
Crusher.removeRecipe(<ore:dustObsidian>.firstItem);
Crusher.addRecipe(<ore:dustObsidian>.firstItem, <ore:blockObsidian>, 2000);

// End Stone
Crusher.addRecipe(<ore:dustEndStone>.firstItem, <ore:blockEndStone>, 4000);

// Sponges
furnace.remove(<ore:itemWetSponge>.firstItem);
Squeezer.addRecipe(<ore:itemSponge>.firstItem, <liquid:water> * 1000, <ore:itemWetSponge>, 2000);

// Prismarine
Crusher.removeRecipesForInput(<ore:gemPrismarine>.firstItem);

// Lapis
furnace.addRecipe(<ore:gemLapis>.firstItem, <ore:dustLapis>);
ArcFurnace.addRecipe(<ore:gemLapis>.firstItem, <ore:dustLapis>, null, 60, 500);
Crusher.removeRecipesForInput(<minecraft:lapis_ore>);
MetalPress.addRecipe(<ore:blockLapis>.firstItem, <ore:gemLapis>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(<ore:gemLapis>.firstItem * 9, <ore:blockLapis>, unpackingMold, 2000);

// Diamond
furnace.addRecipe(<ore:gemDiamond>.firstItem, <ore:dustDiamond>);
Crusher.removeRecipesForInput(<minecraft:diamond_ore>);

// Emerald
furnace.addRecipe(<ore:gemEmerald>.firstItem, <ore:dustEmerald>);
Crusher.removeRecipesForInput(<minecraft:emerald_ore>);

// Soul
recipes.remove(<ore:dustSoul>.firstItem);
val soulEssenceBucket = <forge:bucketfilled>.withTag({FluidName: "soulessence", Amount: 1000});
recipes.addShapeless("immc/soul_powder", <ore:dustSoul>.firstItem,
        [soulEssenceBucket.transformReplace(<ore:itemEmptyBucket>.firstItem), <ore:additiveDrying>]);
FluidToItem.transform(<ore:dustSoul>.firstItem * 2, <liquid:soulessence>, [<ore:additiveDrying>], true);

// Ender Pearl/Eye
furnace.addRecipe(<ore:enderpearl>.firstItem, <ore:dustEnderpearl>);
Crusher.addRecipe(<ore:dustEnderpearl>.firstItem, <ore:enderpearl>, 3000);
ArcFurnace.addRecipe(<ore:endereye>.firstItem, <ore:dustEnderpearl>, null, 300, 1500, [<ore:dustBlaze>]);

// Nether Star
ExplosionCrafting.explodeItemRecipe(<ore:dustNetherStar>.firstItem * 3, <ore:starNether>, 100);


// ~~ Fluids ~~

// Bottling Machine: Buckets
val liquidsToBottleIntoBuckets = [
        <liquid:water>,
        <liquid:lava>,
        <liquid:concrete>,
        <liquid:biodiesel>,
        <liquid:creosote>,
        <liquid:diesel>,
        <liquid:ethanol>,
        <liquid:gasoline>,
        <liquid:lubricant>,
        <liquid:napalm>,
        <liquid:oil>,
        <liquid:plantoil>,
        <liquid:xpjuice>,
        <liquid:prismarinesolution>,
        <liquid:soulsludge>,
        <liquid:soulessence>,
        <liquid:chorusjuice>,
        <liquid:dragonjuice>,
        <liquid:dragonsbreath>
] as ILiquidStack[];
for l in liquidsToBottleIntoBuckets {
        var bucket = null as IItemStack;
        if (l.name == "water") {
                bucket = <minecraft:water_bucket>;
        } else if (l.name == "lava") {
                bucket = <minecraft:lava_bucket>;
        } else {
                bucket = <forge:bucketfilled>.withTag({FluidName: l.name, Amount: 1000});
        }
        BottlingMachine.addRecipe(bucket, <minecraft:bucket>.withEmptyTag(), l * 1000);

        val clayBucket = <ceramics:clay_bucket>.withTag({fluids:{FluidName: l.name, Amount: 1000}});
        BottlingMachine.addRecipe(clayBucket, <ceramics:clay_bucket>.withEmptyTag(), l * 1000);
}

// Tannic Acid
Mixer.addRecipe(<liquid:tannicacid> * 100, <liquid:water> * 100, [<ore:dustSaw>], 500);

// Prismarine Solution
Mixer.addRecipe(<liquid:prismarinesolution> * 250, <liquid:ethanol> * 250, [<ore:gemPrismarine>], 2000);
Distillation.addRecipe([<liquid:ethanol> * 100, <liquid:water> * 100], [<ore:dustPrismarine>.firstItem], <liquid:prismarinesolution> * 250, 500, 200, [1.0 as float]);

// Soul Sludge/Essence
Mixer.addRecipe(<liquid:soulsludge> * 250, <liquid:water> * 250, [<ore:sandSoul>], 2000);
Distillation.addRecipe([<liquid:soulessence> * 100, <liquid:water> * 100], [<ore:sand>.firstItem], <liquid:soulsludge> * 250, 500, 200, [1.0 as float]);

// Draagon's Breath
Squeezer.addRecipe(null, <liquid:chorusjuice> * 100, <ore:fruitChorus>, 500);
Mixer.addRecipe(<liquid:dragonjuice> * 100, <liquid:chorusjuice> * 100, [<ore:dustEnderpearl>, <ore:dustBlaze>], 1000);
Refinery.addRecipe(<liquid:dragonsbreath> * 10, <liquid:dragonjuice> * 100, <liquid:lava> * 500, 4000);
BottlingMachine.addRecipe(<ore:bottleDragonsBreath>.firstItem, <ore:itemEmptyBottle>, <liquid:dragonsbreath> * 250);


// ~~ Metals ~~

// Remove some recipes for unused metals...
/*
ArcFurnace.removeRecipe(<ore:ingotAlubrass>.firstItem);
ArcFurnace.removeRecipe(<ore:ingotManyullyn>.firstItem);
ArcFurnace.removeRecipe(<ore:ingotCobalt>.firstItem);
ArcFurnace.removeRecipe(<ore:ingotArdite>.firstItem);
*/

// Remove rod recipes added by immersiveposts
for i in 0 to 8 {
        val rod = <immersiveposts:metal_rods>.definition.makeStack(i);
        recipes.remove(rod);
        MetalPress.removeRecipe(rod);
}

// remove all recipes using the rod mold in order to add custom ones...
MetalPress.removeRecipeByMold(rodMold);

// Iron
val ironIngot = <minecraft:iron_ingot>;
val ironBlock = <minecraft:iron_block>;
val ironNugget = <minecraft:iron_nugget>;
val ironNuggetIE = <immersiveengineering:metal:29>;
val ironGrit = <immersiveengineering:metal:18>;
val ironRod = <immersiveengineering:material:1>;
furnace.remove(ironIngot);
furnace.remove(ironNugget);
recipes.remove(ironIngot);
recipes.remove(ironBlock);
recipes.remove(ironNugget);
recipes.remove(ironNuggetIE);
recipes.remove(ironRod);
ArcFurnace.removeRecipe(ironIngot);
furnace.addRecipe(ironIngot, <ore:dustIron>);
ArcFurnace.addRecipe(ironIngot, <ore:dustIron>, null, 60, 500);
ArcFurnace.addRecipe(ironIngot, <ore:oreIron>, null, 120, 500);
MetalPress.addRecipe(ironIngot, <ore:nuggetIron>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(ironNuggetIE * 9, <ore:ingotIron>, unpackingMold, 2000);
MetalPress.addRecipe(ironBlock, <ore:ingotIron>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(ironIngot * 9, <ore:blockIron>, unpackingMold, 2000);
MetalPress.addRecipe(ironRod, <ore:ingotIron>, rodMold, 2000);

// Gold
val goldDust = <immersiveengineering:metal:19>;
val goldIngot = <minecraft:gold_ingot>;
val goldBlock = <minecraft:gold_block>;
val goldNugget = <minecraft:gold_nugget>;
val goldRod = <immersiveposts:metal_rods:0>;
furnace.remove(goldIngot);
recipes.remove(goldIngot);
recipes.remove(goldBlock);
recipes.remove(goldNugget);
ArcFurnace.removeRecipe(goldIngot);
furnace.addRecipe(goldIngot, <ore:dustGold>);
ArcFurnace.addRecipe(goldIngot, <ore:dustGold>, null, 60, 500);
ArcFurnace.addRecipe(goldIngot, <ore:oreGold>, null, 120, 500);
MetalPress.addRecipe(goldIngot, <ore:nuggetGold>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(goldNugget * 9, <ore:ingotGold>, unpackingMold, 2000);
MetalPress.addRecipe(goldBlock, <ore:ingotGold>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(goldIngot * 9, <ore:blockGold>, unpackingMold, 2000);
MetalPress.addRecipe(goldRod, <ore:ingotGold>, rodMold, 2000);

// Copper
val copperDust = <immersiveengineering:metal:9>;
val copperIngot = <immersiveengineering:metal:0>;
val copperBlock = <immersiveengineering:storage>;
val copperNugget = <immersiveengineering:metal:20>;
val copperRod = <immersiveposts:metal_rods:1>;
furnace.remove(copperIngot);
recipes.remove(copperIngot);
recipes.remove(copperBlock);
recipes.remove(copperNugget);
ArcFurnace.removeRecipe(copperIngot);
furnace.addRecipe(copperIngot, <ore:dustCopper>);
ArcFurnace.addRecipe(copperIngot, <ore:dustCopper>, null, 60, 500);
ArcFurnace.addRecipe(copperIngot, <ore:oreCopper>, null, 120, 500);
MetalPress.addRecipe(copperIngot, <ore:nuggetCopper>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(copperNugget * 9, <ore:ingotCopper>, unpackingMold, 2000);
MetalPress.addRecipe(copperBlock, <ore:ingotCopper>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(copperIngot * 9, <ore:blockCopper>, unpackingMold, 2000);
MetalPress.addRecipe(copperRod, <ore:ingotCopper>, rodMold, 2000);

// Aluminum
val aluminumIngot = <immersiveengineering:metal:1>;
val aluminumBlock = <immersiveengineering:storage:1>;
val aluminumNugget = <immersiveengineering:metal:21>;
val aluminumRod = <immersiveengineering:material:3>;
furnace.remove(aluminumIngot);
recipes.remove(aluminumIngot);
recipes.remove(aluminumBlock);
recipes.remove(aluminumNugget);
recipes.remove(aluminumRod);
ArcFurnace.removeRecipe(aluminumIngot);
furnace.addRecipe(aluminumIngot, <ore:dustAluminum>);
ArcFurnace.addRecipe(aluminumIngot, <ore:dustAluminum>, null, 60, 500);
ArcFurnace.addRecipe(aluminumIngot, <ore:oreAluminum>, null, 120, 500);
MetalPress.addRecipe(aluminumIngot, <ore:nuggetAluminum>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(aluminumNugget * 9, <ore:ingotAluminum>, unpackingMold, 2000);
MetalPress.addRecipe(aluminumBlock, <ore:ingotAluminum>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(aluminumIngot * 9, <ore:blockAluminum>, unpackingMold, 2000);
MetalPress.addRecipe(aluminumRod, <ore:ingotAluminum>, rodMold, 2000);

// Lead
val leadIngot = <immersiveengineering:metal:2>;
val leadBlock = <immersiveengineering:storage:2>;
val leadNugget = <immersiveengineering:metal:22>;
val leadRod = <immersiveposts:metal_rods:2>;
furnace.remove(leadIngot);
recipes.remove(leadIngot);
recipes.remove(leadBlock);
recipes.remove(leadNugget);
ArcFurnace.removeRecipe(leadIngot);
furnace.addRecipe(leadIngot, <ore:dustLead>);
ArcFurnace.addRecipe(leadIngot, <ore:dustLead>, null, 60, 500);
ArcFurnace.addRecipe(leadIngot, <ore:oreLead>, null, 120, 500);
MetalPress.addRecipe(leadIngot, <ore:nuggetLead>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(leadNugget * 9, <ore:ingotLead>, unpackingMold, 2000);
MetalPress.addRecipe(leadBlock, <ore:ingotLead>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(leadIngot * 9, <ore:blockLead>, unpackingMold, 2000);
MetalPress.addRecipe(leadRod, <ore:ingotLead>, rodMold, 2000);

// Silver
val silverDust = <immersiveengineering:metal:12>;
val silverIngot = <immersiveengineering:metal:3>;
val silverBlock = <immersiveengineering:storage:3>;
val silverNugget = <immersiveengineering:metal:23>;
val silverRod = <immersiveposts:metal_rods:3>;
furnace.remove(silverIngot);
recipes.remove(silverIngot);
recipes.remove(silverBlock);
recipes.remove(silverNugget);
ArcFurnace.removeRecipe(silverIngot);
furnace.addRecipe(silverIngot, <ore:dustSilver>);
ArcFurnace.addRecipe(silverIngot, <ore:dustSilver>, null, 60, 500);
ArcFurnace.addRecipe(silverIngot, <ore:oreSilver>, null, 120, 500);
MetalPress.addRecipe(silverIngot, <ore:nuggetSilver>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(silverNugget * 9, <ore:ingotSilver>, unpackingMold, 2000);
MetalPress.addRecipe(silverBlock, <ore:ingotSilver>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(silverIngot * 9, <ore:blockSilver>, unpackingMold, 2000);
MetalPress.addRecipe(silverRod, <ore:ingotSilver>, rodMold, 2000);

// Nickel
val nickelDust = <immersiveengineering:metal:13>;
val nickelIngot = <immersiveengineering:metal:4>;
val nickelBlock = <immersiveengineering:storage:4>;
val nickelNugget = <immersiveengineering:metal:24>;
val nickelRod = <immersiveposts:metal_rods:4>;
furnace.remove(nickelIngot);
recipes.remove(nickelIngot);
recipes.remove(nickelBlock);
recipes.remove(nickelNugget);
ArcFurnace.removeRecipe(nickelIngot);
furnace.addRecipe(nickelIngot, <ore:dustNickel>);
ArcFurnace.addRecipe(nickelIngot, <ore:dustNickel>, null, 60, 500);
ArcFurnace.addRecipe(nickelIngot, <ore:oreNickel>, null, 120, 500);
MetalPress.addRecipe(nickelIngot, <ore:nuggetNickel>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(nickelNugget * 9, <ore:ingotNickel>, unpackingMold, 2000);
MetalPress.addRecipe(nickelBlock, <ore:ingotNickel>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(nickelIngot * 9, <ore:blockNickel>, unpackingMold, 2000);
MetalPress.addRecipe(nickelRod, <ore:ingotNickel>, rodMold, 2000);

// Uranium
val uraniumIngot = <immersiveengineering:metal:5>;
val uraniumBlock = <immersiveengineering:storage:5>;
val uraniumNugget = <immersiveengineering:metal:25>;
val uraniumRod = <immersiveposts:metal_rods:7>;
furnace.remove(uraniumIngot);
recipes.remove(uraniumIngot);
recipes.remove(uraniumBlock);
recipes.remove(uraniumNugget);
ArcFurnace.removeRecipe(uraniumIngot);
furnace.addRecipe(uraniumIngot, <ore:dustUranium>);
ArcFurnace.addRecipe(uraniumIngot, <ore:dustUranium>, null, 60, 500);
ArcFurnace.addRecipe(uraniumIngot, <ore:oreUranium>, null, 120, 500);
MetalPress.addRecipe(uraniumIngot, <ore:nuggetUranium>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(uraniumNugget * 9, <ore:ingotUranium>, unpackingMold, 2000);
MetalPress.addRecipe(uraniumBlock, <ore:ingotUranium>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(uraniumIngot * 9, <ore:blockUranium>, unpackingMold, 2000);
MetalPress.addRecipe(uraniumRod, <ore:ingotUranium>, rodMold, 2000);

// Constantan
val constantanDust = <immersiveengineering:metal:15>;
val constantanIngot = <immersiveengineering:metal:6>;
val constantanBlock = <immersiveengineering:storage:6>;
val constantanNugget = <immersiveengineering:metal:26>;
val constantanRod = <immersiveposts:metal_rods:5>;
furnace.remove(constantanIngot);
recipes.remove(constantanDust);
recipes.remove(constantanIngot);
recipes.remove(constantanBlock);
recipes.remove(constantanNugget);
furnace.addRecipe(constantanIngot, constantanDust);
AlloySmelter.removeRecipe(constantanIngot);
ArcFurnace.removeRecipe(constantanIngot);
recipes.addShapeless("immc/constantan_dust", constantanDust,
        [copperDust, nickelDust]);
MetalPress.addRecipe(constantanIngot, <ore:nuggetConstantan>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(constantanNugget * 9, <ore:ingotConstantan>, unpackingMold, 2000);
MetalPress.addRecipe(constantanBlock, <ore:ingotConstantan>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(constantanIngot * 9, <ore:blockConstantan>, unpackingMold, 2000);
MetalPress.addRecipe(constantanRod, <ore:ingotConstantan>, rodMold, 2000);

// Electrum
val electrumDust = <immersiveengineering:metal:16>;
val electrumIngot = <immersiveengineering:metal:7>;
val electrumBlock = <immersiveengineering:storage:7>;
val electrumNugget = <immersiveengineering:metal:27>;
val electrumRod = <immersiveposts:metal_rods:6>;
furnace.remove(electrumIngot);
recipes.remove(electrumDust);
recipes.remove(electrumIngot);
recipes.remove(electrumBlock);
recipes.remove(electrumNugget);
furnace.addRecipe(electrumIngot, electrumDust);
AlloySmelter.removeRecipe(electrumIngot);
ArcFurnace.removeRecipe(electrumIngot);
recipes.addShapeless("immc/electrum_dust", electrumDust,
        [goldDust, silverDust]);
MetalPress.addRecipe(electrumIngot, <ore:nuggetElectrum>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(electrumNugget * 9, <ore:ingotElectrum>, unpackingMold, 2000);
MetalPress.addRecipe(electrumBlock, <ore:ingotElectrum>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(electrumIngot * 9, <ore:blockElectrum>, unpackingMold, 2000);
MetalPress.addRecipe(electrumRod, <ore:ingotElectrum>, rodMold, 2000);

// Steel
val steelDust = <immersiveengineering:metal:17>;
val steelIngot = <immersiveengineering:metal:8>;
val steelBlock = <immersiveengineering:storage:8>;
val steelNugget = <immersiveengineering:metal:28>;
val steelRod = <immersiveengineering:material:2>;
furnace.remove(steelIngot);
recipes.remove(steelIngot);
recipes.remove(steelBlock);
recipes.remove(steelNugget);
recipes.remove(steelRod);
furnace.addRecipe(steelIngot, steelDust);
MetalPress.addRecipe(steelIngot, <ore:nuggetSteel>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(steelNugget * 9, <ore:ingotSteel>, unpackingMold, 2000);
MetalPress.addRecipe(steelBlock, <ore:ingotSteel>, packingMold3x3, 2000, 9);
MetalPress.addRecipe(steelIngot * 9, <ore:blockSteel>, unpackingMold, 2000);
MetalPress.addRecipe(steelRod, <ore:ingotSteel>, rodMold, 2000);

// Graphite
val graphiteDust = <immersiveengineering:material:18>;
val graphiteIngot = <immersiveengineering:material:19>;
furnace.remove(graphiteIngot);
ArcFurnace.removeRecipe(graphiteIngot);
MetalPress.removeRecipe(<immersiveengineering:graphite_electrode>);
MetalPress.addRecipe(graphiteIngot, graphiteDust, packingMold3x3, 3000, 9);


// ~~ Blueprints ~~
recipes.removeByRecipeName("immersiveengineering:blueprints/molds");
recipes.removeByRecipeName("immersiveengineering:blueprints/components");
recipes.removeByRecipeName("immersiveengineering:blueprints/common_cartridges");

val moldsBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "molds"});
val componentsBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "components"});
val bulletBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "bullet"});
val specialBulletBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"});
val electrodeBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "electrode"});

recipes.addShaped("immc/blueprint_molds", moldsBlueprint,
        [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
         [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);
recipes.addShaped("immc/blueprint_components", componentsBlueprint,
        [[<ore:ingotIron>, <ore:ingotSteel>, <ore:ingotIron>],
         [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);
recipes.addShaped("immc/blueprint_bullet", bulletBlueprint,
        [[<ore:ingotCopper>, <immersiveengineering:bullet>, <ore:ingotCopper>],
         [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);
recipes.addShaped("immc/blueprint_special_bullet", specialBulletBlueprint,
        [[<ore:itemPotionBottle>, <immersiveengineering:bullet>, <ore:bottleDragonsBreath>],
         [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);
recipes.addShaped("immc/blueprint_electrode", electrodeBlueprint,
        [[graphiteDust, graphiteIngot, graphiteDust],
         [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);


// ~~ Other ~~

recipes.removeByRecipeName("immersiveengineering:material/component_iron");
recipes.removeByRecipeName("immersiveengineering:material/component_steel");
recipes.removeByRecipeName("immersiveengineering:material/empty_casing");

// remove capacitor backpack
JEI.removeAndHide(<immersiveengineering:powerpack>);
