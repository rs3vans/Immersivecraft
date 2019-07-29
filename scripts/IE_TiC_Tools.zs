#modloaded immersiveengineering
#modloaded tconstruct

import mods.jei.JEI;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.MetalPress;


val stickOre = <ore:stickWood>;
val treatedStickOre = <ore:stickTreatedWood>;
val flintToolMaterial = <ore:itemRawFlint>;
val stringOre = <ore:string>;
val hempOre = <ore:fiberHemp>;
val itemTieOre = <ore:itemTieNormal>;
val flintOre = <ore:itemRawFlint>;
val cobblestoneOre = <ore:cobblestone>;
val quartzOre = <ore:gemQuartz>;
val diamondOre = <ore:gemDiamond>;
val certusQuartzOre = <ore:crystalCertusQuartz>;
val fluixOre = <ore:crystalFluix>;
val leatherOre = <ore:itemTannedLeather>;
val ironIngotOre = <ore:ingotIron>;
val ironPlateOre = <ore:plateIron>;
val steelIngotOre = <ore:ingotSteel>;
val steelPlateOre = <ore:plateSteel>;
val skySteelIngotOre = <ore:ingotSkySteel>;
val skySteelPlateOre = <ore:plateSkySteel>;


// ---> Repairing Kits
val sharpeningKit = <tconstruct:sharpening_kit>;
val polishingKit = <conarm:polishing_kit>;
val flintSharpeningKit = sharpeningKit.withTag({Material: "flint"});
val ironSharpeningKit = sharpeningKit.withTag({Material: "iron"});
val ironPolishingKit = polishingKit.withTag({Material: "iron"});
val steelSharpeningKit = sharpeningKit.withTag({Material: "steel"});
val steelPolishingKit = polishingKit.withTag({Material: "steel"});
val skySteelSharpeningKit = sharpeningKit.withTag({Material: "sky_steel"});
val skySteelPolishingKit = polishingKit.withTag({Material: "sky_steel"});

JEI.addItem(flintSharpeningKit);
JEI.addItem(ironSharpeningKit);
JEI.addItem(ironPolishingKit);
JEI.addItem(steelSharpeningKit);
JEI.addItem(steelPolishingKit);
JEI.addItem(skySteelSharpeningKit);
JEI.addItem(skySteelPolishingKit);

recipes.addShaped("immc/flint_sharpening_kit", flintSharpeningKit,
        [ [ flintToolMaterial, flintToolMaterial ],
          [ flintToolMaterial, flintToolMaterial ] ]);
recipes.addShaped("immc/iron_sharpening_kit", ironSharpeningKit,
        [ [ quartzOre,    ironIngotOre ],
          [ ironIngotOre, quartzOre ] ]);
recipes.addShaped("immc/steel_sharpening_kit", steelSharpeningKit,
        [ [ diamondOre,    steelIngotOre ],
          [ steelIngotOre, diamondOre ] ]);
recipes.addShaped("immc/sky_steel_sharpening_kit", skySteelSharpeningKit,
        [ [ certusQuartzOre,  skySteelIngotOre ],
          [ skySteelIngotOre, certusQuartzOre ] ]);

recipes.addShaped("immc/iron_polishing_kit", ironPolishingKit,
        [ [ ironIngotOre, quartzOre ],
          [ quartzOre,    ironIngotOre ] ]);
recipes.addShaped("immc/steel_polishing_kit", steelPolishingKit,
        [ [ steelIngotOre, diamondOre ],
          [ diamondOre,    steelIngotOre ] ]);
recipes.addShaped("immc/sky_steel_polishing_kit", skySteelPolishingKit,
        [ [ skySteelIngotOre, certusQuartzOre ],
          [ certusQuartzOre,  skySteelIngotOre ] ]);


// ---> Parts
val woodRod = <tconstruct:tool_rod>.withTag({Material: "wood"});
val treatedWoodRod = <tconstruct:tool_rod>.withTag({Material: "treatedwood"});

JEI.addItem(treatedWoodRod);

recipes.addShapeless("immc/wood_tool_rod", woodRod,
        [ stickOre, stickOre ]);
recipes.addShapeless("immc/treated_wood_tool_rod", treatedWoodRod,
        [ treatedStickOre, treatedStickOre ]);


// ---> Simple Tools
val stoneHoe = <minecraft:stone_hoe>;
val shears = <minecraft:shears>;
val engineerHammer = <immersiveengineering:tool:0>;
val wireCutters = <immersiveengineering:tool:1>;

recipes.remove(engineerHammer);
recipes.remove(wireCutters);

recipes.addShaped("immc/stone_hoe", stoneHoe,
    [ [flintOre, cobblestoneOre],
      [woodRod,  null          ] ]);
recipes.addShaped("immc/shears", shears,
    [ [woodRod,      flintOre],
      [ironIngotOre, woodRod ] ]);
recipes.addShaped("immc/engineers_hammer", engineerHammer,
        [ [null,    ironIngotOre, null],
          [null,    itemTieOre,   null],
          [woodRod, null,         ironIngotOre] ]);
recipes.addShaped("immc/wire_cutters", wireCutters,
        [ [treatedWoodRod, ironIngotOre],
          [null,           treatedWoodRod]]);


// ---> Molds
val bindingMold = <contenttweaker:mold_binding>;
val guardMold = <contenttweaker:mold_guard>;
val swordBladeMold = <contenttweaker:mold_sword_blade>;
val shovelHeadMold = <contenttweaker:mold_shovel_head>;
val axeHeadMold = <contenttweaker:mold_hatchet_head>;
val pickHeadMold = <contenttweaker:mold_pick_head>;
val helmetCoreMold = <contenttweaker:mold_helmet_core>;
val chestCoreMold = <contenttweaker:mold_chest_core>;
val leggingsCoreMold = <contenttweaker:mold_leggings_core>;
val bootsCoreMold = <contenttweaker:mold_boots_core>;

Blueprint.addRecipe("Tool Molds", bindingMold, [steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, wireCutters]);
Blueprint.addRecipe("Tool Molds", guardMold, [steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, wireCutters]);
Blueprint.addRecipe("Tool Molds", swordBladeMold, [steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, wireCutters]);
Blueprint.addRecipe("Tool Molds", shovelHeadMold, [steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, wireCutters]);
Blueprint.addRecipe("Tool Molds", axeHeadMold, [steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, wireCutters]);
Blueprint.addRecipe("Tool Molds", pickHeadMold, [steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, wireCutters]);

Blueprint.addRecipe("Armor Molds", helmetCoreMold, [steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, wireCutters]);
Blueprint.addRecipe("Armor Molds", chestCoreMold, [steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, wireCutters]);
Blueprint.addRecipe("Armor Molds", leggingsCoreMold, [steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, wireCutters]);
Blueprint.addRecipe("Armor Molds", bootsCoreMold, [steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, steelPlateOre, wireCutters]);


// ---> Tools
val ironBinding = <tconstruct:binding>.withTag({"Material": "iron"});
val steelBinding = <tconstruct:binding>.withTag({"Material": "steel"});
val skySteelBinding = <tconstruct:binding>.withTag({"Material": "sky_steel"});

JEI.addItem(ironBinding);
JEI.addItem(steelBinding);
JEI.addItem(skySteelBinding);

MetalPress.addRecipe(ironBinding, ironIngotOre, bindingMold, 2048, 2);
MetalPress.addRecipe(steelBinding, steelIngotOre, bindingMold, 2048, 2);
MetalPress.addRecipe(skySteelBinding, skySteelIngotOre, bindingMold, 2048, 2);

val ironGuard = <tconstruct:wide_guard>.withTag({"Material": "iron"});
val steelGuard = <tconstruct:wide_guard>.withTag({"Material": "steel"});
val skySteelGuard = <tconstruct:wide_guard>.withTag({"Material": "sky_steel"});

JEI.addItem(ironGuard);
JEI.addItem(steelGuard);
JEI.addItem(skySteelGuard);

MetalPress.addRecipe(ironGuard, ironIngotOre, guardMold, 2048, 3);
MetalPress.addRecipe(steelGuard, steelIngotOre, guardMold, 2048, 3);
MetalPress.addRecipe(skySteelGuard, skySteelIngotOre, guardMold, 2048, 3);

val ironBlade = <tconstruct:sword_blade>.withTag({"Material": "iron"});
val steelBlade = <tconstruct:sword_blade>.withTag({"Material": "steel"});
val skySteelBlade = <tconstruct:sword_blade>.withTag({"Material": "sky_steel"});

JEI.addItem(ironBlade);
JEI.addItem(steelBlade);

MetalPress.addRecipe(ironBlade, ironIngotOre, swordBladeMold, 2048, 3);
MetalPress.addRecipe(steelBlade, steelIngotOre, swordBladeMold, 2048, 3);
MetalPress.addRecipe(skySteelBlade, skySteelIngotOre, swordBladeMold, 2048, 3);

val flintShovelHead = <tconstruct:shovel_head>.withTag({"Material": "flint"});
val ironShovelHead = <tconstruct:shovel_head>.withTag({"Material": "iron"});
val steelShovelHead = <tconstruct:shovel_head>.withTag({"Material": "steel"});
val skySteelShovelHead = <tconstruct:shovel_head>.withTag({"Material": "sky_steel"});

JEI.addItem(flintShovelHead);
JEI.addItem(ironShovelHead);
JEI.addItem(steelShovelHead);
JEI.addItem(skySteelShovelHead);

recipes.addShaped("immc/flint_shovel_head", flintShovelHead,
        [ [flintToolMaterial, flintToolMaterial],
          [null,              flintToolMaterial] ]);
MetalPress.addRecipe(ironShovelHead, ironIngotOre, shovelHeadMold, 2048, 3);
MetalPress.addRecipe(steelShovelHead, steelIngotOre, shovelHeadMold, 2048, 3);
MetalPress.addRecipe(skySteelShovelHead, skySteelIngotOre, shovelHeadMold, 2048, 3);

val flintAxeHead = <tconstruct:axe_head>.withTag({"Material": "flint"});
val ironAxeHead = <tconstruct:axe_head>.withTag({"Material": "iron"});
val steelAxeHead = <tconstruct:axe_head>.withTag({"Material": "steel"});
val skySteelAxeHead = <tconstruct:axe_head>.withTag({"Material": "sky_steel"});

JEI.addItem(flintAxeHead);
JEI.addItem(ironAxeHead);
JEI.addItem(steelAxeHead);
JEI.addItem(skySteelAxeHead);

recipes.addShaped("immc/flint_axe_head", flintAxeHead,
        [ [flintToolMaterial, flintToolMaterial],
          [flintToolMaterial, null,            ] ]);
MetalPress.addRecipe(ironAxeHead, ironIngotOre, axeHeadMold, 2048, 3);
MetalPress.addRecipe(steelAxeHead, steelIngotOre, axeHeadMold, 2048, 3);
MetalPress.addRecipe(skySteelAxeHead, skySteelIngotOre, axeHeadMold, 2048, 3);

val flintPickHead = <tconstruct:pick_head>.withTag({"Material": "flint"});
val ironPickHead = <tconstruct:pick_head>.withTag({"Material": "iron"});
val steelPickHead = <tconstruct:pick_head>.withTag({"Material": "steel"});
val skySteelPickHead = <tconstruct:pick_head>.withTag({"Material": "sky_steel"});

JEI.addItem(flintPickHead);
JEI.addItem(ironPickHead);
JEI.addItem(steelPickHead);
JEI.addItem(skySteelPickHead);

recipes.addShaped("immc/flint_pick_head", flintPickHead,
        [ [null,              flintToolMaterial, null],
          [flintToolMaterial, null,              flintToolMaterial] ]);
MetalPress.addRecipe(ironPickHead, ironIngotOre, pickHeadMold, 2048, 3);
MetalPress.addRecipe(steelPickHead, steelIngotOre, pickHeadMold, 2048, 3);
MetalPress.addRecipe(skySteelPickHead, skySteelIngotOre, pickHeadMold, 2048, 3);

val flintAxe    = <tconstruct:hatchet>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0  as float, FreeModifiers: 0, Durability: 132, HarvestLevel: 1, Attack: 4.0  as float}, TinkerData: {Materials: ["wood", "flint", "wood"]}});
val flintPick   = <tconstruct:pickaxe>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, FreeModifiers: 0, Durability: 132, HarvestLevel: 1, Attack: 2.0 as float}, TinkerData: {Materials: ["wood", "flint", "wood"]}});
val flintShovel = <tconstruct:shovel>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.0 as float, FreeModifiers: 0, Durability: 132, HarvestLevel: 1, Attack: 1.0 as float}, TinkerData: {Materials: ["wood", "flint", "wood"]}});

JEI.addItem(flintAxe);
JEI.addItem(flintPick);
JEI.addItem(flintShovel);

recipes.addShaped("immc/flint_shovel", flintShovel,
        [ [itemTieOre, flintShovelHead],
          [woodRod,    null           ] ]);
recipes.addShaped("immc/flint_axe", flintAxe,
        [ [itemTieOre, flintAxeHead],
          [woodRod,    null        ] ]);
recipes.addShaped("immc/flint_pick", flintPick,
        [ [itemTieOre, flintPickHead],
          [woodRod,    null         ] ]);

val ironSword  = <tconstruct:broadsword>.withTag({Stats: {AttackSpeedMultiplier: 1.0  as float, MiningSpeed: 6.0  as float, FreeModifiers: 0, Durability: 279,  HarvestLevel: 2, Attack: 8.0  as float}, TinkerData: {Materials: ["treatedwood", "iron", "iron"]}});
val ironShovel = <tconstruct:shovel>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 0, Durability: 279,  HarvestLevel: 2, Attack: 1.0 as float}, TinkerData: {Materials: ["treatedwood", "iron", "iron"]}});
val ironAxe    = <tconstruct:hatchet>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 0, Durability: 279,  HarvestLevel: 2, Attack: 9.0  as float}, TinkerData: {Materials: ["treatedwood", "iron", "iron"]}});
val ironPick   = <tconstruct:pickaxe>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 0, Durability: 279,  HarvestLevel: 2, Attack: 3.0 as float}, TinkerData: {Materials: ["treatedwood", "iron", "iron"]}});

JEI.addItem(ironSword);
JEI.addItem(ironShovel);
JEI.addItem(ironAxe);
JEI.addItem(ironPick);

recipes.addShaped("immc/iron_sword", ironSword,
        [ [null,           null,      ironBlade],
          [null,           ironGuard, null],
          [treatedWoodRod, null,      null] ]);
recipes.addShaped("immc/iron_shovel", ironShovel,
        [ [null,           null,        ironShovelHead],
          [null,           ironBinding, null],
          [treatedWoodRod, null,        null] ]);
recipes.addShaped("immc/iron_axe", ironAxe,
        [ [null,           null,        ironAxeHead],
          [null,           ironBinding, null],
          [treatedWoodRod, null,        null] ]);
recipes.addShaped("immc/iron_pick", ironPick,
        [ [null,           null,        ironPickHead],
          [null,           ironBinding, null],
          [treatedWoodRod, null,        null] ]);

val steelSword  = <tconstruct:broadsword>.withTag({Stats: {AttackSpeedMultiplier: 3.0  as float, MiningSpeed: 10.0  as float, FreeModifiers: 0, Durability: 815,  HarvestLevel: 3, Attack: 11.0 as float}, TinkerData: {Materials: ["treatedwood", "steel", "steel"]}});
val steelShovel = <tconstruct:shovel>.withTag({Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 10.0  as float, FreeModifiers: 0, Durability: 815,  HarvestLevel: 3, Attack: 2.0 as float}, TinkerData: {Materials: ["treatedwood", "steel", "steel"]}});
val steelAxe    = <tconstruct:hatchet>.withTag({Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 10.0  as float, FreeModifiers: 0, Durability: 815,  HarvestLevel: 3, Attack: 12.0 as float}, TinkerData: {Materials: ["treatedwood", "steel", "steel"]}});
val steelPick   = <tconstruct:pickaxe>.withTag({Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 10.0  as float, FreeModifiers: 0, Durability: 815,  HarvestLevel: 3, Attack: 4.0 as float}, TinkerData: {Materials: ["treatedwood", "steel", "steel"]}});

JEI.addItem(steelSword);
JEI.addItem(steelShovel);
JEI.addItem(steelAxe);
JEI.addItem(steelPick);

recipes.addShaped("immc/steel_sword", steelSword,
        [ [null,           null,       steelBlade],
          [null,           steelGuard, null],
          [treatedWoodRod, null,       null] ]);
recipes.addShaped("immc/steel_shovel", steelShovel,
        [ [null,           null,         steelShovelHead],
          [null,           steelBinding, null],
          [treatedWoodRod, null,         null] ]);
recipes.addShaped("immc/steel_axe", steelAxe,
        [ [null,           null,         steelAxeHead],
          [null,           steelBinding, null],
          [treatedWoodRod, null,         null] ]);
recipes.addShaped("immc/steel_pick", steelPick,
        [ [null,           null,         steelPickHead],
          [null,           steelBinding, null],
          [treatedWoodRod, null,         null] ]);

val skySteelSword  = <tconstruct:broadsword>.withTag({Stats: {AttackSpeedMultiplier: 3.0  as float, MiningSpeed: 10.0  as float, FreeModifiers: 0, Durability: 815,  HarvestLevel: 3, Attack: 11.0 as float}, TinkerData: {Materials: ["treatedwood", "sky_steel", "sky_steel"]}});
val skySteelShovel = <tconstruct:shovel>.withTag({Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 10.0  as float, FreeModifiers: 0, Durability: 815,  HarvestLevel: 3, Attack: 2.0 as float}, TinkerData: {Materials: ["treatedwood", "sky_steel", "sky_steel"]}});
val skySteelAxe    = <tconstruct:hatchet>.withTag({Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 10.0  as float, FreeModifiers: 0, Durability: 815,  HarvestLevel: 3, Attack: 12.0 as float}, TinkerData: {Materials: ["treatedwood", "sky_steel", "sky_steel"]}});
val skySteelPick   = <tconstruct:pickaxe>.withTag({Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 10.0  as float, FreeModifiers: 0, Durability: 815,  HarvestLevel: 3, Attack: 4.0 as float}, TinkerData: {Materials: ["treatedwood", "sky_steel", "sky_steel"]}});

JEI.addItem(skySteelSword);
JEI.addItem(skySteelShovel);
JEI.addItem(skySteelAxe);
JEI.addItem(skySteelPick);

recipes.addShaped("immc/sky_steel_sword", skySteelSword,
        [ [null,           null,          skySteelBlade],
          [null,           skySteelGuard, null],
          [treatedWoodRod, null,          null] ]);
recipes.addShaped("immc/sky_steel_shovel", skySteelShovel,
        [ [null,           null,            skySteelShovelHead],
          [null,           skySteelBinding, null],
          [treatedWoodRod, null,            null] ]);
recipes.addShaped("immc/sky_steel_axe", skySteelAxe,
        [ [null,           null,            skySteelAxeHead],
          [null,           skySteelBinding, null],
          [treatedWoodRod, null,            null] ]);
recipes.addShaped("immc/sky_steel_pick", skySteelPick,
        [ [null,           null,            skySteelPickHead],
          [null,           skySteelBinding, null],
          [treatedWoodRod, null,            null] ]);

// ---> Bows
val woodBowLimb = <tconstruct:bow_limb>.withTag({"Material": "wood"});
val treatedWoodBowLimb = <tconstruct:bow_limb>.withTag({"Material": "treatedwood"});
val stringBowString = <tconstruct:bow_string>.withTag({"Material": "string"});
val hempBowString = <tconstruct:bow_string>.withTag({"Material": "hemp"});

JEI.addItem(treatedWoodBowLimb);
JEI.addItem(hempBowString);

recipes.addShaped("immc/string_bow_string", stringBowString,
        [ [null, null, stringOre],
          [null, stringOre, null],
          [stringOre, null, null] ]);
recipes.addShaped("immc/hemp_bow_string", hempBowString,
        [ [null, null, hempOre],
          [null, hempOre, null],
          [hempOre, null, null] ]);
recipes.addShaped("immc/wood_bow_limb", woodBowLimb,
        [ [null, stickOre],
          [stickOre, null],
          [stickOre, null] ]);
recipes.addShaped("immc/treated_wood_bow_limb", treatedWoodBowLimb,
        [ [null, treatedStickOre],
          [treatedStickOre, null],
          [treatedStickOre, null] ]);

val woodBow        = <tconstruct:shortbow>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, DrawSpeed: 1.0 as float, FreeModifiers: 0, ProjectileBonusDamage: 0.0 as float, Durability: 35, Attack: 5.0 as float, Range: 2.0 as float}, TinkerData: {Materials: ["wood", "wood", "string"]}});
val treatedWoodBow = <tconstruct:shortbow>.withTag({Stats: {AttackSpeedMultiplier: 2.0 as float, DrawSpeed: 2.0 as float, FreeModifiers: 0, ProjectileBonusDamage: 0.2 as float, Durability: 117, Attack: 10.0 as float, Range: 4.0 as float}, TinkerData: {Materials: ["treatedwood", "treatedwood", "hemp"]}});

JEI.addItem(woodBow);
JEI.addItem(treatedWoodBow);

recipes.addShaped("immc/wood_bow", woodBow,
        [ [null,        woodBowLimb    ],
          [woodBowLimb, stringBowString] ]);
recipes.addShaped("immc/treated_wood_bow", treatedWoodBow,
        [ [null,               treatedWoodBowLimb],
          [treatedWoodBowLimb, hempBowString] ]);

// ---> Armor
val leatherArmorTrim = <conarm:armor_trim>.withTag({"Material": "leather"});
val leatherArmorPlates = <conarm:armor_plate>.withTag({"Material": "leather"});
val leatherChestCore = <conarm:chest_core>.withTag({"Material": "leather"});
val leatherHelmetCore = <conarm:helmet_core>.withTag({"Material": "leather"});
val leatherLeggingsCore = <conarm:leggings_core>.withTag({"Material": "leather"});
val leatherBootsCore = <conarm:boots_core>.withTag({"Material": "leather"});

JEI.addItem(leatherArmorTrim);
JEI.addItem(leatherArmorPlates);
JEI.addItem(leatherChestCore);
JEI.addItem(leatherHelmetCore);
JEI.addItem(leatherLeggingsCore);
JEI.addItem(leatherBootsCore);

recipes.addShaped("immc/leather_armor_trim", leatherArmorTrim,
        [ [ leatherOre, null,       leatherOre ],
          [ null,       leatherOre, null ],
          [ leatherOre, null,       leatherOre ] ]);
recipes.addShaped("immc/leather_armor_plates", leatherArmorPlates,
        [ [ null,       leatherOre, leatherOre ],
          [ leatherOre, leatherOre, leatherOre ],
          [ leatherOre, leatherOre, null ] ]);

recipes.addShaped("immc/leather_chest_core", leatherChestCore,
        [ [ leatherOre, null,       leatherOre ],
          [ leatherOre, leatherOre, leatherOre ],
          [ leatherOre, leatherOre, leatherOre ] ]);
recipes.addShaped("immc/leather_helmet_core", leatherHelmetCore,
        [ [ leatherOre, leatherOre, leatherOre ],
          [ leatherOre, null,       leatherOre ] ]);
recipes.addShaped("immc/leather_leggings_core", leatherLeggingsCore,
        [ [ leatherOre, leatherOre, leatherOre ],
          [ leatherOre, null,       leatherOre ],
          [ leatherOre, null,       leatherOre ] ]);
recipes.addShaped("immc/leather_boots_core", leatherBootsCore,
        [ [ leatherOre, null, leatherOre ],
          [ leatherOre, null, leatherOre ] ]);

val ironArmorPlates = <conarm:armor_plate>.withTag({"Material": "iron"});
val ironChestCore = <conarm:chest_core>.withTag({"Material": "iron"});
val ironHelmetCore = <conarm:helmet_core>.withTag({"Material": "iron"});
val ironLeggingsCore = <conarm:leggings_core>.withTag({"Material": "iron"});
val ironBootsCore = <conarm:boots_core>.withTag({"Material": "iron"});

JEI.addItem(ironArmorPlates);
JEI.addItem(ironChestCore);
JEI.addItem(ironHelmetCore);
JEI.addItem(ironLeggingsCore);
JEI.addItem(ironBootsCore);

recipes.addShaped("immc/iron_armor_plates", ironArmorPlates,
        [ [ null,         ironPlateOre, ironPlateOre ],
          [ ironPlateOre, ironPlateOre, ironPlateOre ],
          [ ironPlateOre, ironPlateOre, null ] ]);
MetalPress.addRecipe(ironChestCore, ironIngotOre, chestCoreMold, 2048, 8);
MetalPress.addRecipe(ironHelmetCore, ironIngotOre, helmetCoreMold, 2048, 5);
MetalPress.addRecipe(ironLeggingsCore, ironIngotOre, leggingsCoreMold, 2048, 7);
MetalPress.addRecipe(ironBootsCore, ironIngotOre, bootsCoreMold, 2048, 4);

val steelArmorPlates = <conarm:armor_plate>.withTag({"Material": "steel"});
val steelChestCore = <conarm:chest_core>.withTag({"Material": "steel"});
val steelHelmetCore = <conarm:helmet_core>.withTag({"Material": "steel"});
val steelLeggingsCore = <conarm:leggings_core>.withTag({"Material": "steel"});
val steelBootsCore = <conarm:boots_core>.withTag({"Material": "steel"});

JEI.addItem(steelArmorPlates);
JEI.addItem(steelChestCore);
JEI.addItem(steelHelmetCore);
JEI.addItem(steelLeggingsCore);
JEI.addItem(steelBootsCore);

recipes.addShaped("immc/steel_armor_plates", steelArmorPlates,
        [ [ null,          steelPlateOre, steelPlateOre ],
          [ steelPlateOre, steelPlateOre, steelPlateOre ],
          [ steelPlateOre, steelPlateOre, null ] ]);
MetalPress.addRecipe(steelChestCore, steelIngotOre, chestCoreMold, 2048, 8);
MetalPress.addRecipe(steelHelmetCore, steelIngotOre, helmetCoreMold, 2048, 5);
MetalPress.addRecipe(steelLeggingsCore, steelIngotOre, leggingsCoreMold, 2048, 7);
MetalPress.addRecipe(steelBootsCore, steelIngotOre, bootsCoreMold, 2048, 4);

val skySteelArmorPlates = <conarm:armor_plate>.withTag({"Material": "sky_steel"});
val skySteelChestCore = <conarm:chest_core>.withTag({"Material": "sky_steel"});
val skySteelHelmetCore = <conarm:helmet_core>.withTag({"Material": "sky_steel"});
val skySteelLeggingsCore = <conarm:leggings_core>.withTag({"Material": "sky_steel"});
val skySteelBootsCore = <conarm:boots_core>.withTag({"Material": "sky_steel"});

JEI.addItem(skySteelArmorPlates);
JEI.addItem(skySteelChestCore);
JEI.addItem(skySteelHelmetCore);
JEI.addItem(skySteelLeggingsCore);
JEI.addItem(skySteelBootsCore);

recipes.addShaped("immc/sky_steel_armor_plates", skySteelArmorPlates,
        [ [ null,             skySteelPlateOre, skySteelPlateOre ],
          [ skySteelPlateOre, skySteelPlateOre, skySteelPlateOre ],
          [ skySteelPlateOre, skySteelPlateOre, null ] ]);
MetalPress.addRecipe(skySteelChestCore, skySteelIngotOre, chestCoreMold, 2048, 8);
MetalPress.addRecipe(skySteelHelmetCore, skySteelIngotOre, helmetCoreMold, 2048, 5);
MetalPress.addRecipe(skySteelLeggingsCore, skySteelIngotOre, leggingsCoreMold, 2048, 7);
MetalPress.addRecipe(skySteelBootsCore, skySteelIngotOre, bootsCoreMold, 2048, 4);

val leatherChest    = <conarm:chestplate>.withTag({Stats: {Toughness: 0.0  as float, FreeModifiers: 0, Durability: 32,  Defense: 5.0 as float}, TinkerData: {Materials: ["leather", "leather", "leather"]}});
val leatherHelmet   = <conarm:helmet>.withTag({Stats: {Toughness: 0.0  as float, FreeModifiers: 0, Durability: 32,  Defense: 4.0 as float}, TinkerData: {Materials: ["leather", "leather", "leather"]}});
val leatherLeggings = <conarm:leggings>.withTag({Stats: {Toughness: 0.0  as float, FreeModifiers: 0, Durability: 32,  Defense: 4.0 as float}, TinkerData: {Materials: ["leather", "leather", "leather"]}});
val leatherBoots    = <conarm:boots>.withTag({Stats: {Toughness: 0.0 as float, FreeModifiers: 0, Durability: 32,  Defense: 3.0 as float}, TinkerData: {Materials: ["leather", "leather", "leather"]}});

JEI.addItem(leatherChest);
JEI.addItem(leatherHelmet);
JEI.addItem(leatherLeggings);
JEI.addItem(leatherBoots);

recipes.addShapeless("immc/leather_chest", leatherChest,
        [ leatherChestCore, leatherArmorPlates, leatherArmorTrim ]);
recipes.addShapeless("immc/leather_helmet", leatherHelmet,
        [ leatherHelmetCore, leatherArmorPlates, leatherArmorTrim ]);
recipes.addShapeless("immc/leather_leggings", leatherLeggings,
        [ leatherLeggingsCore, leatherArmorPlates, leatherArmorTrim ]);
recipes.addShapeless("immc/leather_boots", leatherBoots,
        [ leatherBootsCore, leatherArmorPlates, leatherArmorTrim ]);

val ironChest    = <conarm:chestplate>.withTag({Stats: {Toughness: 0.0  as float, FreeModifiers: 0, Durability: 284,  Defense: 15.0 as float}, TinkerData: {Materials: ["iron", "iron", "leather"]}});
val ironHelmet   = <conarm:helmet>.withTag({Stats: {Toughness: 0.0  as float, FreeModifiers: 0, Durability: 284,  Defense: 12.0 as float}, TinkerData: {Materials: ["iron", "iron", "leather"]}});
val ironLeggings = <conarm:leggings>.withTag({Stats: {Toughness: 0.0  as float, FreeModifiers: 0, Durability: 284,  Defense: 14.0 as float}, TinkerData: {Materials: ["iron", "iron", "leather"]}});
val ironBoots    = <conarm:boots>.withTag({Stats: {Toughness: 0.0 as float, FreeModifiers: 0, Durability: 284,  Defense: 9.0  as float}, TinkerData: {Materials: ["iron", "iron", "leather"]}});

JEI.addItem(ironChest);
JEI.addItem(ironHelmet);
JEI.addItem(ironLeggings);
JEI.addItem(ironBoots);

recipes.addShapeless("immc/iron_chest", ironChest,
        [ ironChestCore, ironArmorPlates, leatherArmorTrim ]);
recipes.addShapeless("immc/iron_helmet", ironHelmet,
        [ ironHelmetCore, ironArmorPlates, leatherArmorTrim ]);
recipes.addShapeless("immc/iron_leggings", ironLeggings,
        [ ironLeggingsCore, ironArmorPlates, leatherArmorTrim ]);
recipes.addShapeless("immc/iron_boots", ironBoots,
        [ ironBootsCore, ironArmorPlates, leatherArmorTrim ]);

val steelChest    = <conarm:chestplate>.withTag({Stats: {Toughness: 3.0  as float, FreeModifiers: 0, Durability: 587,  Defense: 21.5 as float}, TinkerData: {Materials: ["steel", "steel", "leather"]}});
val steelHelmet   = <conarm:helmet>.withTag({Stats: {Toughness: 2.0  as float, FreeModifiers: 0, Durability: 587,  Defense: 18.5 as float}, TinkerData: {Materials: ["steel", "steel", "leather"]}});
val steelLeggings = <conarm:leggings>.withTag({Stats: {Toughness: 3.0  as float, FreeModifiers: 0, Durability: 587,  Defense: 20.5 as float}, TinkerData: {Materials: ["steel", "steel", "leather"]}});
val steelBoots    = <conarm:boots>.withTag({Stats: {Toughness: 1.0 as float, FreeModifiers: 0, Durability: 587,  Defense: 11.5 as float}, TinkerData: {Materials: ["steel", "steel", "leather"]}});

JEI.addItem(steelChest);
JEI.addItem(steelHelmet);
JEI.addItem(steelLeggings);
JEI.addItem(steelBoots);

recipes.addShapeless("immc/steel_chest", steelChest,
        [ steelChestCore, steelArmorPlates, leatherArmorTrim ]);
recipes.addShapeless("immc/steel_helmet", steelHelmet,
        [ steelHelmetCore, steelArmorPlates, leatherArmorTrim ]);
recipes.addShapeless("immc/steel_leggings", steelLeggings,
        [ steelLeggingsCore, steelArmorPlates, leatherArmorTrim ]);
recipes.addShapeless("immc/steel_boots", steelBoots,
        [ steelBootsCore, steelArmorPlates, leatherArmorTrim ]);

val skySteelChest    = <conarm:chestplate>.withTag({Stats: {Toughness: 3.0  as float, FreeModifiers: 0, Durability: 587,  Defense: 21.5 as float}, TinkerData: {Materials: ["sky_steel", "sky_steel", "leather"]}});
val skySteelHelmet   = <conarm:helmet>.withTag({Stats: {Toughness: 2.0  as float, FreeModifiers: 0, Durability: 587,  Defense: 18.5 as float}, TinkerData: {Materials: ["sky_steel", "sky_steel", "leather"]}});
val skySteelLeggings = <conarm:leggings>.withTag({Stats: {Toughness: 3.0  as float, FreeModifiers: 0, Durability: 587,  Defense: 20.5 as float}, TinkerData: {Materials: ["sky_steel", "sky_steel", "leather"]}});
val skySteelBoots    = <conarm:boots>.withTag({Stats: {Toughness: 1.0 as float, FreeModifiers: 0, Durability: 587,  Defense: 11.5 as float}, TinkerData: {Materials: ["sky_steel", "sky_steel", "leather"]}});

JEI.addItem(skySteelChest);
JEI.addItem(skySteelHelmet);
JEI.addItem(skySteelLeggings);
JEI.addItem(skySteelBoots);

recipes.addShapeless("immc/sky_steel_chest", skySteelChest,
        [ skySteelChestCore, skySteelArmorPlates, leatherArmorTrim ]);
recipes.addShapeless("immc/sky_steel_helmet", skySteelHelmet,
        [ skySteelHelmetCore, skySteelArmorPlates, leatherArmorTrim ]);
recipes.addShapeless("immc/sky_steel_leggings", skySteelLeggings,
        [ skySteelLeggingsCore, skySteelArmorPlates, leatherArmorTrim ]);
recipes.addShapeless("immc/sky_steel_boots", skySteelBoots,
        [ skySteelBootsCore, skySteelArmorPlates, leatherArmorTrim ]);
