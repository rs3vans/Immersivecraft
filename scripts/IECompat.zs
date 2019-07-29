#modloaded immersiveengineering
#modloaded vanillafoodpantry
#modloaded tconstruct
#modloaded geolosys
#modloaded ceramics
#modloaded appliedenergistics2
#modloaded quark

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
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
import scripts.IEHammer.ieHammerTransformer;


val plateMold = <immersiveengineering:mold>;
val gearMold = <immersiveengineering:mold:1>;
val rodMold = <immersiveengineering:mold:2>;
val packingMold2x2 = <immersiveengineering:mold:5>;
val packingMold3x3 = <immersiveengineering:mold:6>;
val unpackingMold = <immersiveengineering:mold:7>;


// ~~~ Remove TiC metal recipes ~~~
ArcFurnace.removeRecipe(<ore:ingotAlubrass>.firstItem);
ArcFurnace.removeRecipe(<ore:ingotManyullyn>.firstItem);
ArcFurnace.removeRecipe(<ore:ingotCobalt>.firstItem);
ArcFurnace.removeRecipe(<ore:ingotArdite>.firstItem);


// ~~~ Bottling Machine: Buckets ~~~
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
        <liquid:soulessence>,
        <liquid:soulsludge>,
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


// ~~~ Liquid concrete --> Grout ~~~
val waterBucket = <forge:bucketfilled>.withTag({FluidName: "water", Amount: 1000});
val concreteBucket = <forge:bucketfilled>.withTag({FluidName: "concrete", Amount: 1000});
val waterClayBucket = <ceramics:clay_bucket>.withTag({fluids:{FluidName: "water", Amount: 1000}});
val concreteClayBucket = <ceramics:clay_bucket>.withTag({fluids:{FluidName: "concrete", Amount: 1000}});
val sand = <ore:sand>;
val gravel = <ore:gravel>;
val clay = <ore:clay>;
val grout = <contenttweaker:grout>;

recipes.addShaped("immc/liquid_concrete_bucket_a", concreteBucket,
        [ [ sand, gravel, sand ],
          [ clay, waterBucket, clay ],
          [ sand, gravel, sand ] ]);
recipes.addShaped("immc/liquid_concrete_bucket_b", concreteBucket,
        [ [ sand, clay, sand ],
          [ gravel, waterBucket, gravel ],
          [ sand, clay, sand ] ]);

recipes.addShaped("immc/liquid_concrete_clay_bucket_a", concreteClayBucket,
        [ [ sand, gravel, sand ],
          [ clay, waterClayBucket, clay ],
          [ sand, gravel, sand ] ]);
recipes.addShaped("immc/liquid_concrete_clay_bucket_b", concreteClayBucket,
        [ [ sand, clay, sand ],
          [ gravel, waterClayBucket, gravel ],
          [ sand, clay, sand ] ]);

recipes.addShaped("immc/grout", grout * 8,
        [ [ sand, sand, sand ],
          [ sand, concreteBucket, sand ],
          [ sand, sand, sand ] ]);
recipes.addShaped("immc/grout_clay", grout * 8,
        [ [ sand, sand, sand ],
          [ sand, concreteClayBucket, sand ],
          [ sand, sand, sand ] ]);


// ~~~ Blast Brick ~~~
recipes.addShaped("immc/blast_brick", <immersiveengineering:stone_decoration:1>,
    [ [ <ore:itemHardenedBrick>, <ore:grout> ],
      [ <ore:grout>, <ore:itemHardenedBrick> ] ]);

AlloySmelter.addRecipe(<ore:itemHardenedBrick>.firstItem * 2, <minecraft:clay_ball>, <ore:dustIron>, 120);

ArcFurnace.addRecipe(<ore:itemHardenedBrick>.firstItem * 2, <minecraft:clay_ball>, null, 60, 256, [ <ore:dustIron> ]);


// ~~~ VFP Salt ~~~
recipes.addShapeless("immc/salt_with_hammer", <vanillafoodpantry:salt> * 6,
        [ <vanillafoodpantry:rock_salt_crystals>, ieHammerTransformer ]);
recipes.addShapeless("immc/baking_soda_with_hammer", <vanillafoodpantry:baking_soda> * 6,
        [ <vanillafoodpantry:natron_crystals>, ieHammerTransformer ]);

Crusher.addRecipe(<vanillafoodpantry:salt> * 8, <vanillafoodpantry:rock_salt_crystals>, 2048, <vanillafoodpantry:salt> * 2, 0.5);
Crusher.addRecipe(<vanillafoodpantry:baking_soda> * 8, <vanillafoodpantry:natron_crystals>, 2048, <vanillafoodpantry:baking_soda> * 2, 0.5);


// ~~~ AE2 Quartz + Fluix ~~~
furnace.addRecipe(<ore:crystalPureNetherQuartz>.firstItem, <ore:dustQuartz>, 0.25);
furnace.addRecipe(<ore:crystalPureCertusQuartz>.firstItem, <ore:dustCertusQuartz>, 0.4);
furnace.addRecipe(<ore:crystalPureFluix>.firstItem, <ore:dustFluix>, 0.55);

Crusher.addRecipe(<ore:dustQuartz>.firstItem, <ore:crystalPureNetherQuartz>, 1024);
Crusher.addRecipe(<ore:dustCertusQuartz>.firstItem, <ore:crystalCertusQuartz>, 2048);
Crusher.addRecipe(<ore:dustCertusQuartz>.firstItem, <ore:crystalPureCertusQuartz>, 1024); 
Crusher.addRecipe(<ore:dustFluix>.firstItem, <ore:crystalFluix>, 2048);
Crusher.addRecipe(<ore:dustFluix>.firstItem, <ore:crystalPureFluix>, 1024);

MetalPress.addRecipe(<ore:blockQuartz>.firstItem, <ore:crystalPureNetherQuartz>, packingMold2x2, 2048, 4);
MetalPress.addRecipe(<ore:crystalPureNetherQuartz>.firstItem * 4, <ore:blockQuartz>, unpackingMold, 2048);


// ~~~ Endaurum ~~~
recipes.addShapeless("immc/endaurum_plate_hammer", <ore:plateEndaurum>.firstItem,
        [ <ore:pearlEndaurum>, ieHammerTransformer ]);

furnace.addRecipe(<ore:pearlEndaurum>.firstItem, <ore:dustEndaurum>);

AlloySmelter.addRecipe(<ore:pearlEndaurum>.firstItem, <ore:dustEnder>, <ore:dustGold>, 480);
ArcFurnace.addRecipe(<ore:pearlEndaurum>.firstItem, <ore:dustEnder>, null, 240, 512, [ <ore:dustGold> ]);
ArcFurnace.addRecipe(<ore:endereye>.firstItem, <ore:dustEndaurum>, null, 480, 1024, [ <ore:dustBlaze> * 3 ]);

Crusher.addRecipe(<ore:dustEndaurum>.firstItem, <ore:pearlEndaurum>, 4096);

MetalPress.addRecipe(<ore:plateEndaurum>.firstItem, <ore:pearlEndaurum>, plateMold, 2048);


// ~~~ Soulentum ~~~
recipes.remove(<ore:dustSoul>.firstItem);
recipes.addShapeless("immc/soulentum_plate_hammer", <ore:plateSoulentum>.firstItem,
        [ <ore:ingotSoulentum>, ieHammerTransformer ]);

furnace.addRecipe(<ore:ingotSoulentum>.firstItem, <ore:dustSoulentum>);
furnace.addRecipe(<ore:itemFiredSoulBucket>.firstItem, <ceramics:clay_bucket>.withTag({fluids:{FluidName: "soulessence", Amount: 1000}}), 0.5);

ArcFurnace.addRecipe(<ore:ingotSoulentum>.firstItem, <ore:dustSoul>, null, 240, 512, [ <ore:dustSilver> * 2 ]);

Crusher.addRecipe(<ore:dustSoul>.firstItem, <ore:itemFiredSoulBucket>, 4096);

MetalPress.addRecipe(<ore:ingotSoulentum>.firstItem, <ore:nuggetSoulentum>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(<ore:nuggetSoulentum>.firstItem * 9, <ore:ingotSoulentum>, unpackingMold, 2048);
MetalPress.addRecipe(<ore:blockSoulentum>.firstItem, <ore:ingotSoulentum>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(<ore:ingotSoulentum>.firstItem * 9, <ore:blockSoulentum>, unpackingMold, 2048);
MetalPress.addRecipe(<ore:plateSoulentum>.firstItem, <ore:ingotSoulentum>, plateMold, 2048);

Mixer.addRecipe(<liquid:soulsludge> * 1000, <liquid:water> * 1000, [ <minecraft:soul_sand> * 4 ], 4096);

Distillation.addRecipe([ <liquid:soulessence> * 10 ], [ <minecraft:sand> ], <liquid:soulsludge> * 25, 4000, 200, [ 1.0 as float ]);


// ~~~ Sky Steel ~~~
recipes.addShapeless("immc/sky_stone_dust", <ore:dustSkyStone>.firstItem,
        [ <ore:dustObsidian>, <ore:dustObsidian>, <ore:dustCertusQuartz>, <ore:dustEmerald> ]);

furnace.addRecipe(<ore:blockSkyStone>.firstItem, <ore:dustSkyStone>, 0.2);
furnace.addRecipe(<ore:ingotSkySteel>.firstItem, <ore:dustSkySteel>, 0.3);

Crusher.addRecipe(<ore:dustSkyStone>.firstItem, <ore:blockSkyStone>, 4096);
Crusher.addRecipe(<ore:dustSkyStone>.firstItem, <ore:blockSmoothSkyStone>, 4096);
Crusher.removeRecipe(<ore:dustSkySteel>.firstItem);
Crusher.addRecipe(<ore:dustSkyStone>.firstItem, <ore:ingotSkySteel>, 32768, <ore:dustSkySteel>.firstItem, 0.6);

ArcFurnace.addRecipe(<ore:ingotSkySteel>.firstItem, <ore:dustSkyStone>, null, 240, 512, [ <ore:dustSteel> * 2 ]);

MetalPress.addRecipe(<ore:ingotSkySteel>.firstItem, <ore:nuggetSkySteel>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(<ore:nuggetSkySteel>.firstItem * 9, <ore:ingotSkySteel>, unpackingMold, 2048);
MetalPress.addRecipe(<ore:blockSkySteel>.firstItem, <ore:ingotSkySteel>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(<ore:ingotSkySteel>.firstItem * 9, <ore:blockSkySteel>, unpackingMold, 2048);
MetalPress.addRecipe(<ore:plateSkySteel>.firstItem, <ore:ingotSkySteel>, plateMold, 2048);


// ~~~ Witherium ~~~
furnace.addRecipe(<ore:ingotWitherium>.firstItem, <ore:dustWitherium>, 0.3);

CokeOven.addRecipe(<ore:dustWither>.firstItem, 1, <ore:skullWither>, 6000);

MetalPress.addRecipe(<ore:skullWither>.firstItem, <ore:ingotWither>, packingMold3x3, 8192, 9);

ArcFurnace.addRecipe(<ore:ingotWitherium>.firstItem, <ore:ingotSoulentum>, null, 600, 4096, [ <ore:dustWither> * 2 ]);

MetalPress.addRecipe(<ore:ingotWitherium>.firstItem, <ore:nuggetWitherium>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(<ore:nuggetWitherium>.firstItem * 9, <ore:ingotWitherium>, unpackingMold, 2048);
MetalPress.addRecipe(<ore:blockWitherium>.firstItem, <ore:ingotWitherium>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(<ore:ingotWitherium>.firstItem * 9, <ore:blockWitherium>, unpackingMold, 2048);
MetalPress.addRecipe(<ore:plateWitherium>.firstItem, <ore:ingotWitherium>, plateMold, 2048);


// ~~~ Voidanium ~~~
furnace.addRecipe(<ore:blockVoidstone>.firstItem, <ore:dustVoidstone>, 0.2);
furnace.addRecipe(<ore:ingotVoidanium>.firstItem, <ore:dustVoidanium>, 0.3);

Crusher.addRecipe(<ore:dustVoidstone>.firstItem, <ore:blockVoidstone>, 8192);
Crusher.removeRecipe(<ore:dustVoidanium>.firstItem);
Crusher.addRecipe(<ore:dustVoidstone>.firstItem, <ore:ingotVoidanium>, 32768, <ore:dustVoidanium>.firstItem, 0.3);

ArcFurnace.addRecipe(<ore:ingotVoidanium>.firstItem, <ore:dustVoidstone>, null, 600, 4096, [ <ore:dustUranium> * 2 ]);

MetalPress.addRecipe(<ore:ingotVoidanium>.firstItem, <ore:nuggetVoidanium>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(<ore:nuggetVoidanium>.firstItem * 9, <ore:ingotVoidanium>, unpackingMold, 2048);
MetalPress.addRecipe(<ore:blockVoidanium>.firstItem, <ore:ingotVoidanium>, packingMold3x3, 2048, 9);
MetalPress.addRecipe(<ore:ingotVoidanium>.firstItem * 9, <ore:blockVoidanium>, unpackingMold, 2048);
MetalPress.addRecipe(<ore:plateVoidanium>.firstItem, <ore:ingotVoidanium>, plateMold, 2048);


// ~~~ Dragonium ~~~
Mixer.addRecipe(<liquid:dragonsbreath> * 100, <liquid:potion>.withTag({Potion:"minecraft:awkward"}) * 1000, [ <ore:dustSkySteel>, <ore:dustWitherium>, <ore:dustVoidanium>, <ore:dustFluix> ], 32768);

BottlingMachine.addRecipe(<ore:bottleDragonsBreath>.firstItem, <ore:itemEmptyBottle>, <liquid:dragonsbreath> * 100);

Squeezer.addRecipe(null, <liquid:dragonsbreath> * 1000, <ore:skullDragon>, 32768);
Squeezer.addRecipe(null, <liquid:dragonsbreath> * 4000, <ore:eggDragon>, 65536);

Refinery.addRecipe(<liquid:magmaticdragonium> * 10, <liquid:dragonsbreath> * 100, <liquid:lava> * 100, 16000);