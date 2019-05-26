#loader contenttweaker
#modloaded tconstruct

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;

val chorusSteelColor = Color.fromHex("6e5382");
val chorusSteel = MaterialSystem.getMaterialBuilder()
        .setName("Chorus Steel")
        .setColor(chorusSteelColor)
        .build();
chorusSteel.registerParts([ "crystal", "dust" ] as string[]);
