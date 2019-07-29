#loader contenttweaker
#modloaded tconstruct
#modloaded conarm
#modloaded witherskelefix

import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.contenttweaker.conarm.ArmorTraitBuilder;
import mods.contenttweaker.conarm.ExtendedMaterialBuilder;


// ~~~ ITEMS ~~~

// Misc.
VanillaFactory.createItem("hardened_brick").register();
VanillaFactory.createItem("grout").register();

// Soul
VanillaFactory.createItem("fired_soul_bucket").register();
VanillaFactory.createItem("soulentum_plate").register();

// Ender
VanillaFactory.createItem("endaurum_pearl").register();
VanillaFactory.createItem("endaurum_dust").register();
VanillaFactory.createItem("endaurum_plate").register();

// Sky
VanillaFactory.createItem("sky_steel_plate").register();

// Wither
VanillaFactory.createItem("witherium_plate").register();

// Void
VanillaFactory.createItem("voidstone_dust").register();
VanillaFactory.createItem("voidanium_plate").register();

// Dragon
VanillaFactory.createItem("dragonium_plate").register();

// Custom IE Metal Press molds
VanillaFactory.createItem("mold_binding").register();
VanillaFactory.createItem("mold_guard").register();
VanillaFactory.createItem("mold_sword_blade").register();
VanillaFactory.createItem("mold_shovel_head").register();
VanillaFactory.createItem("mold_hatchet_head").register();
VanillaFactory.createItem("mold_pick_head").register();
VanillaFactory.createItem("mold_helmet_core").register();
VanillaFactory.createItem("mold_chest_core").register();
VanillaFactory.createItem("mold_leggings_core").register();
VanillaFactory.createItem("mold_boots_core").register();


// ~~~ FLUIDS ~~~

val soulSludge = VanillaFactory.createFluid("soulsludge", Color.fromHex("453125"));
soulSludge.setDensity(3000);
soulSludge.setViscosity(3000);
soulSludge.register();

val soulEssence = VanillaFactory.createFluid("soulessence", Color.fromHex("322116"));
soulEssence.register();

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

val magmaticDragonium = VanillaFactory.createFluid("magmaticdragonium", Color.fromHex("a30068"));
magmaticDragonium.setDensity(3000);
magmaticDragonium.setViscosity(3000);
magmaticDragonium.setLuminosity(12);
magmaticDragonium.setTemperature(5000);
magmaticDragonium.setFillSound(<soundevent:item.bucket.fill_lava>);
magmaticDragonium.setEmptySound(<soundevent:item.bucket.empty_lava>);
magmaticDragonium.setMaterial(<blockmaterial:lava>);
magmaticDragonium.register();


// ~~~ MATERIALS ~~~

val obsidian = MaterialSystem.getMaterialBuilder()
        .setName("Obsidian")
        .setColor(Color.fromHex("101018"))
        .build();
obsidian.registerParts([ "dust" ] as string[]);

val clay = MaterialSystem.getMaterialBuilder()
        .setName("Clay")
        .setColor(Color.fromHex("666b7f"))
        .build();
clay.registerParts([ "dust" ] as string[]);

val lapis = MaterialSystem.getMaterialBuilder()
        .setName("Lapis")
        .setColor(Color.fromHex("345ec3"))
        .build();
lapis.registerParts([ "dust" ] as string[]);

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

val ender = MaterialSystem.getMaterialBuilder()
        .setName("Ender")
        .setColor(Color.fromHex("1b7b6b"))
        .build();
ender.registerParts([ "dust" ] as string[]);

val skySteel = MaterialSystem.getMaterialBuilder()
        .setName("Sky Steel")
        .setColor(Color.fromHex("2c2f2e"))
        .build();
skySteel.registerParts([ "ingot", "nugget", "rod", "block", "dust" ] as string[]);

val soulentum = MaterialSystem.getMaterialBuilder()
        .setName("Soulentum")
        .setColor(Color.fromHex("95867b"))
        .build();
soulentum.registerParts([ "ingot", "nugget", "rod", "block", "dust" ] as string[]);

val witherium = MaterialSystem.getMaterialBuilder()
        .setName("Witherium")
        .setColor(Color.fromHex("1a1a1a"))
        .build();
witherium.registerParts([ "ingot", "nugget", "rod", "block", "dust" ] as string[]);

val voidanium = MaterialSystem.getMaterialBuilder()
        .setName("Voidanium")
        .setColor(Color.fromHex("3c1c44"))
        .build();
voidanium.registerParts([ "ingot", "nugget", "rod", "block", "dust" ] as string[]);

val dragonium = MaterialSystem.getMaterialBuilder()
        .setName("Dragonium")
        .setColor(Color.fromHex("a30068"))
        .build();
dragonium.registerParts([ "ingot", "nugget", "rod", "block", "dust" ] as string[]);


// ~~~ TiC/ConArm MATERIALS ~~~

val leatherArmorMat = ExtendedMaterialBuilder.create("leather");
leatherArmorMat.color = 0x72482e;
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

val skySteelMat = ExtendedMaterialBuilder.create("sky_steel");
skySteelMat.color = 0x272727;
skySteelMat.craftable = false;
skySteelMat.castable = false;
skySteelMat.addHeadMaterialStats(1, 1.0 as float, 1.0 as float, 1);
skySteelMat.addCoreMaterialStats(1.0 as float, 1.0 as float);
skySteelMat.addPlatesMaterialStats(1.0 as float, 1.0 as float, 1.0 as float);
skySteelMat.addExtraMaterialStats(1);
skySteelMat.addHandleMaterialStats(1.0 as float, 1);
skySteelMat.addTrimMaterialStats(1.0 as float);
skySteelMat.itemLocalizer = function(thisMaterial, itemName) {
    return "Sky Steel " + itemName;
};
skySteelMat.localizedName = "Sky Steel";
skySteelMat.register();

val soulentumMat = ExtendedMaterialBuilder.create("soulentum");
soulentumMat.color = 0x95867b;
soulentumMat.craftable = false;
soulentumMat.castable = false;
soulentumMat.addHeadMaterialStats(1, 1.0 as float, 1.0 as float, 1);
soulentumMat.addCoreMaterialStats(1.0 as float, 1.0 as float);
soulentumMat.addPlatesMaterialStats(1.0 as float, 1.0 as float, 1.0 as float);
soulentumMat.addExtraMaterialStats(1);
soulentumMat.addHandleMaterialStats(1.0 as float, 1);
soulentumMat.addTrimMaterialStats(1.0 as float);
soulentumMat.itemLocalizer = function(thisMaterial, itemName) {
    return "Soul Silver " + itemName;
};
soulentumMat.localizedName = "Soul Silver";
soulentumMat.register();


// ~~~ TiC/ConArm TRAITS ~~~

val witheringTrait = TraitBuilder.create("withering");
witheringTrait.color = 0x352a27;
witheringTrait.maxLevel = 1;
witheringTrait.localizedName = "Withering";
witheringTrait.localizedDescription = "Your enemies wither away!";
witheringTrait.addItem(<item:witherskelefix:fragment:0>);
witheringTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    val potion = <potion:minecraft:wither>;
    if (!target.isPotionActive(potion)) {
        val effect = potion.makePotionEffect(200, 1);
        if (target.isPotionEffectApplicable(effect)) {
            target.addPotionEffect(effect);
        }
    }
};
witheringTrait.register();

val weightlessTrait = ArmorTraitBuilder.create("weightless");
weightlessTrait.color = 0x424242;
weightlessTrait.maxLevel = 1;
weightlessTrait.localizedName = "Weightless";
weightlessTrait.localizedDescription = "No fall damage!";
weightlessTrait.addItem(<item:minecraft:feather:0>);
weightlessTrait.onFalling = function(trait, stack, player, evt) {
    evt.damageMultiplier = 0.0f;
};
weightlessTrait.register();