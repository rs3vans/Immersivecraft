import mods.jei.JEI;
import mods.tconstruct.Fuel;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;

val debug = true;

val itemsToAlwaysRemove = [
] as string[];
val itemsToNotRemove = [
    "tile.tconstruct.soil.grout",
    "tile.tconstruct.faucet",
    "tile.tconstruct.channel",
    "tile.tconstruct.tinker_tank_controller"
] as string[];
val validCastTypes = [
    "tconstruct:hammer_head",
    "tconstruct:wide_guard",
    "tconstruct:binding",
    "tconstruct:knife_blade",
    "tconstruct:sword_blade",
    "tconstruct:pick_head",
    "tconstruct:shovel_head",
    "tconstruct:axe_head"
] as string[];
val itemNamePartsToNeverRemove = [
    ".seared",
    ".smeltery",
    ".casting",
    ".glass"
] as string[];

val tconstructItems = loadedMods["tconstruct"].items;
for i in tconstructItems {
    var remove = true;
    if (!(itemsToAlwaysRemove has i.name)) {
        if (itemsToNotRemove has i.name) {
            remove = false;
        } else if (i.name == "item.tconstruct.cast" | i.name == "item.tconstruct.clay_cast") {
            remove = !(validCastTypes has i.tag.PartType);
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

// Swords
JEI.addItem(<tconstruct:wide_guard>.withTag({"Material": "wood"}));
JEI.addItem(<tconstruct:sword_blade>.withTag({"Material": "iron"}));
JEI.addItem(<tconstruct:sword_blade>.withTag({"Material": "steel"}));
JEI.addItem(<tconstruct:sword_blade>.withTag({"Material": "ender"}));
JEI.addItem(<tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 9.0 as float},  Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0 as  float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 9.0 as float},  Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["wood", "iron", "iron"],         Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}], Traits: ["ecological", "magnetic2", "magnetic1"]}));
JEI.addItem(<tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 12.0 as float}, Stats: {AttackSpeedMultiplier: 5.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 12.0 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["treatedwood", "steel", "iron"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}, {identifier: "lightweight", color: -14122284, level: 1}], Traits: ["ecological", "magnetic2", "magnetic1", "lightweight"]}));
JEI.addItem(<tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 6.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 16.0 as float}, Stats: {AttackSpeedMultiplier: 6.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 16.0 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["treatedwood", "ender", "iron"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}, {identifier: "lightweight", color: -14122284, level: 1}, {identifier: "momentum", color: -14122284, level: 1}, {identifier: "enderference", color: -2041712, level: 1}], Traits: ["ecological", "magnetic2", "magnetic1", "lightweight", "momentum", "enderference"]}));

// Shovels
JEI.addItem(<tconstruct:shovel_head>.withTag({"Material": "iron"}));
JEI.addItem(<tconstruct:shovel_head>.withTag({"Material": "steel"}));
JEI.addItem(<tconstruct:shovel_head>.withTag({"Material": "ender"}));
JEI.addItem(<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 2.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0 as  float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 2.0 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["wood", "iron", "iron"],         Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}], Traits: ["ecological", "magnetic2", "magnetic1"]}));
JEI.addItem(<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 3.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 3.0 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["treatedwood", "steel", "iron"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}, {identifier: "lightweight", color: -14122284, level: 1}], Traits: ["ecological", "magnetic2", "magnetic1", "lightweight"]}));
JEI.addItem(<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 4.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 4.0 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["treatedwood", "ender", "iron"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}, {identifier: "lightweight", color: -14122284, level: 1}, {identifier: "momentum", color: -14122284, level: 1}], Traits: ["ecological", "magnetic2", "magnetic1", "lightweight", "momentum"]}));

// Axes
JEI.addItem(<tconstruct:axe_head>.withTag({"Material": "iron"}));
JEI.addItem(<tconstruct:axe_head>.withTag({"Material": "steel"}));
JEI.addItem(<tconstruct:axe_head>.withTag({"Material": "ender"}));
JEI.addItem(<tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 10.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0 as  float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 10.0 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["wood", "iron", "iron"],         Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}], Traits: ["ecological", "magnetic2", "magnetic1"]}));
JEI.addItem(<tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 14.0 as float}, Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 14.0 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["treatedwood", "steel", "iron"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}, {identifier: "lightweight", color: -14122284, level: 1}], Traits: ["ecological", "magnetic2", "magnetic1", "lightweight"]}));
JEI.addItem(<tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 18.0 as float}, Stats: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 18.0 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["treatedwood", "ender", "iron"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}, {identifier: "lightweight", color: -14122284, level: 1}, {identifier: "momentum", color: -14122284, level: 1}, {identifier: "enderference", color: -2041712, level: 1}], Traits: ["ecological", "magnetic2", "magnetic1", "lightweight", "momentum", "enderference"]}));

// Pickaxes
JEI.addItem(<tconstruct:pick_head>.withTag({"Material": "iron"}));
JEI.addItem(<tconstruct:pick_head>.withTag({"Material": "steel"}));
JEI.addItem(<tconstruct:pick_head>.withTag({"Material": "ender"}));
JEI.addItem(<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 4.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0 as  float, FreeModifiers: 3, Durability: 279,   HarvestLevel: 2, Attack: 4.0 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["wood", "iron", "iron"],         Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}], Traits: ["ecological", "magnetic2", "magnetic1"]}));
JEI.addItem(<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 6.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 17.0 as float, FreeModifiers: 4, Durability: 815,   HarvestLevel: 3, Attack: 6.0 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["treatedwood", "steel", "iron"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}, {identifier: "lightweight", color: -14122284, level: 1}], Traits: ["ecological", "magnetic2", "magnetic1", "lightweight"]}));
JEI.addItem(<tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 8.0 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 27.0 as float, FreeModifiers: 5, Durability: 12075, HarvestLevel: 4, Attack: 8.0 as float}, Special: {Categories: ["tool", "harvest", "aoe"]}, TinkerData: {Materials: ["treatedwood", "ender", "iron"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "magnetic", color: -3487030, level: 3, magnetic1: 1 as byte, magnetic2: 1 as byte}, {identifier: "lightweight", color: -14122284, level: 1}, {identifier: "momentum", color: -14122284, level: 1}], Traits: ["ecological", "magnetic2", "magnetic1", "lightweight", "momentum"]}));

// Engineer's Hammer
JEI.addItem(<tconstruct:hammer_head>.withTag({"Material": "iron"}));

// Shears/Wire cutters
JEI.addItem(<tconstruct:knife_blade>.withTag({"Material": "iron"}));

// Binding
JEI.addItem(<tconstruct:binding>.withTag({"Material": "iron"}));

// !!! Smeltery !!!

// Lava
val lavaDef = <liquid:lava>.definition;
lavaDef.temperature = 1100;

// Ender stuff
//Casting.addTableRecipe(<minecraft:gold_ingot>, <minecraft:gold_ingot>, <liquid:enderium>, 250, false, 500);
Melting.addRecipe(<liquid:ender> * 250, <ore:enderpearl>, 1800);
Melting.addRecipe(<liquid:ender> * 250, <ore:dustEnder>, 1800);
Melting.addRecipe(<liquid:ender> * 250, <ore:plateEnder>, 1800);

// Blaze
Fuel.registerFuel(<liquid:blaze> * 2, 1200);
Melting.addRecipe(<liquid:blaze> * 250, <minecraft:blaze_powder>, 1100);
Melting.addRecipe(<liquid:blaze> * 500, <minecraft:blaze_rod>, 1100);
