#loader contenttweaker
#modloaded witherskelefix

import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.MaterialSystem;


// ~~~ ITEMS ~~~

// Misc.
VanillaFactory.createItem("grout").register();
VanillaFactory.createItem("hardened_brick").register();

VanillaFactory.createItem("sawdust").register();
VanillaFactory.createItem("soaked_leather").register();

val netherStarDust = VanillaFactory.createItem("nether_star_dust");
netherStarDust.glowing = true;
netherStarDust.register();


// ~~~ FLUIDS ~~~

val soulSludge = VanillaFactory.createFluid("soulsludge", Color.fromHex("453125"));
soulSludge.setDensity(3000);
soulSludge.setViscosity(3000);
soulSludge.register();

val soulEssence = VanillaFactory.createFluid("soulessence", Color.fromHex("322116"));
soulEssence.register();

val tannicAcid = VanillaFactory.createFluid("tannicacid", Color.fromHex("74402c"));
tannicAcid.register();

val prismarineSolution = VanillaFactory.createFluid("prismarinesolution", Color.fromHex("7fb8a4"));
prismarineSolution.register();

val chorusJuice = VanillaFactory.createFluid("chorusjuice", Color.fromHex("5f395f"));
chorusJuice.register();

val dragonJuice = VanillaFactory.createFluid("dragonjuice", Color.fromHex("a30068"));
dragonJuice.setLuminosity(8);
dragonJuice.setTemperature(500);
dragonJuice.register();

val dragonsBreath = VanillaFactory.createFluid("dragonsbreath", Color.fromHex("cc00fa"));
dragonsBreath.setGaseous(true);
dragonsBreath.setDensity(10);
dragonsBreath.setViscosity(10);
dragonsBreath.setLuminosity(16);
dragonsBreath.setTemperature(5000);
dragonsBreath.setFillSound(<soundevent:item.bucket.fill_lava>);
dragonsBreath.setEmptySound(<soundevent:item.bucket.empty_lava>);
dragonsBreath.setMaterial(<blockmaterial:lava>);
dragonsBreath.register();


// ~~~ MATERIALS ~~~

val steelArmorMat = MaterialSystem.getMaterialBuilder()
        .setName("Steel")
        .setColor(Color.fromHex("bbbbbb"))
        .build();
val steelArmor = steelArmorMat.registerPart("armor").getData();
steelArmor.addDataValue("durability", "20");
steelArmor.addDataValue("enchantability", "10");
steelArmor.addDataValue("reduction", "3,6,7,3");
steelArmor.addDataValue("toughness", "1.0");

val diamond = MaterialSystem.getMaterialBuilder()
        .setName("Diamond")
        .setColor(Color.fromHex("8cf4e2"))
        .build();
diamond.registerParts([ "dust" ] as string[]);

val emerald = MaterialSystem.getMaterialBuilder()
        .setName("Emerald")
        .setColor(Color.fromHex("58f493"))
        .build();
emerald.registerParts([ "dust" ] as string[]);

val endStone = MaterialSystem.getMaterialBuilder()
        .setName("End Stone")
        .setColor(Color.fromHex("f9f9c5"))
        .build();
endStone.registerParts([ "dust" ] as string[]);

val soularium = MaterialSystem.getMaterialBuilder()
        .setName("Soularium")
        .setColor(Color.fromHex("756048"))
        .build();
soularium.registerParts([ "plate" ] as string[]);

val darkSteel = MaterialSystem.getMaterialBuilder()
        .setName("Dark Steel")
        .setColor(Color.fromHex("373737"))
        .build();
darkSteel.registerParts([ "dust", "plate" ] as string[]);

val endSteel = MaterialSystem.getMaterialBuilder()
        .setName("End Steel")
        .setColor(Color.fromHex("bcb682"))
        .build();
endSteel.registerParts([ "dust", "plate" ] as string[]);

val energeticAlloy = MaterialSystem.getMaterialBuilder()
        .setName("Energetic Alloy")
        .setColor(Color.fromHex("ff9c21"))
        .build();
energeticAlloy.registerParts([ "dust", "plate" ] as string[]);

val vibrantAlloy = MaterialSystem.getMaterialBuilder()
        .setName("Vibrant Alloy")
        .setColor(Color.fromHex("cff474"))
        .build();
vibrantAlloy.registerParts([ "dust", "plate" ] as string[]);

val crystallineAlloy = MaterialSystem.getMaterialBuilder()
        .setName("Crystalline Alloy")
        .setColor(Color.fromHex("9ae0e0"))
        .build();
crystallineAlloy.registerParts([ "dust", "plate" ] as string[]);

val melodicAlloy = MaterialSystem.getMaterialBuilder()
        .setName("Melodic Alloy")
        .setColor(Color.fromHex("a271a2"))
        .build();
melodicAlloy.registerParts([ "dust", "plate" ] as string[]);

val stellarAlloy = MaterialSystem.getMaterialBuilder()
        .setName("Stellar Alloy")
        .setColor(Color.fromHex("d5d8c7"))
        .build();
stellarAlloy.registerParts([ "dust", "plate" ] as string[]);
