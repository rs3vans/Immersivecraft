#loader contenttweaker
#modloaded tconstruct

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.conarm.ExtendedMaterialBuilder;


// ~~ Leather (TiC Mat only) ~~

val leatherArmorMat = ExtendedMaterialBuilder.create("leather");
leatherArmorMat.color = 0x632e00;
leatherArmorMat.craftable = false;
leatherArmorMat.castable = false;
leatherArmorMat.addCoreMaterialStats(27.0 as float, 3.0 as float);
leatherArmorMat.addPlatesMaterialStats(0.5 as float, 37.0 as float, 0.0 as float);
leatherArmorMat.addTrimMaterialStats(5.0 as float);
leatherArmorMat.addItem(<item:minecraft:leather>);
leatherArmorMat.itemLocalizer = function(thisMaterial, itemName) {
    return "Leather " + itemName;
};
leatherArmorMat.localizedName = "Leather";
leatherArmorMat.register();


// ~~ Obsidian Alloy ~~

val obsidianAlloy = MaterialSystem.getMaterialBuilder()
        .setName("Obsidian Ender Alloy")
        .setColor(Color.fromHex("06293b"))
        .build();

obsidianAlloy.registerParts([ "dust", "ingot", "block" ] as string[]);

/*
val moltenObsidianAlloy = obsidianAlloy.registerPart("molten").getData();
moltenObsidianAlloy.addDataValue("temperature", "1000");
moltenObsidianAlloy.addDataValue("luminosity", "12");
*/

val obsidianAlloyMat = ExtendedMaterialBuilder.create("obsidianenderalloy");
obsidianAlloyMat.color = 0x06293b;
obsidianAlloyMat.craftable = false;
obsidianAlloyMat.liquid = <liquid:obsidian_ender_alloy>;
obsidianAlloyMat.castable = true;
obsidianAlloyMat.addHeadMaterialStats(1100, 16.0, 18.0, 4);
obsidianAlloyMat.addCoreMaterialStats(879.0 as float, 27.0 as float);
obsidianAlloyMat.addPlatesMaterialStats(2.0 as float, 879.0 as float, 7.0 as float);
obsidianAlloyMat.itemLocalizer = function(thisMaterial, itemName) {
    return "Obsidian Ender Alloy " + itemName;
};
obsidianAlloyMat.localizedName = "Obsidian Ender Alloy";
obsidianAlloyMat.register();


// ~~ Soularium ~~

val soul = MaterialSystem.getMaterialBuilder()
        .setName("Soularium")
        .setColor(Color.fromHex("38261b"))
        .build();

/*
val moltenSoul = soul.registerPart("molten").getData();
moltenSoul.addDataValue("temperature", "666");
moltenSoul.addDataValue("luminosity", "3");
*/

soul.registerParts([ "dust", "ingot", "block" ] as string[]);


// ~~ Witherium ~~

val wither = MaterialSystem.getMaterialBuilder()
        .setName("Witherium")
        .setColor(Color.fromHex("294362"))
        .build();

/*
val moltenWither = wither.registerPart("molten").getData();
moltenWither.addDataValue("temperature", "0");
moltenWither.addDataValue("luminosity", "5");
*/

wither.registerParts([ "dust", "ingot", "block" ] as string[]);

/*

// ~~ (Plain) Ender ~~

val plainEnder = MaterialSystem.getMaterialBuilder()
        .setName("Ender")
        .setColor(Color.fromHex("0b4d42"))
        .build();

val moltenPlainEnder = plainEnder.registerPart("molten").getData();
moltenPlainEnder.addDataValue("temperature", "-800");
moltenPlainEnder.addDataValue("luminosity", "10");


// ~~ Refined Ender ~~

val ender = MaterialSystem.getMaterialBuilder()
        .setName("Refined Ender")
        .setColor(Color.fromHex("4f776c"))
        .build();

val moltenEnder = ender.registerPart("molten").getData();
moltenEnder.addDataValue("temperature", "-1200");
moltenEnder.addDataValue("luminosity", "12");

val enderMat = mods.contenttweaker.tconstruct.MaterialBuilder.create("refinedender");
enderMat.color = 0x4f776c;
enderMat.craftable = false;
enderMat.liquid = <liquid:refined_ender>;
enderMat.castable = true;
enderMat.addExtraMaterialStats(120);
enderMat.addItem(<item:contenttweaker:refined_ender_pearl>);
enderMat.itemLocalizer = function(thisMaterial, itemName) {
    return "Refined Ender " + itemName;
};
enderMat.localizedName = "Refined Ender";
enderMat.register();


// ~~ Redstone ~~

val redstone = MaterialSystem.getMaterialBuilder()
        .setName("Redstone")
        .setColor(Color.fromHex("e60000"))
        .build();

val moltenRedstone = redstone.registerPart("molten").getData();
moltenRedstone.addDataValue("temperature", "1000");
moltenRedstone.addDataValue("luminosity", "5");


// ~~ Glowstone ~~

val glowstone = MaterialSystem.getMaterialBuilder()
        .setName("Glowstone")
        .setColor(Color.fromHex("ffffcf"))
        .build();

val moltenGlowstone = glowstone.registerPart("molten").getData();
moltenGlowstone.addDataValue("temperature", "1100");
moltenGlowstone.addDataValue("luminosity", "16");


// ~~ Quartz ~~

val quartz = MaterialSystem.getMaterialBuilder()
        .setName("Quartz")
        .setColor(Color.fromHex("eae4de"))
        .build();

val moltenQuartz = quartz.registerPart("molten").getData();
moltenQuartz.addDataValue("temperature", "1200");
moltenQuartz.addDataValue("luminosity", "2");


// ~~ Blaze ~~

val blaze = MaterialSystem.getMaterialBuilder()
        .setName("Blaze")
        .setColor(Color.fromHex("ff9d00"))
        .build();

val moltenBlaze = blaze.registerPart("molten").getData();
moltenBlaze.addDataValue("temperature", "2300");
moltenBlaze.addDataValue("luminosity", "15");


// ~~ Diamond ~~

val diamond = MaterialSystem.getMaterialBuilder()
        .setName("Diamond")
        .setColor(Color.fromHex("27ddd7"))
        .build();

val moltenDiamond = diamond.registerPart("molten").getData();
moltenDiamond.addDataValue("temperature", "900");
moltenDiamond.addDataValue("luminosity", "1");

*/
