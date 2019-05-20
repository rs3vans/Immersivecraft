#loader contenttweaker
#modloaded tconstruct

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;

val enderColor = Color.fromHex("1d5e4c");

val ender = MaterialSystem.getMaterialBuilder()
        .setName("Ender")
        .setColor(enderColor)
        .build();

ender.registerParts([ "plate", "dust" ] as string[]);

val moltenEnder = ender.registerPart("molten").getData();
moltenEnder.addDataValue("temperature", "-400");
moltenEnder.addDataValue("luminosity", "12");

val enderMat = mods.contenttweaker.tconstruct.MaterialBuilder.create("ender");
enderMat.color = 0x1d5e4c;
enderMat.craftable = false;
enderMat.liquid = <liquid:ender>;
enderMat.castable = true;
enderMat.representativeItem = <item:minecraft:ender_pearl>;
enderMat.addHeadMaterialStats(12000, 27.0, 17.0, 4);

enderMat.itemLocalizer = function(thisMaterial, itemName) {
    return "Enderite " + itemName;
};
enderMat.localizedName = "Enderite";

enderMat.register();
