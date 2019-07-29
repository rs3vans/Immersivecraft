#modloaded tconstruct

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.data.IData;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;
import mods.jei.JEI;

recipes.removeByMod("tconstruct");

val itemsToNotRemove = [
    "item.tconstruct.tool_rod",
    "item.tconstruct.bow_limb",
    "item.tconstruct.bow_string",
    "item.tconstruct.cast",
    "item.tconstruct.cast_custom",
    "item.tconstruct.shortbow"
] as string[];

val tconstructItems = loadedMods["tconstruct"].items;
for i in tconstructItems {
    var remove = true;
    if (itemsToNotRemove has i.name) {
        remove = false;
    }
    if (remove) {
        JEI.removeAndHide(i);
    }
}

// Liquids
val liquidsToHide = [
    <liquid:knightslime>,
    <liquid:manyullyn>,
    <liquid:cobalt>,
    <liquid:ardite>,
    <liquid:pigiron>,
    <liquid:iron>,
    <liquid:gold>,
    <liquid:brass>,
    <liquid:alubrass>,
    <liquid:copper>,
    <liquid:tin>,
    <liquid:bronze>,
    <liquid:zinc>,
    <liquid:lead>,
    <liquid:nickel>,
    <liquid:silver>,
    <liquid:electrum>,
    <liquid:steel>,
    <liquid:aluminum>,
    <liquid:uranium>,
    <liquid:constantan>
    // these are added by the TiC smeltery module
    /*
    ,
    <liquid:blood>,
    <liquid:milk>,
    <liquid:purpleslime>,
    <liquid:emerald>,
    <liquid:dirt>,
    <liquid:clay>,
    <liquid:stone>
    */
] as ILiquidStack[];
for l in liquidsToHide {
    JEI.hide(l);
    JEI.hide(<forge:bucketfilled>.withTag({FluidName: l.name, Amount: 1000}));
}

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
JEI.removeAndHide(<tconstruct:bolt>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, Accuracy: 1.0 as float, MiningSpeed: 7.07 as float, FreeModifiers: 3, Durability: 111, HarvestLevel: 4, Attack: 4.2 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, Accuracy: 1.0 as float, MiningSpeed: 7.07 as float, FreeModifiers: 3, Durability: 111, HarvestLevel: 4, Attack: 4.2 as float}, Special: {Categories: ["no_melee", "projectile", "tool"]}, TinkerData: {Materials: ["wood", "obsidian", "feather"], Modifiers: []}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "duritos", color: -10478396, level: 1}], Traits: ["ecological", "duritos"]}));


/*

// ~~~ Melting ~~~

// Copper
Melting.addRecipe(<liquid:copper> * 16, <ore:nuggetCopper>, 350);
Melting.addRecipe(<liquid:copper> * 72, <ore:rodCopper>, 400);
Melting.addRecipe(<liquid:copper> * 144, <ore:dustCopper>, 450);
Melting.addRecipe(<liquid:copper> * 144, <ore:ingotCopper>, 550);
Melting.addRecipe(<liquid:copper> * 1296, <ore:blockCopper>, 750);

// Aluminum
Melting.addRecipe(<liquid:aluminum> * 16, <ore:nuggetAluminum>, 350);
Melting.addRecipe(<liquid:aluminum> * 72, <ore:rodAluminum>, 400);
Melting.addRecipe(<liquid:aluminum> * 144, <ore:dustAluminum>, 450);
Melting.addRecipe(<liquid:aluminum> * 144, <ore:ingotAluminum>, 550);
Melting.addRecipe(<liquid:aluminum> * 1296, <ore:blockAluminum>, 750);


// ~~~ Casting ~~~

// Copper

// Casts
Casting.addTableRecipe(<ore:castPearl>.firstItem, <ore:enderpearl>, <liquid:alubrass>, 288, true, 100);


// ~~~ Alloying ~~~

// Alubrass
Alloy.addRecipe(<liquid:alubrass> * 144, [ <liquid:copper> * 108, <liquid:aluminum> * 36 ]);

*/
