#modloaded tconstruct

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import mods.jei.JEI;
import mods.tconstruct.Fuel;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;
import mods.tconstruct.Alloy;

val itemsToAlwaysRemove = [
] as string[];
val itemsWithCastingRecipesToRemove = [
    "item.tconstruct.cast",
    "item.tconstruct.clay_cast",
    "item.tconstruct.cast_custom.nugget",
    "item.tconstruct.cast_custom.plate",
    "item.tconstruct.cast_custom.gear"
] as string[];
val itemsToNotRemove = [
    "tile.tconstruct.soil.grout",
    "tile.tconstruct.faucet",
    "item.tconstruct.cast",
    "item.tconstruct.clay_cast",
    "item.tconstruct.cast_custom.ingot",
    "item.tconstruct.cast_custom.gem",
    "item.tconstruct.tool_rod",
    "item.tconstruct.bow_limb",
    "item.tconstruct.bow_string",
    "item.tconstruct.shortbow",
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
        JEI.removeAndHide(i);
    }
}

// Liquids
JEI.hide(<liquid:knightslime>);
JEI.hide(<liquid:manyullyn>);
JEI.hide(<liquid:cobalt>);
JEI.hide(<liquid:ardite>);
JEI.hide(<liquid:pigiron>);
JEI.hide(<liquid:iron>);
JEI.hide(<liquid:gold>);
JEI.hide(<liquid:brass>);
JEI.hide(<liquid:alubrass>);
JEI.hide(<liquid:copper>);
JEI.hide(<liquid:tin>);
JEI.hide(<liquid:bronze>);
JEI.hide(<liquid:zinc>);
JEI.hide(<liquid:lead>);
JEI.hide(<liquid:nickel>);
JEI.hide(<liquid:silver>);
JEI.hide(<liquid:electrum>);
JEI.hide(<liquid:steel>);
JEI.hide(<liquid:aluminum>);
JEI.hide(<liquid:uranium>);
JEI.hide(<liquid:constantan>);

val armoryItemsToNotRemove = [
] as string[];

val armoryItems = loadedMods["conarm"].items;
for i in armoryItems {
    var remove = true;
    if (armoryItemsToNotRemove has i.name) {
        remove = false;
    }
    if (remove) {
        JEI.removeAndHide(i);
    }
}

// These aren't in the mod's list for some reason...
JEI.removeAndHide(<tconstruct:ingots:5>);
JEI.removeAndHide(<tconstruct:metal:5>);
JEI.removeAndHide(<tconstruct:nuggets:5>);
JEI.removeAndHide(<tconstruct:bolt>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, Accuracy: 1.0 as float, MiningSpeed: 7.07 as float, FreeModifiers: 3, Durability: 111, HarvestLevel: 4, Attack: 4.2 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, Accuracy: 1.0 as float, MiningSpeed: 7.07 as float, FreeModifiers: 3, Durability: 111, HarvestLevel: 4, Attack: 4.2 as float}, Special: {Categories: ["no_melee", "projectile", "tool"]}, TinkerData: {Materials: ["wood", "obsidian", "feather"], Modifiers: []}}));


// !!! Tools !!!

val flintToolMaterial = <ore:itemRawFlint>;
val stickOre = <ore:stickWood>;
val stringOre = <ore:string>;
val hempOre = <ore:fiberHemp>;

// Rods
val woodRod = <tconstruct:tool_rod>.withTag({Material: "wood"});
val treatedWoodRod = <tconstruct:tool_rod>.withTag({Material: "treatedwood"});
JEI.addItem(treatedWoodRod);

recipes.addShapeless("immc/wood_tool_rod", woodRod,
        [ stickOre, stickOre ]);

// Binding
val woodBinding = <tconstruct:binding>.withTag({"Material": "treatedwood"});
val ironBinding = <tconstruct:binding>.withTag({"Material": "iron"});
val steelBinding = <tconstruct:binding>.withTag({"Material": "steel"});
JEI.addItem(woodBinding);
JEI.addItem(ironBinding);
JEI.addItem(steelBinding);

// Swords
val woodGuard = <tconstruct:wide_guard>.withTag({"Material": "treatedwood"});
val ironGuard = <tconstruct:wide_guard>.withTag({"Material": "iron"});
val steelGuard = <tconstruct:wide_guard>.withTag({"Material": "steel"});
JEI.addItem(woodGuard);
JEI.addItem(ironGuard);
JEI.addItem(steelGuard);

val woodBlade = <tconstruct:sword_blade>.withTag({"Material": "treatedwood"});
val ironBlade = <tconstruct:sword_blade>.withTag({"Material": "iron"});
val steelBlade = <tconstruct:sword_blade>.withTag({"Material": "steel"});
val obsidianBlade = <tconstruct:sword_blade>.withTag({"Material": "obsidianenderalloy"});
JEI.addItem(woodBlade);
JEI.addItem(ironBlade);
JEI.addItem(steelBlade);
JEI.addItem(obsidianBlade);

// Shovels
val woodShovelHead = <tconstruct:shovel_head>.withTag({"Material": "treatedwood"});
val flintShovelHead = <tconstruct:shovel_head>.withTag({"Material": "flint"});
val ironShovelHead = <tconstruct:shovel_head>.withTag({"Material": "iron"});
val steelShovelHead = <tconstruct:shovel_head>.withTag({"Material": "steel"});
val obsidianShovelHead = <tconstruct:shovel_head>.withTag({"Material": "obsidianenderalloy"});
JEI.addItem(woodShovelHead);
JEI.addItem(flintShovelHead);
JEI.addItem(ironShovelHead);
JEI.addItem(steelShovelHead);
JEI.addItem(obsidianShovelHead);

val flintShovel = <tconstruct:shovel>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, FreeModifiers: 0, Durability: 132, HarvestLevel: 1, Attack: 1.0 as float}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: []}});
JEI.addItem(flintShovel);
recipes.addShaped("immc/flint_shovel_head", flintShovelHead,
        [ [flintToolMaterial, flintToolMaterial],
          [null,              flintToolMaterial] ]);
recipes.addShaped("immc/flint_shovel", flintShovel,
        [ [null,    flintShovelHead],
          [woodRod, null           ] ]);

// Axes
val woodAxeHead = <tconstruct:axe_head>.withTag({"Material": "treatedwood"});
val flintAxeHead = <tconstruct:axe_head>.withTag({"Material": "flint"});
val ironAxeHead = <tconstruct:axe_head>.withTag({"Material": "iron"});
val steelAxeHead = <tconstruct:axe_head>.withTag({"Material": "steel"});
val obsidianAxeHead = <tconstruct:axe_head>.withTag({"Material": "obsidianenderalloy"});
JEI.addItem(woodAxeHead);
JEI.addItem(flintAxeHead);
JEI.addItem(ironAxeHead);
JEI.addItem(steelAxeHead);
JEI.addItem(obsidianAxeHead);

val flintAxe = <tconstruct:hatchet>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0  as float, FreeModifiers: 0, Durability: 132, HarvestLevel: 1, Attack: 4.0  as float}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: []}});
JEI.addItem(flintAxe);
recipes.addShaped("immc/flint_axe_head", flintAxeHead,
        [ [flintToolMaterial, flintToolMaterial],
          [flintToolMaterial, null,            ] ]);
recipes.addShaped("immc/flint_axe", flintAxe,
        [ [null,    flintAxeHead],
          [woodRod, null        ] ]);

// Pickaxes
val woodPickHead = <tconstruct:pick_head>.withTag({"Material": "treatedwood"});
val flintPickHead = <tconstruct:pick_head>.withTag({"Material": "flint"});
val ironPickHead = <tconstruct:pick_head>.withTag({"Material": "iron"});
val steelPickHead = <tconstruct:pick_head>.withTag({"Material": "steel"});
val obsidianPickHead = <tconstruct:pick_head>.withTag({"Material": "obsidianenderalloy"});
JEI.addItem(woodPickHead);
JEI.addItem(flintPickHead);
JEI.addItem(ironPickHead);
JEI.addItem(steelPickHead);
JEI.addItem(obsidianPickHead);

val flintPick = <tconstruct:pickaxe>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, FreeModifiers: 0, Durability: 132, HarvestLevel: 1, Attack: 2.0 as float}, TinkerData: {Materials: ["wood", "flint", "wood"], Modifiers: []}});
JEI.addItem(flintPick);
recipes.addShaped("immc/flint_pick_head", flintPickHead,
        [ [null,              flintToolMaterial, null],
          [flintToolMaterial, null,              flintToolMaterial] ]);
recipes.addShaped("immc/flint_pick", flintPick,
        [ [null,    flintPickHead],
          [woodRod, null         ] ]);

// Bows
val woodBowLimb = <tconstruct:bow_limb>.withTag({"Material": "wood"});
val treatedWoodBowLimb = <tconstruct:bow_limb>.withTag({"Material": "treatedwood"});
val stringBowString = <tconstruct:bow_string>.withTag({"Material": "string"});
val hempBowString = <tconstruct:bow_string>.withTag({"Material": "hemp"});
val woodBow = <tconstruct:shortbow>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, DrawSpeed: 1.0 as float, FreeModifiers: 0, ProjectileBonusDamage: 0.0 as float, Durability: 35, Attack: 5.0 as float, Range: 2.0 as float}, TinkerData: {Materials: ["wood", "wood", "string"], Modifiers: []}});

JEI.addItem(treatedWoodBowLimb);
JEI.addItem(hempBowString);
JEI.addItem(woodBow);

recipes.addShaped("immc/string_bow_string", stringBowString,
        [ [null, null, stringOre],
          [null, stringOre, null],
          [stringOre, null, null] ]);
recipes.addShaped("immc/hemp_bow_string", hempBowString,
        [ [null, null, hempOre],
          [null, hempOre, null],
          [hempOre, null, null] ]);

recipes.addShaped("immc/wood_bow_limb", woodBowLimb,
        [ [null, stickOre],
          [stickOre, null],
          [stickOre, null] ]);

recipes.addShaped("immc/wood_bow", woodBow,
        [ [null,        woodBowLimb    ],
          [woodBowLimb, stringBowString] ]);

// Others
val ironHammerHead = <tconstruct:hammer_head>.withTag({"Material": "iron"});
JEI.addItem(ironHammerHead);

val woodKnifeBlade = <tconstruct:knife_blade>.withTag({"Material": "treatedwood"});
val ironKnifeBlade = <tconstruct:knife_blade>.withTag({"Material": "iron"});
JEI.addItem(woodKnifeBlade);
JEI.addItem(ironKnifeBlade);

// Armor
val leather = <improvedbackpacks:tanned_leather>;
val leatherArmorTrim    = <conarm:armor_trim>.withTag({"Material": "leather"});
val leatherArmorPlates  = <conarm:armor_plate>.withTag({"Material": "leather"});
val ironArmorPlates     = <conarm:armor_plate>.withTag({"Material": "iron"});
val steelArmorPlates    = <conarm:armor_plate>.withTag({"Material": "iron"});
val obsidianArmorPlates = <conarm:armor_plate>.withTag({"Material": "obsidianenderalloy"});
JEI.addItem(leatherArmorTrim);
JEI.addItem(leatherArmorPlates);
JEI.addItem(ironArmorPlates);
JEI.addItem(steelArmorPlates);
JEI.addItem(obsidianArmorPlates);

val leatherChestCore  = <conarm:chest_core>.withTag({"Material": "leather"});
val ironChestCore     = <conarm:chest_core>.withTag({"Material": "iron"});
val steelChestCore    = <conarm:chest_core>.withTag({"Material": "iron"});
val obsidianChestCore = <conarm:chest_core>.withTag({"Material": "obsidianenderalloy"});
JEI.addItem(leatherChestCore);
JEI.addItem(ironChestCore);
JEI.addItem(steelChestCore);
JEI.addItem(obsidianChestCore);

val leatherHelmetCore  = <conarm:helmet_core>.withTag({"Material": "leather"});
val ironHelmetCore     = <conarm:helmet_core>.withTag({"Material": "iron"});
val steelHelmetCore    = <conarm:helmet_core>.withTag({"Material": "iron"});
val obsidianHelmetCore = <conarm:helmet_core>.withTag({"Material": "obsidianenderalloy"});
JEI.addItem(leatherHelmetCore);
JEI.addItem(ironHelmetCore);
JEI.addItem(steelHelmetCore);
JEI.addItem(obsidianHelmetCore);

val leatherLeggingsCore  = <conarm:leggings_core>.withTag({"Material": "leather"});
val ironLeggingsCore     = <conarm:leggings_core>.withTag({"Material": "iron"});
val steelLeggingsCore    = <conarm:leggings_core>.withTag({"Material": "iron"});
val obsidianLeggingsCore = <conarm:leggings_core>.withTag({"Material": "obsidianenderalloy"});
JEI.addItem(leatherLeggingsCore);
JEI.addItem(ironLeggingsCore);
JEI.addItem(steelLeggingsCore);
JEI.addItem(obsidianLeggingsCore);

val leatherBootsCore  = <conarm:boots_core>.withTag({"Material": "leather"});
val ironBootsCore     = <conarm:boots_core>.withTag({"Material": "iron"});
val steelBootsCore    = <conarm:boots_core>.withTag({"Material": "iron"});
val obsidianBootsCore = <conarm:boots_core>.withTag({"Material": "obsidianenderalloy"});
JEI.addItem(leatherBootsCore);
JEI.addItem(ironBootsCore);
JEI.addItem(steelBootsCore);
JEI.addItem(obsidianBootsCore);

val leatherChest    = <conarm:chestplate>.withTag({Stats: {Toughness: 0.0 as float, FreeModifiers: 0, Durability: 32,  Defense: 5.0 as float}, TinkerData: {Materials: ["leather", "leather", "leather"], Modifiers: []}});
val leatherHelmet   = <conarm:helmet>.withTag({Stats:     {Toughness: 0.0 as float, FreeModifiers: 0, Durability: 32,  Defense: 4.0 as float}, TinkerData: {Materials: ["leather", "leather", "leather"], Modifiers: []}});
val leatherLeggings = <conarm:leggings>.withTag({Stats:   {Toughness: 0.0 as float, FreeModifiers: 0, Durability: 32,  Defense: 4.0 as float}, TinkerData: {Materials: ["leather", "leather", "leather"], Modifiers: []}});
val leatherBoots    = <conarm:boots>.withTag({Stats:      {Toughness: 0.0 as float, FreeModifiers: 0, Durability: 32,  Defense: 3.0 as float}, TinkerData: {Materials: ["leather", "leather", "leather"], Modifiers: []}});
JEI.addItem(leatherChest);
JEI.addItem(leatherHelmet);
JEI.addItem(leatherLeggings);
JEI.addItem(leatherBoots);

recipes.addShaped("immc/leather_armor_trim", leatherArmorTrim,
        [ [ leather, null,    leather ],
          [ null,    leather, null ],
          [ leather, null,    leather ] ]);
recipes.addShaped("immc/leather_armor_plates", leatherArmorPlates,
        [ [ null,    leather, leather ],
          [ leather, leather, leather ],
          [ leather, leather, null ] ]);

recipes.addShaped("immc/leather_chest_core", leatherChestCore,
        [ [ leather, null,    leather ],
          [ leather, leather, leather ],
          [ leather, leather, leather ] ]);
recipes.addShaped("immc/leather_helmet_core", leatherHelmetCore,
        [ [ leather, leather, leather ],
          [ leather, null,    leather ] ]);
recipes.addShaped("immc/leather_leggings_core", leatherLeggingsCore,
        [ [ leather, leather, leather ],
          [ leather, null,    leather ],
          [ leather, null,    leather ] ]);
recipes.addShaped("immc/leather_boots_core", leatherBootsCore,
        [ [ leather, null, leather ],
          [ leather, null, leather ] ]);

recipes.addShapeless("immc/leather_chest", leatherChest,
        [ leatherChestCore, leatherArmorPlates, leatherArmorTrim ]);
recipes.addShapeless("immc/leather_helmet", leatherHelmet,
        [ leatherHelmetCore, leatherArmorPlates, leatherArmorTrim ]);
recipes.addShapeless("immc/leather_leggings", leatherLeggings,
        [ leatherLeggingsCore, leatherArmorPlates, leatherArmorTrim ]);
recipes.addShapeless("immc/leather_boots", leatherBoots,
        [ leatherBootsCore, leatherArmorPlates, leatherArmorTrim ]);

// Sharpening Kits
val sharpeningKit = <tconstruct:sharpening_kit>;
val flintSharpeningKit = sharpeningKit.withTag({Material: "flint"});
val ironSharpeningKit = sharpeningKit.withTag({Material: "iron"});
val steelSharpeningKit = sharpeningKit.withTag({Material: "steel"});
val obsidianSharpeningKit = sharpeningKit.withTag({Material: "obsidianenderalloy"});

JEI.addItem(flintSharpeningKit);
JEI.addItem(ironSharpeningKit);
JEI.addItem(steelSharpeningKit);
JEI.addItem(obsidianSharpeningKit);

recipes.addShaped("immc/flint_sharpening_kit", flintSharpeningKit,
        [ [ flintToolMaterial, flintToolMaterial ],
          [ flintToolMaterial, flintToolMaterial ] ]);


/*
// !!! Smeltery !!!

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
    <tconstruct:large_plate>,
    <conarm:chest_core>,
    <conarm:helmet_core>,
    <conarm:leggings_core>,
    <conarm:boots_core>
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
    "obsidianenderalloy",
    "refinedender",
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

JEI.removeAndHide(<tconstruct:cast>);
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


// ~~ Smeltery parts ~~

val searedBrick = <tconstruct:materials>;
val circBoard = <immersiveengineering:material:27>;
val steelPlate = <immersiveengineering:metal:38>;

val smelteryDrain = <tconstruct:smeltery_io>;
recipes.remove(smelteryDrain);
recipes.addShaped("immc/smeltery_drain", smelteryDrain,
        [ [ searedBrick, steelPlate, searedBrick ],
          [ steelPlate,  null,       steelPlate ],
          [ searedBrick, steelPlate, searedBrick ] ]);

val searedTank = <tconstruct:seared_tank>;
recipes.remove(searedTank);
recipes.addShaped("immc/seared_tank", searedTank,
        [ [ searedBrick, steelPlate,                searedBrick ],
          [ steelPlate,  <ore:blockGlassColorless>, steelPlate ],
          [ searedBrick, steelPlate,                searedBrick ] ]);
JEI.removeAndHide(<tconstruct:seared_tank:1>);
JEI.removeAndHide(<tconstruct:seared_tank:2>);

val smelteryController = <tconstruct:smeltery_controller>;
val ieRedstoneEngBlk = <immersiveengineering:metal_decoration0:3>;
recipes.remove(smelteryController);
recipes.addShaped("immc/smeltery_controller", smelteryController,
        [ [ searedBrick, steelPlate,       searedBrick ],
          [ steelPlate,  circBoard,        steelPlate ],
          [ searedBrick, ieRedstoneEngBlk, searedBrick ] ]);

val furnaceController = <tconstruct:seared_furnace_controller>;
val mcFurnace = <minecraft:furnace>;
recipes.remove(furnaceController);
recipes.addShaped("immc/seared_furnace_controller", furnaceController,
        [ [ searedBrick, steelPlate, searedBrick ],
          [ steelPlate,  circBoard,  steelPlate ],
          [ searedBrick, mcFurnace,  searedBrick ] ]);

val tankController = <tconstruct:tinker_tank_controller>;
val mcBucket = <minecraft:bucket>;
recipes.remove(tankController);
recipes.addShaped("immc/tinker_tank_controller", tankController,
        [ [ searedBrick, steelPlate, searedBrick ],
          [ steelPlate,  circBoard,  steelPlate ],
          [ searedBrick, mcBucket,   searedBrick ] ]);

val alloyTank = <tcomplement:alloy_tank>;
val faucet = <tconstruct:faucet>;
recipes.remove(alloyTank);
recipes.addShaped("immc/alloy_tank", alloyTank,
        [ [ faucet, searedTank, faucet ] ]);

val melter = <tcomplement:melter>;
val searedGlass = <tconstruct:seared_glass>;
recipes.remove(melter);
recipes.addShaped("immc/melter", melter,
        [ [ null,        searedBrick, null ],
          [ searedBrick, searedGlass, searedBrick ],
          [ searedBrick, searedBrick, searedBrick ] ]);

val heater = <tcomplement:melter:8>;
val glassOre = <ore:blockGlass>;
recipes.remove(heater);
recipes.addShaped("immc/heater", heater,
        [ [ null,        searedBrick, null ],
          [ searedBrick, glassOre,    searedBrick ],
          [ null,        searedBrick, null ] ]);

JEI.removeAndHide(<tcomplement:porcelain_tank>);
JEI.removeAndHide(<tcomplement:porcelain_tank:1>);
JEI.removeAndHide(<tcomplement:porcelain_tank:2>);
JEI.removeAndHide(<tcomplement:porcelain_melter>);
JEI.removeAndHide(<tcomplement:porcelain_melter:8>);
JEI.removeAndHide(<tcomplement:porcelain_alloy_tank>);
JEI.removeAndHide(<tcomplement:porcelain_casting>);
JEI.removeAndHide(<tcomplement:porcelain_casting:1>);


// ~~ Casting ~~

val lava = <liquid:lava>;
val liquidClay = <liquid:clay>;
val liquidAlubrass = <liquid:alubrass>;
val liquidIron = <liquid:iron>;
val liquidSteel = <liquid:steel>;
val liquidDiamond = <liquid:diamond>;
val liquidEmerald = <liquid:emerald>;
val liquidEnder = <liquid:ender>;
val liquidRefinedEnder = <liquid:refined_ender>;
val liquidObsidian = <liquid:obsidian>;
val liquidObsidianAlloy = <liquid:obsidian_ender_alloy>;
val liquidRedstone = <liquid:redstone>;
val liquidElectrum = <liquid:electrum>;
val liquidGlowstone = <liquid:glowstone>;
val liquidQuartz = <liquid:quartz>;
val liquidUranium = <liquid:uranium>;
val liquidBlaze = <liquid:blaze>;
val liquidSoul = <liquid:soularium>;
val liquidWither = <liquid:witherium>;

// Buckets
recipes.remove(<minecraft:bucket>);
if (loadedMods has "ceramics") {
        JEI.removeAndHide(<tcomplement:materials>); // stone bucket, use clay instead
        Casting.removeTableRecipe(<tcomplement:cast>);
        Casting.removeTableRecipe(<tcomplement:cast_clay>);
        Casting.addTableRecipe(<tcomplement:cast>, <ceramics:clay_bucket>, liquidAlubrass, 144);
        Casting.addTableRecipe(<tcomplement:cast_clay>, <ceramics:clay_bucket>, liquidClay, 288, true);
} else {
        Casting.removeTableRecipe(<tcomplement:cast>, <liquid:gold>);
}

// Tools
val toolRodCast = <tconstruct:cast>.withTag({PartType: "tconstruct:tool_rod"});
val axeHeadCast = <tconstruct:cast>.withTag({PartType: "tconstruct:axe_head"});
val shovelHeadCast = <tconstruct:cast>.withTag({PartType: "tconstruct:shovel_head"});
val swordBladeCast = <tconstruct:cast>.withTag({PartType: "tconstruct:sword_blade"});
val bindingCast = <tconstruct:cast>.withTag({PartType: "tconstruct:binding"});
val knifeBladeCast = <tconstruct:cast>.withTag({PartType: "tconstruct:knife_blade"});
val guardCast = <tconstruct:cast>.withTag({PartType: "tconstruct:wide_guard"});
val pickHeadCast = <tconstruct:cast>.withTag({PartType: "tconstruct:pick_head"});
val hammerHeadCast = <tconstruct:cast>.withTag({PartType: "tconstruct:hammer_head"});
val bowLimbCast = <tconstruct:cast>.withTag({PartType: "tconstruct:bow_limb"});
val ingotCast = <tconstruct:cast_custom>;
val gemCast = <tconstruct:cast_custom:2>;
val chestCoreCast = <tconstruct:cast>.withTag({PartType: "conarm:chest_core"});
val helmetCoreCast = <tconstruct:cast>.withTag({PartType: "conarm:helmet_core"});
val leggingsCoreCast = <tconstruct:cast>.withTag({PartType: "conarm:leggings_core"});
val bootsCoreCast = <tconstruct:cast>.withTag({PartType: "conarm:boots_core"});
val sharpeningKitCast = <tconstruct:cast>.withTag({PartType: "tconstruct:sharpening_kit"});
val panHeadCast = <tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"});

Casting.addTableRecipe(toolRodCast, treatedWoodRod, liquidAlubrass, 144, true);
Casting.addTableRecipe(axeHeadCast, woodAxeHead, liquidAlubrass, 144, true);
Casting.addTableRecipe(shovelHeadCast, woodShovelHead, liquidAlubrass, 144, true);
Casting.addTableRecipe(swordBladeCast, woodBlade, liquidAlubrass, 144, true);
Casting.addTableRecipe(bindingCast, woodBinding, liquidAlubrass, 144, true);
Casting.addTableRecipe(knifeBladeCast, woodKnifeBlade, liquidAlubrass, 144, true);
Casting.addTableRecipe(guardCast, woodGuard, liquidAlubrass, 144, true);
Casting.addTableRecipe(pickHeadCast, woodPickHead, liquidAlubrass, 144, true);
Casting.addTableRecipe(hammerHeadCast, stoneHammerHead, liquidAlubrass, 144, true);
Casting.addTableRecipe(chestCoreCast, leatherChestCore, liquidAlubrass, 144, true);
Casting.addTableRecipe(helmetCoreCast, leatherHelmetCore, liquidAlubrass, 144, true);
Casting.addTableRecipe(leggingsCoreCast, leatherLeggingsCore, liquidAlubrass, 144, true);
Casting.addTableRecipe(bootsCoreCast, leatherBootsCore, liquidAlubrass, 144, true);

val toolRodClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:tool_rod"});
val axeHeadClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:axe_head"});
val shovelHeadClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:shovel_head"});
val swordBladeClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:sword_blade"});
val bindingClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:binding"});
val knifeBladeClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:knife_blade"});
val guardClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:wide_guard"});
val pickHeadClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:pick_head"});
val hammerHeadClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:hammer_head"});
val bowLimbClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:bow_limb"});
val chestCoreClayCast = <tconstruct:clay_cast>.withTag({PartType: "conarm:chest_core"});
val helmetCoreClayCast = <tconstruct:clay_cast>.withTag({PartType: "conarm:helmet_core"});
val leggingsCoreClayCast = <tconstruct:clay_cast>.withTag({PartType: "conarm:leggings_core"});
val bootsCoreClayCast = <tconstruct:clay_cast>.withTag({PartType: "conarm:boots_core"});
val sharpeningKitClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:sharpening_kit"});
val panHeadClayCast = <tconstruct:clay_cast>.withTag({PartType: "tconstruct:pan_head"});

Casting.addTableRecipe(toolRodClayCast, treatedWoodRod, liquidClay, 288, true);
Casting.addTableRecipe(axeHeadClayCast, woodAxeHead, liquidClay, 288, true);
Casting.addTableRecipe(shovelHeadClayCast, woodShovelHead, liquidClay, 288, true);
Casting.addTableRecipe(swordBladeClayCast, woodBlade, liquidClay, 288, true);
Casting.addTableRecipe(bindingClayCast, woodBinding, liquidClay, 288, true);
Casting.addTableRecipe(knifeBladeClayCast, woodKnifeBlade, liquidClay, 288, true);
Casting.addTableRecipe(guardClayCast, woodGuard, liquidClay, 288, true);
Casting.addTableRecipe(pickHeadClayCast, woodPickHead, liquidClay, 288, true);
Casting.addTableRecipe(hammerHeadClayCast, stoneHammerHead, liquidClay, 288, true);
Casting.addTableRecipe(chestCoreClayCast, leatherChestCore, liquidClay, 144, true);
Casting.addTableRecipe(helmetCoreClayCast, leatherHelmetCore, liquidClay, 144, true);
Casting.addTableRecipe(leggingsCoreClayCast, leatherLeggingsCore, liquidClay, 144, true);
Casting.addTableRecipe(bootsCoreClayCast, leatherBootsCore, liquidClay, 144, true);

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
Casting.addTableRecipe(obsidianBlade, swordBladeCast, liquidObsidianAlloy, 288, false, 100);
Casting.addTableRecipe(obsidianBlade, swordBladeClayCast, liquidObsidianAlloy, 288, true, 120);

Casting.addTableRecipe(ironAxeHead, axeHeadCast, liquidIron, 288, false, 100);
Casting.addTableRecipe(ironAxeHead, axeHeadClayCast, liquidIron, 288, true, 120);
Casting.addTableRecipe(steelAxeHead, axeHeadCast, liquidSteel, 288, false, 100);
Casting.addTableRecipe(steelAxeHead, axeHeadClayCast, liquidSteel, 288, true, 120);
Casting.addTableRecipe(obsidianAxeHead, axeHeadCast, liquidObsidianAlloy, 288, false, 100);
Casting.addTableRecipe(obsidianAxeHead, axeHeadClayCast, liquidObsidianAlloy, 288, true, 120);

Casting.addTableRecipe(ironShovelHead, shovelHeadCast, liquidIron, 288, false, 100);
Casting.addTableRecipe(ironShovelHead, shovelHeadClayCast, liquidIron, 288, true, 120);
Casting.addTableRecipe(steelShovelHead, shovelHeadCast, liquidSteel, 288, false, 100);
Casting.addTableRecipe(steelShovelHead, shovelHeadClayCast, liquidSteel, 288, true, 120);
Casting.addTableRecipe(obsidianShovelHead, shovelHeadCast, liquidObsidianAlloy, 288, false, 100);
Casting.addTableRecipe(obsidianShovelHead, shovelHeadClayCast, liquidObsidianAlloy, 288, true, 120);

Casting.addTableRecipe(ironPickHead, pickHeadCast, liquidIron, 288, false, 100);
Casting.addTableRecipe(ironPickHead, pickHeadClayCast, liquidIron, 288, true, 120);
Casting.addTableRecipe(steelPickHead, pickHeadCast, liquidSteel, 288, false, 100);
Casting.addTableRecipe(steelPickHead, pickHeadClayCast, liquidSteel, 288, true, 120);
Casting.addTableRecipe(obsidianPickHead, pickHeadCast, liquidObsidianAlloy, 288, false, 100);
Casting.addTableRecipe(obsidianPickHead, pickHeadClayCast, liquidObsidianAlloy, 288, true, 120);

Casting.addTableRecipe(ironKnifeBlade, knifeBladeCast, liquidIron, 144, false, 100);
Casting.addTableRecipe(ironKnifeBlade, knifeBladeClayCast, liquidIron, 144, true, 120);

Casting.addTableRecipe(ironHammerHead, hammerHeadCast, liquidIron, 1152, false, 100);
Casting.addTableRecipe(ironHammerHead, hammerHeadClayCast, liquidIron, 1152, true, 120);

Casting.addTableRecipe(ironSharpeningKit, sharpeningKitCast, liquidIron, 288, false, 100);
Casting.addTableRecipe(ironSharpeningKit, sharpeningKitClayCast, liquidIron, 288, true, 120);
Casting.addTableRecipe(steelSharpeningKit, sharpeningKitCast, liquidSteel, 288, false, 100);
Casting.addTableRecipe(steelSharpeningKit, sharpeningKitClayCast, liquidSteel, 288, true, 120);
Casting.addTableRecipe(obsidianSharpeningKit, sharpeningKitCast, liquidObsidianAlloy, 288, false, 100);
Casting.addTableRecipe(obsidianSharpeningKit, sharpeningKitClayCast, liquidObsidianAlloy, 288, true, 120);

val starCast = <contenttweaker:star_cast>;

// Ender
Casting.addTableRecipe(<ore:enderpearl>.firstItem, panHeadCast, liquidEnder, 250, false, 100);
Casting.addTableRecipe(<ore:enderpearl>.firstItem, panHeadClayCast, liquidEnder, 250, true, 200);
Casting.addTableRecipe(<contenttweaker:refined_ender_pearl>, panHeadCast, liquidRefinedEnder, 250, false, 200);
Casting.addTableRecipe(<contenttweaker:refined_ender_pearl>, panHeadClayCast, liquidRefinedEnder, 250, true, 300);

// Obsidian Alloy
Casting.addTableRecipe(<ore:ingotObsidianEnderAlloy>.firstItem, ingotCast, liquidObsidianAlloy, 144, false, 200);
Casting.addBasinRecipe(<ore:blockObsidianEnderAlloy>.firstItem, null, liquidObsidianAlloy, 1296, false, 600);

// Redstone
Casting.addBasinRecipe(<minecraft:redstone_block>, null, liquidRedstone, 1000, false, 1100);

// Glowstone
Casting.addBasinRecipe(<minecraft:glowstone>, null, liquidGlowstone, 1000, false, 1100);

// Quartz
Casting.addTableRecipe(<contenttweaker:star_cast>, <contenttweaker:wood_star>, liquidAlubrass, 288, true, 100);
Casting.addTableRecipe(<contenttweaker:quartz_star>, starCast, liquidQuartz, 1000, false, 600);
Casting.addBasinRecipe(<ore:blockQuartz>.firstItem, null, liquidQuartz, 1000, false, 1200);

// Blaze
Casting.addTableRecipe(<minecraft:blaze_rod>, toolRodCast, liquidBlaze, 1000, false, 600);
Casting.addTableRecipe(<minecraft:blaze_rod>, toolRodClayCast, liquidBlaze, 1000, true, 660);

// Soularium
Casting.addTableRecipe(<ore:ingotSoularium>.firstItem, ingotCast, liquidSoul, 144, false, 200);
Casting.addBasinRecipe(<ore:blockSoularium>.firstItem, null, liquidSoul, 1296, false, 1800);

// Witherium
Casting.addTableRecipe(<ore:ingotWitherium>.firstItem, ingotCast, liquidWither, 144, false, 200);
Casting.addBasinRecipe(<ore:blockWitherium>.firstItem, null, liquidWither, 1296, false, 1800);


// ~~ Melting ~~

// Iron
Melting.removeRecipe(liquidIron, <ore:nuggetIron>.firstItem);
Melting.removeRecipe(liquidIron, <ore:dustIron>.firstItem);
Melting.addRecipe(liquidIron * 16, <ore:nuggetIron>, 395);
Melting.addRecipe(liquidIron * 144, <ore:dustIron>, 490);

// Steel
Melting.removeRecipe(liquidSteel, <ore:nuggetSteel>.firstItem);
Melting.removeRecipe(liquidSteel, <ore:dustSteel>.firstItem);
Melting.removeRecipe(liquidSteel, <ore:ingotSteel>.firstItem);
Melting.removeRecipe(liquidSteel, <ore:plateSteel>.firstItem);
Melting.removeRecipe(liquidSteel, <ore:blockSheetmetalSteel>.firstItem);
Melting.addRecipe(liquidSteel * 16, <ore:nuggetSteel>, 495);
Melting.addRecipe(liquidSteel * 144, <ore:dustSteel>, 590);
Melting.addRecipe(liquidSteel * 144, <ore:ingotSteel>, 620);
Melting.addRecipe(liquidSteel * 144, <ore:plateSteel>, 610);
Melting.addRecipe(liquidSteel * 576, <ore:blockSheetmetalSteel>, 670);

// Diamond
Melting.addRecipe(liquidDiamond * 666, <ore:gemDiamond>, 866);
Melting.addRecipe(liquidDiamond * 5994, <ore:blockDiamond>, 1433);

// Ender
Melting.removeRecipe(liquidEnder);
Melting.removeRecipe(liquidRefinedEnder);
Melting.addRecipe(liquidEnder * 250, <ore:enderpearl>, 733);
Melting.addRecipe(liquidRefinedEnder * 250, <contenttweaker:refined_ender_pearl>, 933);

// Obsidian Alloy
Melting.removeRecipe(liquidObsidianAlloy);
Melting.addRecipe(liquidObsidianAlloy * 144, <ore:dustObsidianEnderAlloy>, 933);
Melting.addRecipe(liquidObsidianAlloy * 144, <ore:ingotObsidianEnderAlloy>, 1033);
Melting.addRecipe(liquidObsidianAlloy * 1296, <ore:blockObsidianEnderAlloy>, 1433);

// Redstone
Melting.addRecipe(liquidRedstone * 144, <minecraft:redstone>, 600);
Melting.addRecipe(liquidRedstone * 1296, <minecraft:redstone_block>, 800);

// Glowstone
Melting.addRecipe(liquidGlowstone * 250, <minecraft:glowstone_dust>, 600);
Melting.addRecipe(liquidGlowstone * 1000, <minecraft:glowstone>, 800);

// Quartz
Melting.addRecipe(liquidQuartz * 250, <ore:gemQuartz>, 700);
Melting.addRecipe(liquidQuartz * 1000, <ore:blockQuartz>, 900);

// Blaze
Melting.addRecipe(liquidBlaze * 250, <minecraft:blaze_powder>, 900);
Melting.addRecipe(liquidBlaze * 1000, <minecraft:blaze_rod>, 1300);

// Soularium
Melting.addRecipe(liquidSoul * 144, <ore:dustSoularium>, 566);
Melting.addRecipe(liquidSoul * 144, <ore:ingotSoularium>, 666);
Melting.addRecipe(liquidSoul * 1296, <ore:blockSoularium>, 766);

// Witherarium
Melting.addRecipe(liquidWither * 144, <ore:dustWitherium>, 2000);
Melting.addRecipe(liquidWither * 144, <ore:ingotWitherium>, 2500);
Melting.addRecipe(liquidWither * 1296, <ore:blockWitherium>, 2600);


// ~~ Alloying ~~

// Obsidian Alloy
Alloy.addRecipe(liquidObsidianAlloy * 2, [ liquidObsidian * 1, liquidRefinedEnder * 1 ]);

// Glowstone
Alloy.addRecipe(liquidGlowstone * 2, [ liquidRedstone * 1, liquidElectrum * 1 ]);

// Ender
Alloy.addRecipe(liquidEnder * 1, [ liquidDiamond * 2, liquidEmerald * 2 ]);

// Blaze
Alloy.addRecipe(liquidBlaze * 2, [ liquidGlowstone * 1, lava * 1 ]);

// Witherium
Alloy.addRecipe(liquidWither * 1, [ liquidSoul * 3, liquidBlaze * 2, liquidUranium * 4 ]);


// ~~ Fuel ~~

Fuel.registerFuel(<liquid:blaze>, 20);

*/
