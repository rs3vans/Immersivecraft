#loader contenttweaker
#modloaded tconstruct

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;

// ~~ Ender ~~

val ender = MaterialSystem.getMaterialBuilder()
        .setName("Ender")
        .setColor(Color.fromHex("1d5e4c"))
        .build();
val moltenEnder = ender.registerPart("molten").getData();
moltenEnder.addDataValue("temperature", "-1200");
moltenEnder.addDataValue("luminosity", "12");

val enderpearlItem = <item:minecraft:ender_pearl>;
val enderMat = mods.contenttweaker.tconstruct.MaterialBuilder.create("ender");
enderMat.color = 0x1d5e4c;
enderMat.craftable = false;
enderMat.liquid = <liquid:ender>;
enderMat.castable = true;
enderMat.representativeItem = enderpearlItem;
enderMat.addItem(enderpearlItem);
enderMat.addHeadMaterialStats(1200, 27.0, 17.0, 4);
enderMat.itemLocalizer = function(thisMaterial, itemName) {
    return "Enderite " + itemName;
};
enderMat.localizedName = "Enderite";
enderMat.register();


// ~~ Blaze ~~

val blaze = MaterialSystem.getMaterialBuilder()
        .setName("Blaze")
        .setColor(Color.fromHex("ff9d00"))
        .build();
val moltenBlaze = blaze.registerPart("molten").getData();
moltenBlaze.addDataValue("temperature", "2300");
moltenBlaze.addDataValue("luminosity", "15");

val blazingAlloy = MaterialSystem.getMaterialBuilder()
        .setName("Blazing Alloy")
        .setColor(Color.fromHex("ffb56b"))
        .build();
blazingAlloy.registerParts([ "dust", "ingot", "plate", "block" ] as string[]);

val blazingNm = MaterialSystem.getMaterialBuilder()
        .setName("Blazing Nanomaterial")
        .setColor(Color.fromHex("ff7f00"))
        .setHasEffect(true)
        .build();
blazingNm.registerParts([ "dense_plate", "plate" ] as string[]);


// ~~ Redstone ~~

val redstoneAlloy = MaterialSystem.getMaterialBuilder()
        .setName("Redstone Alloy")
        .setColor(Color.fromHex("ba5d5d"))
        .build();
redstoneAlloy.registerParts([ "dust", "ingot", "plate", "block" ] as string[]);

val redstoneNm = MaterialSystem.getMaterialBuilder()
        .setName("Redstone Nanomaterial")
        .setColor(Color.fromHex("c10000"))
        .setHasEffect(true)
        .build();
redstoneNm.registerParts([ "dense_plate", "plate" ] as string[]);


// ~~ Diamond Alloy ~~

val diamondAlloy = MaterialSystem.getMaterialBuilder()
        .setName("Diamond Alloy")
        .setColor(Color.fromHex("94d8e0"))
        .build();
diamondAlloy.registerParts([ "dust", "ingot", "plate", "dense_plate", "block", "casing" ] as string[]);


// ~~ Chorus Steel ~~

val chorusSteel = MaterialSystem.getMaterialBuilder()
        .setName("Chorus Steel")
        .setColor(Color.fromHex("6e5382"))
        .build();
chorusSteel.registerParts([ "crystal", "dust" ] as string[]);
