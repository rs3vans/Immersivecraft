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
