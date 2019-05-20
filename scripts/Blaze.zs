#loader contenttweaker
#modloaded tconstruct

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;

val blazeColor = Color.fromHex("ff9d00");

val blaze = MaterialSystem.getMaterialBuilder()
        .setName("Blaze")
        .setColor(blazeColor)
        .build();

val moltenBlaze = blaze.registerPart("molten").getData();
moltenBlaze.addDataValue("temperature", "2300");
moltenBlaze.addDataValue("luminosity", "15");

/*
val blazeMat = <ticonmaterial:blaze>; //mods.contenttweaker.tconstruct.MaterialBuilder.create("molten_blaze");
blazeMat.color = 0xe29c2c;
blazeMat.craftable = false;
blazeMat.liquid = <liquid:blaze>;
blazeMat.castable = false;
blazeMat.representativeItem = <item:minecraft:blaze_powder>;
//blazeMat.addHeadMaterialStats(12000, 10.0, 6.5, 5);

blazeMat.itemLocalizer = function(thisMaterial, itemName) {
    return "Blaze " + itemName;
};
blazeMat.localizedName = "Blaze";

blazeMat.register();
*/