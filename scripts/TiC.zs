#modloaded tconstruct
#modloaded tcomplement

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import mods.jei.JEI;
import mods.tconstruct.Fuel;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;

import scripts.TiCTools.ironPick;
import scripts.TiCTools.steelPick;
import scripts.TiCTools.enderPick;

val debug = true;

val itemsToAlwaysRemove = [
] as string[];
val itemsWithCastingRecipesToRemove = [
    "item.tconstruct.cast",
    "item.tconstruct.clay_cast",
    "item.tconstruct.cast_custom.ingot",
    "item.tconstruct.cast_custom.nugget",
    "item.tconstruct.cast_custom.gem",
    "item.tconstruct.cast_custom.plate",
    "item.tconstruct.cast_custom.gear"
] as string[];
val itemsToNotRemove = [
    "tile.tconstruct.soil.grout",
    "tile.tconstruct.faucet",
    "item.tconstruct.cast",
    "item.tconstruct.clay_cast",
    "item.tconstruct.tool_rod",
    "tile.tconstruct.channel",
    "tile.tconstruct.tinker_tank_controller"
] as string[];
val itemNamePartsToNeverRemove = [
    ".seared",
    ".smeltery",
    ".casting",
    ".glass"
] as string[];

val tconstructItems = loadedMods["tconstruct"].items;
for i in tconstructItems {
    if (itemsWithCastingRecipesToRemove has i.name) {
        Casting.removeTableRecipe(i);
    }

    var remove = true;
    if (!(itemsToAlwaysRemove has i.name)) {
        if (itemsToNotRemove has i.name) {
            remove = false;
        } else {
            for n in itemNamePartsToNeverRemove {
                if (i.name has n) {
                    remove = false;
                    break;
                }
            }
        }
    }
    if (remove) {
        if (debug) {
            print("REMOVING TiC item: " ~ i.name ~ " with " ~ i.tag);
        }
        JEI.removeAndHide(i);
    } else if (debug) {
        print("NOT removing TiC item: " ~ i.name ~ " with " ~ i.tag);
    }
}

val itemsWithMaterialCastingRecipesToRemove = [
    <tconstruct:sharpening_kit>,
    <tconstruct:pick_head>,
    <tconstruct:shovel_head>,
    <tconstruct:axe_head>,
    <tconstruct:sword_blade>,
    <tconstruct:knife_blade>,
    <tconstruct:wide_guard>,
    <tconstruct:cross_guard>,
    <tconstruct:hand_guard>,
    <tconstruct:shard>,
    <tconstruct:excavator_head>,
    <tconstruct:pan_head>,
    <tconstruct:scythe_head>,
    <tconstruct:hammer_head>,
    <tconstruct:kama_head>,
    <tconstruct:broad_axe_head>,
    <tconstruct:tool_rod>,
    <tconstruct:tough_tool_rod>,
    <tconstruct:binding>,
    <tconstruct:tough_binding>,
    <tconstruct:sign_head>,
    <tconstruct:arrow_head>,
    <tconstruct:bow_limb>,
    <tconstruct:large_sword_blade>,
    <tconstruct:large_plate>
] as IItemStack[];
val castingMaterialsToRemove = [
    "iron",
    "gold",
    "steel",
    "aluminum",
    "alubrass",
    "nickel",
    "lead",
    "copper",
    "electrum",
    "constantan",
    "silver",
    "ardite",
    "cobalt",
    "manyullyn",
    "obsidian",
    "ender",
    "knightslime",
    "pigiron"
] as string[];
for i in itemsWithMaterialCastingRecipesToRemove {
    for m in castingMaterialsToRemove {
        Casting.removeTableRecipe(i.withTag({Material: m}));
    }
}

Casting.removeTableRecipe(<minecraft:iron_nugget>);
Casting.removeTableRecipe(<minecraft:iron_ingot>);
Casting.removeTableRecipe(<minecraft:gold_nugget>);
Casting.removeTableRecipe(<minecraft:gold_ingot>);
Casting.removeTableRecipe(<minecraft:emerald>);
Casting.removeTableRecipe(<tconstruct:edible:3>);
Casting.removeTableRecipe(<tconstruct:materials:1>);
Casting.removeTableRecipe(<tconstruct:ingots>);
Casting.removeTableRecipe(<tconstruct:ingots:1>);
Casting.removeTableRecipe(<tconstruct:ingots:2>);
Casting.removeTableRecipe(<tconstruct:ingots:3>);
Casting.removeTableRecipe(<tconstruct:ingots:4>);
Casting.removeTableRecipe(<tconstruct:ingots:5>);
Casting.removeTableRecipe(<tconstruct:nuggets>);
Casting.removeTableRecipe(<tconstruct:nuggets:1>);
Casting.removeTableRecipe(<tconstruct:nuggets:2>);
Casting.removeTableRecipe(<tconstruct:nuggets:3>);
Casting.removeTableRecipe(<tconstruct:nuggets:4>);
Casting.removeTableRecipe(<tconstruct:nuggets:5>);
Casting.removeTableRecipe(<immersiveengineering:metal>);
Casting.removeTableRecipe(<immersiveengineering:metal:20>);
Casting.removeTableRecipe(<immersiveengineering:metal:30>);
Casting.removeTableRecipe(<immersiveengineering:metal:1>);
Casting.removeTableRecipe(<immersiveengineering:metal:21>);
Casting.removeTableRecipe(<immersiveengineering:metal:31>);
Casting.removeTableRecipe(<immersiveengineering:metal:2>);
Casting.removeTableRecipe(<immersiveengineering:metal:22>);
Casting.removeTableRecipe(<immersiveengineering:metal:32>);
Casting.removeTableRecipe(<immersiveengineering:metal:3>);
Casting.removeTableRecipe(<immersiveengineering:metal:23>);
Casting.removeTableRecipe(<immersiveengineering:metal:33>);
Casting.removeTableRecipe(<immersiveengineering:metal:4>);
Casting.removeTableRecipe(<immersiveengineering:metal:24>);
Casting.removeTableRecipe(<immersiveengineering:metal:34>);
Casting.removeTableRecipe(<immersiveengineering:metal:5>);
Casting.removeTableRecipe(<immersiveengineering:metal:25>);
Casting.removeTableRecipe(<immersiveengineering:metal:35>);
Casting.removeTableRecipe(<immersiveengineering:metal:6>);
Casting.removeTableRecipe(<immersiveengineering:metal:26>);
Casting.removeTableRecipe(<immersiveengineering:metal:36>);
Casting.removeTableRecipe(<immersiveengineering:metal:7>);
Casting.removeTableRecipe(<immersiveengineering:metal:27>);
Casting.removeTableRecipe(<immersiveengineering:metal:37>);
Casting.removeTableRecipe(<immersiveengineering:metal:8>);
Casting.removeTableRecipe(<immersiveengineering:metal:28>);
Casting.removeTableRecipe(<immersiveengineering:metal:38>);
Casting.removeTableRecipe(<immersiveengineering:metal:39>);
Casting.removeTableRecipe(<immersiveengineering:metal:40>);

Casting.removeBasinRecipe(<minecraft:iron_block>);
Casting.removeBasinRecipe(<minecraft:gold_block>);
Casting.removeBasinRecipe(<minecraft:emerald_block>);
Casting.removeBasinRecipe(<minecraft:sand:1>);
Casting.removeBasinRecipe(<tconstruct:firewood>);
Casting.removeBasinRecipe(<tconstruct:metal>);
Casting.removeBasinRecipe(<tconstruct:metal:1>);
Casting.removeBasinRecipe(<tconstruct:metal:2>);
Casting.removeBasinRecipe(<tconstruct:metal:3>);
Casting.removeBasinRecipe(<tconstruct:metal:4>);
Casting.removeBasinRecipe(<tconstruct:metal:5>);
Casting.removeBasinRecipe(<immersiveengineering:storage>);
Casting.removeBasinRecipe(<immersiveengineering:storage:1>);
Casting.removeBasinRecipe(<immersiveengineering:storage:2>);
Casting.removeBasinRecipe(<immersiveengineering:storage:3>);
Casting.removeBasinRecipe(<immersiveengineering:storage:4>);
Casting.removeBasinRecipe(<immersiveengineering:storage:5>);
Casting.removeBasinRecipe(<immersiveengineering:storage:6>);
Casting.removeBasinRecipe(<immersiveengineering:storage:7>);
Casting.removeBasinRecipe(<immersiveengineering:storage:8>);

// These aren't in the mod's list for some reason...
JEI.removeAndHide(<tconstruct:ingots:5>);
JEI.removeAndHide(<tconstruct:metal:5>);
JEI.removeAndHide(<tconstruct:nuggets:5>);
JEI.removeAndHide(<tconstruct:bolt>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, Accuracy: 1.0 as float, MiningSpeed: 7.07 as float, FreeModifiers: 3, Durability: 111, HarvestLevel: 4, Attack: 4.2 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, Accuracy: 1.0 as float, MiningSpeed: 7.07 as float, FreeModifiers: 3, Durability: 111, HarvestLevel: 4, Attack: 4.2 as float}, Special: {Categories: ["no_melee", "projectile", "tool"]}, TinkerData: {Materials: ["wood", "obsidian", "feather"], Modifiers: []}}));

// Liquids
JEI.hide(<liquid:purpleslime>);
JEI.hide(<liquid:knightslime>);
JEI.hide(<liquid:manyullyn>);
JEI.hide(<liquid:cobalt>);
JEI.hide(<liquid:ardite>);
JEI.hide(<liquid:pigiron>);
JEI.hide(<liquid:emerald>);
JEI.hide(<liquid:blood>);
JEI.hide(<liquid:dirt>);
JEI.hide(<liquid:milk>);
JEI.hide(<forge:bucketfilled>.withTag({"FluidName": "purpleslime", "Amount": 1000}));
JEI.hide(<forge:bucketfilled>.withTag({"FluidName": "knightslime", "Amount": 1000}));
JEI.hide(<forge:bucketfilled>.withTag({"FluidName": "manyullyn", "Amount": 1000}));
JEI.hide(<forge:bucketfilled>.withTag({"FluidName": "cobalt", "Amount": 1000}));
JEI.hide(<forge:bucketfilled>.withTag({"FluidName": "ardite", "Amount": 1000}));
JEI.hide(<forge:bucketfilled>.withTag({"FluidName": "pigiron", "Amount": 1000}));
JEI.hide(<forge:bucketfilled>.withTag({"FluidName": "emerald", "Amount": 1000}));
JEI.hide(<forge:bucketfilled>.withTag({"FluidName": "blood", "Amount": 1000}));
JEI.hide(<forge:bucketfilled>.withTag({"FluidName": "dirt", "Amount": 1000}));

// Add back in certain parts that we want

// Casts
JEI.removeAndHide(<tconstruct:cast>);
JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconstruct:sharpening_kit"}));
JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"}));
JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconstruct:tough_tool_rod"}));
JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconstruct:excavator_head"}));
JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconstruct:sign_head"}));
JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconstruct:large_plate"}));
JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconstruct:kama_head"}));
JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconstruct:cross_guard"}));
JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconstruct:shard"}));
JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconstruct:large_sword_blade"}));
JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconstruct:arrow_head"}));
JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconstruct:scythe_head"}));
JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconstruct:hand_guard"}));
JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconstruct:broad_axe_head"}));
JEI.removeAndHide(<tconstruct:cast>.withTag({PartType: "tconstruct:tough_binding"}));
JEI.removeAndHide(<tconstruct:clay_cast>);
JEI.removeAndHide(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:sharpening_kit"}));
JEI.removeAndHide(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:pan_head"}));
JEI.removeAndHide(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:tough_tool_rod"}));
JEI.removeAndHide(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:excavator_head"}));
JEI.removeAndHide(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:sign_head"}));
JEI.removeAndHide(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:large_plate"}));
JEI.removeAndHide(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:kama_head"}));
JEI.removeAndHide(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:cross_guard"}));
JEI.removeAndHide(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:shard"}));
JEI.removeAndHide(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:large_sword_blade"}));
JEI.removeAndHide(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:arrow_head"}));
JEI.removeAndHide(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:scythe_head"}));
JEI.removeAndHide(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:hand_guard"}));
JEI.removeAndHide(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:broad_axe_head"}));
JEI.removeAndHide(<tconstruct:clay_cast>.withTag({PartType: "tconstruct:tough_binding"}));

val stick = <ore:stickWood>;
val treatedStick = <ore:stickTreatedWood>;
val stoneToolMaterial = <ore:cobblestone>;
val blazePowder = <minecraft:blaze_powder>;

// Rods
val woodRod = <tconstruct:tool_rod>.withTag({Material: "wood"});
val treatedWoodRod = <tconstruct:tool_rod>.withTag({Material: "treatedwood"});
JEI.addItem(treatedWoodRod);

recipes.addShaped(woodRod,
        [ [stick, null, null],
          [stick, null, null],
          [null, null, null] ]);
recipes.addShaped(treatedWoodRod,
        [ [treatedStick, null, null],
          [treatedStick, null, null],
          [null, null, null] ]);

// Binding
val stoneBinding = <tconstruct:binding>.withTag({"Material": "stone"});
val ironBinding = <tconstruct:binding>.withTag({"Material": "iron"});
val steelBinding = <tconstruct:binding>.withTag({"Material": "steel"});
JEI.addItem(stoneBinding);
JEI.addItem(ironBinding);
JEI.addItem(steelBinding);

recipes.addShaped(stoneBinding,
        [ [stoneToolMaterial, null, stoneToolMaterial],
          [null, stoneToolMaterial, null],
          [stoneToolMaterial, null, stoneToolMaterial] ]);

// Swords
val stoneGuard = <tconstruct:wide_guard>.withTag({"Material": "stone"});
val ironGuard = <tconstruct:wide_guard>.withTag({"Material": "iron"});
val steelGuard = <tconstruct:wide_guard>.withTag({"Material": "steel"});
JEI.addItem(stoneGuard);
JEI.addItem(ironGuard);
JEI.addItem(steelGuard);

recipes.addShaped(stoneGuard,
        [ [null, null, null],
          [stoneToolMaterial, stoneToolMaterial, stoneToolMaterial],
          [null, null, null] ]);

val stoneBlade = <tconstruct:sword_blade>.withTag({"Material": "stone"});
val ironBlade = <tconstruct:sword_blade>.withTag({"Material": "iron"});
val steelBlade = <tconstruct:sword_blade>.withTag({"Material": "steel"});
val enderBlade = <tconstruct:sword_blade>.withTag({"Material": "ender"});
JEI.addItem(stoneBlade);
JEI.addItem(ironBlade);
JEI.addItem(steelBlade);
JEI.addItem(enderBlade);

val ironSword  = <tconstruct:broadsword>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0 as  float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 9.0  as float}, TinkerData: {Materials: ["wood", "iron", "iron"],          Modifiers: []}});
val steelSword = <tconstruct:broadsword>.withTag({Stats: {AttackSpeedMultiplier: 5.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 12.0 as float}, TinkerData: {Materials: ["treatedwood", "steel", "iron"],  Modifiers: []}});
val enderSword = <tconstruct:broadsword>.withTag({Stats: {AttackSpeedMultiplier: 6.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 16.0 as float}, TinkerData: {Materials: ["treatedwood", "ender", "steel"], Modifiers: []}});

//val ironSword = <tconstruct:broadsword>.withTag({ StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 9.0 as float},  Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0 as  float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 9.0 as float},  Special: {Categories: ["tool"]}, TinkerData: {Materials: ["wood", "iron", "iron"],          Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}], Traits: ["ecological", "magnetic2", "magnetic1"]});
//val steelSword = <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 12.0 as float}, Stats: {AttackSpeedMultiplier: 5.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 12.0 as float}, Special: {Categories: ["tool"]}, TinkerData: {Materials: ["treatedwood", "steel", "iron"],  Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}, {identifier: "lightweight", color: -14122284, level: 1}], Traits: ["ecological", "magnetic2", "magnetic1", "lightweight"]});
//val enderSword = <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 6.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 16.0 as float}, Stats: {AttackSpeedMultiplier: 6.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 16.0 as float}, Special: {Categories: ["tool"]}, TinkerData: {Materials: ["treatedwood", "ender", "steel"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}, {identifier: "lightweight", color: -14122284, level: 1}, {identifier: "enderference", color: -2041712, level: 1}], Traits: ["ecological", "magnetic2", "magnetic1", "lightweight", "enderference"]});

JEI.addItem(ironSword);
JEI.addItem(steelSword);
JEI.addItem(enderSword);

recipes.addShaped(stoneBlade,
        [ [null, stoneToolMaterial, null],
          [null, stoneToolMaterial, null],
          [null, stoneToolMaterial, null] ]);
recipes.addShaped(ironSword,
        [ [null,    null,      ironBlade],
          [null,    ironGuard, null],
          [woodRod, null,      null] ]);
recipes.addShaped(steelSword,
        [ [null,           null,      steelBlade],
          [null,           ironGuard, null],
          [treatedWoodRod, null,      null] ]);
recipes.addShaped(enderSword,
        [ [null,           null,       enderBlade],
          [null,           steelGuard, null],
          [treatedWoodRod, null,       null] ]);

// Shovels
val stoneShovelHead = <tconstruct:shovel_head>.withTag({"Material": "stone"});
val ironShovelHead = <tconstruct:shovel_head>.withTag({"Material": "iron"});
val steelShovelHead = <tconstruct:shovel_head>.withTag({"Material": "steel"});
val enderShovelHead = <tconstruct:shovel_head>.withTag({"Material": "ender"});
JEI.addItem(stoneShovelHead);
JEI.addItem(ironShovelHead);
JEI.addItem(steelShovelHead);
JEI.addItem(enderShovelHead);

val ironShovel  = <tconstruct:shovel>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 2.0 as float}, TinkerData: {Materials: ["wood", "iron", "iron"],          Modifiers: []}});
val steelShovel = <tconstruct:shovel>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 3.0 as float}, TinkerData: {Materials: ["treatedwood", "steel", "iron"],  Modifiers: []}});
val enderShovel = <tconstruct:shovel>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 4.0 as float}, TinkerData: {Materials: ["treatedwood", "ender", "steel"], Modifiers: []}});

//val ironShovel = <tconstruct:shovel>.withTag({ StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 2.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0 as  float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 2.0 as float}, Special: {Categories: ["tool"]}, TinkerData: {Materials: ["wood", "iron", "iron"],          Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}], Traits: ["ecological", "magnetic2", "magnetic1"]});
//val steelShovel = <tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 3.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 3.0 as float}, Special: {Categories: ["tool"]}, TinkerData: {Materials: ["treatedwood", "steel", "iron"],  Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}, {identifier: "lightweight", color: -14122284, level: 1}], Traits: ["ecological", "magnetic2", "magnetic1", "lightweight"]});
//val enderShovel = <tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 4.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 4.0 as float}, Special: {Categories: ["tool"]}, TinkerData: {Materials: ["treatedwood", "ender", "steel"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}, {identifier: "lightweight", color: -14122284, level: 1}, {identifier: "momentum", color: -14122284, level: 1}, {identifier: "enderference", color: -2041712, level: 1}], Traits: ["ecological", "magnetic2", "magnetic1", "lightweight", "momentum", "enderference"]});

JEI.addItem(ironShovel);
JEI.addItem(steelShovel);
JEI.addItem(enderShovel);

recipes.addShaped(stoneShovelHead,
        [ [null, stoneToolMaterial, stoneToolMaterial],
          [null, null,              stoneToolMaterial],
          [null, null,              null] ]);
recipes.addShaped(ironShovel,
        [ [null,    null,        ironShovelHead],
          [null,    ironBinding, null],
          [woodRod, null,        null] ]);
recipes.addShaped(steelShovel,
        [ [null,           null,        steelShovelHead],
          [null,           ironBinding, null],
          [treatedWoodRod, null,        null] ]);
recipes.addShaped(enderShovel,
        [ [null,           null,         enderShovelHead],
          [null,           steelBinding, null],
          [treatedWoodRod, null,         null] ]);

// Axes
val stoneAxeHead = <tconstruct:axe_head>.withTag({"Material": "stone"});
val ironAxeHead = <tconstruct:axe_head>.withTag({"Material": "iron"});
val steelAxeHead = <tconstruct:axe_head>.withTag({"Material": "steel"});
val enderAxeHead = <tconstruct:axe_head>.withTag({"Material": "ender"});
JEI.addItem(stoneAxeHead);
JEI.addItem(ironAxeHead);
JEI.addItem(steelAxeHead);
JEI.addItem(enderAxeHead);

val ironAxe  = <tconstruct:hatchet>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 10.0 as float}, TinkerData: {Materials: ["wood", "iron", "iron"],          Modifiers: []}});
val steelAxe = <tconstruct:hatchet>.withTag({Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 14.0 as float}, TinkerData: {Materials: ["treatedwood", "steel", "iron"],  Modifiers: []}});
val enderAxe = <tconstruct:hatchet>.withTag({Stats: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 18.0 as float}, TinkerData: {Materials: ["treatedwood", "ender", "steel"], Modifiers: []}});

//val ironAxe = <tconstruct:hatchet>.withTag({ StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 10.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0 as  float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 10.0 as float}, Special: {Categories: ["tool"]}, TinkerData: {Materials: ["wood", "iron", "iron"],          Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}], Traits: ["ecological", "magnetic2", "magnetic1"]});
//val steelAxe = <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 14.0 as float}, Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 14.0 as float}, Special: {Categories: ["tool"]}, TinkerData: {Materials: ["treatedwood", "steel", "iron"],  Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}, {identifier: "lightweight", color: -14122284, level: 1}], Traits: ["ecological", "magnetic2", "magnetic1", "lightweight"]});
//val enderAxe = <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 18.0 as float}, Stats: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 18.0 as float}, Special: {Categories: ["tool"]}, TinkerData: {Materials: ["treatedwood", "ender", "steel"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}, {identifier: "lightweight", color: -14122284, level: 1}, {identifier: "momentum", color: -14122284, level: 1}, {identifier: "enderference", color: -2041712, level: 1}], Traits: ["ecological", "magnetic2", "magnetic1", "lightweight", "momentum", "enderference"]});

JEI.addItem(ironAxe);
JEI.addItem(steelAxe);
JEI.addItem(enderAxe);

recipes.addShaped(stoneAxeHead,
        [ [stoneToolMaterial, stoneToolMaterial, null],
          [stoneToolMaterial, null,              null],
          [null,              null,              null] ]);
recipes.addShaped(ironAxe,
        [ [null,    null,        ironAxeHead],
          [null,    ironBinding, null],
          [woodRod, null,        null] ]);
recipes.addShaped(steelAxe,
        [ [null,           null,        steelAxeHead],
          [null,           ironBinding, null],
          [treatedWoodRod, null,        null] ]);
recipes.addShaped(enderAxe,
        [ [null,           null,         enderAxeHead],
          [null,           steelBinding, null],
          [treatedWoodRod, null,         null] ]);

// Pickaxes
val stonePickHead = <tconstruct:pick_head>.withTag({"Material": "stone"});
val ironPickHead = <tconstruct:pick_head>.withTag({"Material": "iron"});
val steelPickHead = <tconstruct:pick_head>.withTag({"Material": "steel"});
val enderPickHead = <tconstruct:pick_head>.withTag({"Material": "ender"});
JEI.addItem(stonePickHead);
JEI.addItem(ironPickHead);
JEI.addItem(steelPickHead);
JEI.addItem(enderPickHead);

// Haste: {StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 3, Durability: 625, HarvestLevel: 3, Attack: 6.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 12.301292 as float, FreeModifiers: 2, Durability: 625, HarvestLevel: 3, Attack: 6.0 as float}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {UsedModifiers: 1, Materials: ["treatedwood", "steel", "iron"], Modifiers: ["haste"]}, Modifiers: [{identifier: "haste", current: 45, color: 9502720, level: 1, max: 50, extraInfo: "44 / 50"}]}
// Haster: {StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 3, Durability: 625, HarvestLevel: 3, Attack: 6.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 18.136486 as float, FreeModifiers: 1, Durability: 625, HarvestLevel: 3, Attack: 6.0 as float}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {UsedModifiers: 2, Materials: ["treatedwood", "steel", "iron"], Modifiers: ["haste"]}, Modifiers: [{identifier: "haste", current: 99, color: 9502720, level: 2, max: 100, extraInfo: "98 / 100"}]}
// Hastest: {StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 3, Durability: 625, HarvestLevel: 3, Attack: 6.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 22.142775 as float, FreeModifiers: 0, Durability: 625, HarvestLevel: 3, Attack: 6.0 as float}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {UsedModifiers: 3, Materials: ["treatedwood", "steel", "iron"], Modifiers: ["haste"]}, Modifiers: [{identifier: "haste", current: 144, color: 9502720, level: 3, max: 150, extraInfo: "143 / 150"}]}
// {StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0 as float, FreeModifiers: 3, Durability: 279, HarvestLevel: 2, Attack: 4.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0 as float, FreeModifiers: 2, Durability: 279, HarvestLevel: 2, Attack: 4.0 as float}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {UsedModifiers: 1, Materials: ["wood", "iron", "iron"], Modifiers: ["luck"]}, Modifiers: [{identifier: "luck", current: 54, color: 2970082, level: 1, max: 60, modifierUsed: 1 as byte, extraInfo: "53 / 60"}], Traits: ["luck"]}

JEI.addItem(ironPick);
JEI.addItem(steelPick);
JEI.addItem(enderPick);

recipes.addShaped("tic/stone_pick_head", stonePickHead,
        [ [null,              stoneToolMaterial, null],
          [stoneToolMaterial, null,              stoneToolMaterial],
          [null,              null,              null] ]);
recipes.addShaped("tic/iron_pick", ironPick,
        [ [null,    null,        ironPickHead],
          [null,    ironBinding, null],
          [woodRod, null,        null] ]);
recipes.addShaped("tic/steel_pick", steelPick,
        [ [null,           null,        steelPickHead],
          [null,           ironBinding, null],
          [treatedWoodRod, null,        null] ]);
recipes.addShaped("tic/ender_pick", enderPick,
        [ [null,           null,         enderPickHead],
          [null,           steelBinding, null],
          [treatedWoodRod, null,         null] ]);

// Engineer's Hammer
val stoneHammerHead = <tconstruct:hammer_head>.withTag({"Material": "stone"});
val ironHammerHead = <tconstruct:hammer_head>.withTag({"Material": "iron"});
JEI.addItem(stoneHammerHead);
JEI.addItem(ironHammerHead);

recipes.addShaped("tic/stone_hammer_head", stoneHammerHead,
        [ [stoneToolMaterial, stoneToolMaterial, null],
          [stoneToolMaterial, stoneToolMaterial, null],
          [null,              null,              null] ]);

val engineerHammer = <immersiveengineering:tool>;
recipes.removeShaped(engineerHammer);
recipes.addShaped("tic/engineers_hammer", engineerHammer,
        [ [null,    null,        ironHammerHead],
          [null,    ironBinding, null],
          [woodRod, null,        null] ]);

// Shears/Wire cutters
val stoneKnifeBlade = <tconstruct:knife_blade>.withTag({"Material": "stone"});
val ironKnifeBlade = <tconstruct:knife_blade>.withTag({"Material": "iron"});
JEI.addItem(stoneKnifeBlade);
JEI.addItem(ironKnifeBlade);

recipes.addShaped("tic/stone_knife_blade", stoneKnifeBlade,
        [ [null, stoneToolMaterial, null],
          [null, stoneToolMaterial, null],
          [null, null, null] ]);

val engineerCutters = <immersiveengineering:tool:1>;
recipes.removeShaped(engineerCutters);
recipes.addShaped("tic/engineers_cutters", engineerCutters,
        [ [ironKnifeBlade, ironKnifeBlade, null],
          [woodRod,        woodRod,        null],
          [null,           null,           null] ]);

// !!! Smeltery !!!

// Smeltery parts
val searedBrick = <tconstruct:materials>;
val circBoard = <immersiveengineering:material:27>;
val steelPlate = <immersiveengineering:metal:38>;

val smelteryDrain = <tconstruct:smeltery_io>;
recipes.remove(smelteryDrain);
recipes.addShaped("tic/smeltery_drain", smelteryDrain,
        [ [ searedBrick, steelPlate, searedBrick ],
          [ steelPlate,  null,       steelPlate ],
          [ searedBrick, steelPlate, searedBrick ] ]);

val searedTank = <tconstruct:seared_tank>;
recipes.remove(searedTank);
recipes.addShaped("tic/seared_tank", searedTank,
        [ [ searedBrick, steelPlate,                searedBrick ],
          [ steelPlate,  <ore:blockGlassColorless>, steelPlate ],
          [ searedBrick, steelPlate,                searedBrick ] ]);

val smelteryController = <tconstruct:smeltery_controller>;
val ieRedstoneEngBlk = <immersiveengineering:metal_decoration0:3>;
recipes.remove(smelteryController);
recipes.addShaped("tic/smeltery_controller", smelteryController,
        [ [ searedBrick, steelPlate,       searedBrick ],
          [ steelPlate,  circBoard,        steelPlate ],
          [ searedBrick, ieRedstoneEngBlk, searedBrick ] ]);

val furnaceController = <tconstruct:seared_furnace_controller>;
val mcFurnace = <minecraft:furnace>;
recipes.remove(furnaceController);
recipes.addShaped("tic/seared_furnace_controller", furnaceController,
        [ [ searedBrick, steelPlate, searedBrick ],
          [ steelPlate,  circBoard,  steelPlate ],
          [ searedBrick, mcFurnace,  searedBrick ] ]);

val tankController = <tconstruct:tinker_tank_controller>;
val mcBucket = <minecraft:bucket>;
recipes.remove(tankController);
recipes.addShaped("tic/tinker_tank_controller", tankController,
        [ [ searedBrick, steelPlate, searedBrick ],
          [ steelPlate,  circBoard,  steelPlate ],
          [ searedBrick, mcBucket,   searedBrick ] ]);

// Casting
val liquidClay = <liquid:clay>;
val liquidAlubrass = <liquid:alubrass>;
val liquidIron = <liquid:iron>;
val liquidSteel = <liquid:steel>;
val liquidEnder = <liquid:ender>;

recipes.remove(<minecraft:bucket>);
Casting.removeTableRecipe(<tcomplement:cast>, <liquid:gold>);

val toolRodCast = <tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"});
val panHeadCast = <tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"});
val axeHeadCast = <tconstruct:cast>.withTag({PartType: "tconstruct:axe_head"});
val shovelHeadCast = <tconstruct:cast>.withTag({PartType: "tconstruct:shovel_head"});
val swordBladeCast = <tconstruct:cast>.withTag({PartType: "tconstruct:sword_blade"});
val bindingCast = <tconstruct:cast>.withTag({PartType: "tconstruct:binding"});
val knifeBladeCast = <tconstruct:cast>.withTag({PartType: "tconstruct:knife_blade"});
val guardCast = <tconstruct:cast>.withTag({PartType: "tconstruct:wide_guard"});
val pickHeadCast = <tconstruct:cast>.withTag({PartType: "tconstruct:pick_head"});
val hammerHeadCast = <tconstruct:cast>.withTag({PartType: "tconstruct:hammer_head"});
val bowLimbCast = <tconstruct:cast>.withTag({PartType: "tconstruct:bow_limb"});

Casting.addTableRecipe(toolRodCast, woodRod, liquidAlubrass, 144, true);
Casting.addTableRecipe(toolRodCast, treatedWoodRod, liquidAlubrass, 144, true);
Casting.addTableRecipe(panHeadCast, <minecraft:ender_pearl>, liquidAlubrass, 144, true);
Casting.addTableRecipe(panHeadCast, <minecraft:slime_ball>, liquidAlubrass, 144, true);
Casting.addTableRecipe(axeHeadCast, stoneAxeHead, liquidAlubrass, 144, true);
Casting.addTableRecipe(shovelHeadCast, stoneShovelHead, liquidAlubrass, 144, true);
Casting.addTableRecipe(swordBladeCast, stoneBlade, liquidAlubrass, 144, true);
Casting.addTableRecipe(bindingCast, stoneBinding, liquidAlubrass, 144, true);
Casting.addTableRecipe(knifeBladeCast, stoneKnifeBlade, liquidAlubrass, 144, true);
Casting.addTableRecipe(guardCast, stoneGuard, liquidAlubrass, 144, true);
Casting.addTableRecipe(pickHeadCast, stonePickHead, liquidAlubrass, 144, true);
Casting.addTableRecipe(hammerHeadCast, stoneHammerHead, liquidAlubrass, 144, true);
//Casting.addTableRecipe(bowLimbCast, stoneHammerHead, liquidAlubrass, 144, true);

val toolRodClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:tool_rod"});
val panHeadClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:pan_head"});
val axeHeadClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:axe_head"});
val shovelHeadClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:shovel_head"});
val swordBladeClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:sword_blade"});
val bindingClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:binding"});
val knifeBladeClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:knife_blade"});
val guardClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:wide_guard"});
val pickHeadClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:pick_head"});
val hammerHeadClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:hammer_head"});
val bowLimbClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:bow_limb"});

Casting.addTableRecipe(toolRodClayCast, woodRod, liquidClay, 288, true);
Casting.addTableRecipe(toolRodClayCast, treatedWoodRod, liquidClay, 288, true);
Casting.addTableRecipe(panHeadClayCast, <minecraft:ender_pearl>, liquidClay, 288, true);
Casting.addTableRecipe(panHeadClayCast, <minecraft:slime_ball>, liquidClay, 288, true);
Casting.addTableRecipe(axeHeadClayCast, stoneAxeHead, liquidClay, 288, true);
Casting.addTableRecipe(shovelHeadClayCast, stoneShovelHead, liquidClay, 288, true);
Casting.addTableRecipe(swordBladeClayCast, stoneBlade, liquidClay, 288, true);
Casting.addTableRecipe(bindingClayCast, stoneBinding, liquidClay, 288, true);
Casting.addTableRecipe(knifeBladeClayCast, stoneKnifeBlade, liquidClay, 288, true);
Casting.addTableRecipe(guardClayCast, stoneGuard, liquidClay, 288, true);
Casting.addTableRecipe(pickHeadClayCast, stonePickHead, liquidClay, 288, true);
Casting.addTableRecipe(hammerHeadClayCast, stoneHammerHead, liquidClay, 288, true);

Casting.addTableRecipe(ironBinding, bindingCast, liquidIron, 144, false, 100);
Casting.addTableRecipe(ironBinding, bindingClayCast, liquidIron, 144, true, 120);
Casting.addTableRecipe(steelBinding, bindingCast, liquidSteel, 144, false, 100);
Casting.addTableRecipe(steelBinding, bindingClayCast, liquidSteel, 144, true, 120);

Casting.addTableRecipe(ironGuard, guardCast, liquidIron, 144, false, 100);
Casting.addTableRecipe(ironGuard, guardClayCast, liquidIron, 144, true, 120);
Casting.addTableRecipe(steelGuard, guardCast, liquidSteel, 144, false, 100);
Casting.addTableRecipe(steelGuard, guardClayCast, liquidSteel, 144, true, 120);

Casting.addTableRecipe(ironBlade, swordBladeCast, liquidIron, 288, false, 100);
Casting.addTableRecipe(ironBlade, swordBladeClayCast, liquidIron, 288, true, 120);
Casting.addTableRecipe(steelBlade, swordBladeCast, liquidSteel, 288, false, 100);
Casting.addTableRecipe(steelBlade, swordBladeClayCast, liquidSteel, 288, true, 120);
Casting.addTableRecipe(enderBlade, swordBladeCast, liquidEnder, 288, false, 100);
Casting.addTableRecipe(enderBlade, swordBladeClayCast, liquidEnder, 288, true, 120);

Casting.addTableRecipe(ironAxeHead, axeHeadCast, liquidIron, 288, false, 100);
Casting.addTableRecipe(ironAxeHead, axeHeadClayCast, liquidIron, 288, true, 120);
Casting.addTableRecipe(steelAxeHead, axeHeadCast, liquidSteel, 288, false, 100);
Casting.addTableRecipe(steelAxeHead, axeHeadClayCast, liquidSteel, 288, true, 120);
Casting.addTableRecipe(enderAxeHead, axeHeadCast, liquidEnder, 288, false, 100);
Casting.addTableRecipe(enderAxeHead, axeHeadClayCast, liquidEnder, 288, true, 120);

Casting.addTableRecipe(ironShovelHead, shovelHeadCast, liquidIron, 288, false, 100);
Casting.addTableRecipe(ironShovelHead, shovelHeadClayCast, liquidIron, 288, true, 120);
Casting.addTableRecipe(steelShovelHead, shovelHeadCast, liquidSteel, 288, false, 100);
Casting.addTableRecipe(steelShovelHead, shovelHeadClayCast, liquidSteel, 288, true, 120);
Casting.addTableRecipe(enderShovelHead, shovelHeadCast, liquidEnder, 288, false, 100);
Casting.addTableRecipe(enderShovelHead, shovelHeadClayCast, liquidEnder, 288, true, 120);

Casting.addTableRecipe(ironPickHead, pickHeadCast, liquidIron, 288, false, 100);
Casting.addTableRecipe(ironPickHead, pickHeadClayCast, liquidIron, 288, true, 120);
Casting.addTableRecipe(steelPickHead, pickHeadCast, liquidSteel, 288, false, 100);
Casting.addTableRecipe(steelPickHead, pickHeadClayCast, liquidSteel, 288, true, 120);
Casting.addTableRecipe(enderPickHead, pickHeadCast, liquidEnder, 288, false, 100);
Casting.addTableRecipe(enderPickHead, pickHeadClayCast, liquidEnder, 288, true, 120);

Casting.addTableRecipe(ironKnifeBlade, knifeBladeCast, liquidIron, 144, false, 100);
Casting.addTableRecipe(ironKnifeBlade, knifeBladeClayCast, liquidIron, 144, true, 120);

Casting.addTableRecipe(ironHammerHead, hammerHeadCast, liquidIron, 1152, false, 100);
Casting.addTableRecipe(ironHammerHead, hammerHeadClayCast, liquidIron, 1152, true, 120);

// Tiny iron
Melting.addRecipe(<liquid:iron> * 36, <ore:dustTinyIron>, 434);

// Lava
val lavaDef = <liquid:lava>.definition;
lavaDef.temperature = 1100;

// Ender stuff
//Casting.addTableRecipe(<minecraft:gold_ingot>, <minecraft:gold_ingot>, <liquid:enderium>, 250, false, 500);
Melting.addRecipe(<liquid:ender> * 250, <ore:enderpearl>, 1800);
Melting.addRecipe(<liquid:ender> * 250, <ore:dustEnder>, 1800);
Melting.addRecipe(<liquid:ender> * 250, <ore:plateEnder>, 1800);
Melting.addEntityMelting(<entity:minecraft:enderman>, <liquid:ender>);
Casting.addTableRecipe(<minecraft:ender_pearl>, panHeadCast, <liquid:ender>, 250, false, 120);
Casting.addTableRecipe(<minecraft:ender_pearl>, panHeadClayCast, <liquid:ender>, 250, true, 120);

// Blaze
Fuel.registerFuel(<liquid:blaze> * 2, 1200);
Melting.addRecipe(<liquid:blaze> * 250, <minecraft:blaze_powder>, 1100);
Melting.addRecipe(<liquid:blaze> * 500, <minecraft:blaze_rod>, 1100);
Melting.addEntityMelting(<entity:minecraft:blaze>, <liquid:blaze>);
Casting.addTableRecipe(<minecraft:blaze_rod>, toolRodCast, <liquid:blaze>, 250, false, 120);
Casting.addTableRecipe(<minecraft:blaze_rod>, toolRodClayCast, <liquid:blaze>, 250, true, 120);