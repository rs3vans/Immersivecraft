#modloaded immersiveengineering
#modloaded tconstruct
#modloaded improvedbackpacks

import mods.jei.JEI;
import mods.immersiveengineering.Blueprint;
import mods.tconstruct.Casting;

val stickOre = <ore:stickWood>;
val plankOre = <ore:plankWood>;
val blueDye = <ore:dyeBlue>;
val paper = <minecraft:paper>;
val gunpowderOre = <ore:gunpowder>;
val treatedWoodPlankOre = <ore:plankTreatedWood>;
val treatedWoodStickOre = <ore:stickTreatedWood>;
val ironIngotOre = <ore:ingotIron>;
val steelIngotOre = <ore:ingotSteel>;
val obsidianIngotOre = <ore:ingotObsidianEnderAlloy>;

val woodRod = <tconstruct:tool_rod>.withTag({Material: "wood"});
val treatedWoodRod = <tconstruct:tool_rod>.withTag({Material: "treatedwood"});
val firewoodRod = <tconstruct:tool_rod>.withTag({Material: "firewood"});
val woodBinding = <tconstruct:binding>.withTag({"Material": "treatedwood"});
val ironBinding = <tconstruct:binding>.withTag({"Material": "iron"});
val steelBinding = <tconstruct:binding>.withTag({"Material": "steel"});
val woodGuard = <tconstruct:wide_guard>.withTag({"Material": "treatedwood"});
val ironGuard = <tconstruct:wide_guard>.withTag({"Material": "iron"});
val steelGuard = <tconstruct:wide_guard>.withTag({"Material": "steel"});
val woodBlade = <tconstruct:sword_blade>.withTag({"Material": "treatedwood"});
val ironBlade = <tconstruct:sword_blade>.withTag({"Material": "iron"});
val steelBlade = <tconstruct:sword_blade>.withTag({"Material": "steel"});
val obsidianBlade = <tconstruct:sword_blade>.withTag({"Material": "obsidianenderalloy"});
val woodShovelHead = <tconstruct:shovel_head>.withTag({"Material": "treatedwood"});
val ironShovelHead = <tconstruct:shovel_head>.withTag({"Material": "iron"});
val steelShovelHead = <tconstruct:shovel_head>.withTag({"Material": "steel"});
val obsidianShovelHead = <tconstruct:shovel_head>.withTag({"Material": "obsidianenderalloy"});
val woodAxeHead = <tconstruct:axe_head>.withTag({"Material": "treatedwood"});
val ironAxeHead = <tconstruct:axe_head>.withTag({"Material": "iron"});
val steelAxeHead = <tconstruct:axe_head>.withTag({"Material": "steel"});
val obsidianAxeHead = <tconstruct:axe_head>.withTag({"Material": "obsidianenderalloy"});
val woodPickHead = <tconstruct:pick_head>.withTag({"Material": "treatedwood"});
val ironPickHead = <tconstruct:pick_head>.withTag({"Material": "iron"});
val steelPickHead = <tconstruct:pick_head>.withTag({"Material": "steel"});
val obsidianPickHead = <tconstruct:pick_head>.withTag({"Material": "obsidianenderalloy"});
val hempBowString = <tconstruct:bow_string>.withTag({"Material": "hemp"});
val treatedWoodBowLimb = <tconstruct:bow_limb>.withTag({"Material": "treatedwood"});
val stoneHammerHead = <tconstruct:hammer_head>.withTag({"Material": "stone"});
val ironHammerHead = <tconstruct:hammer_head>.withTag({"Material": "iron"});
val woodKnifeBlade = <tconstruct:knife_blade>.withTag({"Material": "treatedwood"});
val ironKnifeBlade = <tconstruct:knife_blade>.withTag({"Material": "iron"});
val leatherArmorTrim = <conarm:armor_trim>.withTag({"Material": "leather"});
val ironArmorPlates = <conarm:armor_plate>.withTag({"Material": "iron"});
val steelArmorPlates = <conarm:armor_plate>.withTag({"Material": "iron"});
val obsidianArmorPlates = <conarm:armor_plate>.withTag({"Material": "obsidianenderalloy"});
val ironChestCore = <conarm:chest_core>.withTag({"Material": "iron"});
val steelChestCore = <conarm:chest_core>.withTag({"Material": "iron"});
val obsidianChestCore = <conarm:chest_core>.withTag({"Material": "obsidianenderalloy"});
val ironHelmetCore = <conarm:helmet_core>.withTag({"Material": "iron"});
val steelHelmetCore = <conarm:helmet_core>.withTag({"Material": "iron"});
val obsidianHelmetCore = <conarm:helmet_core>.withTag({"Material": "obsidianenderalloy"});
val ironLeggingsCore = <conarm:leggings_core>.withTag({"Material": "iron"});
val steelLeggingsCore = <conarm:leggings_core>.withTag({"Material": "iron"});
val obsidianLeggingsCore = <conarm:leggings_core>.withTag({"Material": "obsidianenderalloy"});
val ironBootsCore = <conarm:boots_core>.withTag({"Material": "iron"});
val steelBootsCore = <conarm:boots_core>.withTag({"Material": "iron"});
val obsidianBootsCore = <conarm:boots_core>.withTag({"Material": "obsidianenderalloy"});

val stoneHoe = <minecraft:stone_hoe>;
val ironHoe = <minecraft:iron_hoe>;
val shears = <minecraft:shears>;

val ironSword     = <tconstruct:broadsword>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 0, Durability: 279,  HarvestLevel: 2, Attack: 8.0  as float}, TinkerData: {Materials: ["treatedwood", "iron", "iron"],             Modifiers: []}});
val steelSword    = <tconstruct:broadsword>.withTag({Stats: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 10.0  as float, FreeModifiers: 0, Durability: 815,  HarvestLevel: 3, Attack: 11.0 as float}, TinkerData: {Materials: ["treatedwood", "steel", "iron"],           Modifiers: []}});
val obsidianSword = <tconstruct:broadsword>.withTag({Stats: {AttackSpeedMultiplier: 6.0 as float, MiningSpeed: 23.0 as float, FreeModifiers: 0, Durability: 1247, HarvestLevel: 4, Attack: 17.0 as float}, TinkerData: {Materials: ["firewood", "obsidianenderalloy", "steel"], Modifiers: []}});

val ironShovel     = <tconstruct:shovel>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 0, Durability: 279,  HarvestLevel: 2, Attack: 1.0 as float}, TinkerData: {Materials: ["treatedwood", "iron", "iron"],             Modifiers: []}});
val steelShovel    = <tconstruct:shovel>.withTag({Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 10.0  as float, FreeModifiers: 0, Durability: 815,  HarvestLevel: 3, Attack: 2.0 as float}, TinkerData: {Materials: ["treatedwood", "steel", "iron"],           Modifiers: []}});
val obsidianShovel = <tconstruct:shovel>.withTag({Stats: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 23.0 as float, FreeModifiers: 0, Durability: 1247, HarvestLevel: 4, Attack: 3.0 as float}, TinkerData: {Materials: ["firewood", "obsidianenderalloy", "steel"], Modifiers: []}});

val ironAxe     = <tconstruct:hatchet>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 0, Durability: 279,  HarvestLevel: 2, Attack: 9.0  as float}, TinkerData: {Materials: ["treatedwood", "iron", "iron"],             Modifiers: []}});
val steelAxe    = <tconstruct:hatchet>.withTag({Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 10.0  as float, FreeModifiers: 0, Durability: 815,  HarvestLevel: 3, Attack: 12.0 as float}, TinkerData: {Materials: ["treatedwood", "steel", "iron"],           Modifiers: []}});
val obsidianAxe = <tconstruct:hatchet>.withTag({Stats: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 23.0 as float, FreeModifiers: 0, Durability: 1247, HarvestLevel: 4, Attack: 18.0 as float}, TinkerData: {Materials: ["firewood", "obsidianenderalloy", "steel"], Modifiers: []}});

val ironPick     = <tconstruct:pickaxe>.withTag({Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0  as float, FreeModifiers: 0, Durability: 279,  HarvestLevel: 2, Attack: 3.0 as float}, TinkerData: {Materials: ["treatedwood", "iron", "iron"],             Modifiers: []}});
val steelPick    = <tconstruct:pickaxe>.withTag({Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 10.0  as float, FreeModifiers: 0, Durability: 815,  HarvestLevel: 3, Attack: 4.0 as float}, TinkerData: {Materials: ["treatedwood", "steel", "iron"],           Modifiers: []}});
val obsidianPick = <tconstruct:pickaxe>.withTag({Stats: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 23.0 as float, FreeModifiers: 0, Durability: 1247, HarvestLevel: 4, Attack: 5.0 as float}, TinkerData: {Materials: ["firewood", "obsidianenderalloy", "steel"], Modifiers: []}});

val treatedWoodBow = <tconstruct:shortbow>.withTag({Stats: {AttackSpeedMultiplier: 2.0 as float, DrawSpeed: 2.0 as float, FreeModifiers: 0, ProjectileBonusDamage: 0.2 as float, Durability: 117, Attack: 10.0 as float, Range: 4.0 as float}, TinkerData: {Materials: ["treatedwood", "treatedwood", "hemp"], Modifiers: []}});

val ironChest     = <conarm:chestplate>.withTag({Stats: {Toughness: 0.0 as float, FreeModifiers: 0, Durability: 284,  Defense: 15.0 as float}, TinkerData: {Materials: ["iron", "iron", "leather"],                             Modifiers: []}});
val steelChest    = <conarm:chestplate>.withTag({Stats: {Toughness: 3.0 as float, FreeModifiers: 0, Durability: 587,  Defense: 21.5 as float}, TinkerData: {Materials: ["steel", "steel", "leather"],                           Modifiers: []}});
val obsidianChest = <conarm:chestplate>.withTag({Stats: {Toughness: 7.0 as float, FreeModifiers: 0, Durability: 1027, Defense: 32.7 as float}, TinkerData: {Materials: ["obsidianenderalloy", "obsidianenderalloy", "leather"], Modifiers: []}});

val ironHelmet     = <conarm:helmet>.withTag({Stats: {Toughness: 0.0 as float, FreeModifiers: 0, Durability: 284,  Defense: 12.0 as float}, TinkerData: {Materials: ["iron", "iron", "leather"],                             Modifiers: []}});
val steelHelmet    = <conarm:helmet>.withTag({Stats: {Toughness: 2.0 as float, FreeModifiers: 0, Durability: 587,  Defense: 18.5 as float}, TinkerData: {Materials: ["steel", "steel", "leather"],                           Modifiers: []}});
val obsidianHelmet = <conarm:helmet>.withTag({Stats: {Toughness: 6.0 as float, FreeModifiers: 0, Durability: 1027, Defense: 22.7 as float}, TinkerData: {Materials: ["obsidianenderalloy", "obsidianenderalloy", "leather"], Modifiers: []}});

val ironLeggings     = <conarm:leggings>.withTag({Stats: {Toughness: 0.0 as float, FreeModifiers: 0, Durability: 284,  Defense: 14.0 as float}, TinkerData: {Materials: ["iron", "iron", "leather"],                             Modifiers: []}});
val steelLeggings    = <conarm:leggings>.withTag({Stats: {Toughness: 3.0 as float, FreeModifiers: 0, Durability: 587,  Defense: 20.5 as float}, TinkerData: {Materials: ["steel", "steel", "leather"],                           Modifiers: []}});
val obsidianLeggings = <conarm:leggings>.withTag({Stats: {Toughness: 7.0 as float, FreeModifiers: 0, Durability: 1027, Defense: 31.7 as float}, TinkerData: {Materials: ["obsidianenderalloy", "obsidianenderalloy", "leather"], Modifiers: []}});

val ironBoots     = <conarm:boots>.withTag({Stats: {Toughness: 0.0 as float, FreeModifiers: 0, Durability: 284,  Defense: 9.0  as float}, TinkerData: {Materials: ["iron", "iron", "leather"],                             Modifiers: []}});
val steelBoots    = <conarm:boots>.withTag({Stats: {Toughness: 1.0 as float, FreeModifiers: 0, Durability: 587,  Defense: 11.5 as float}, TinkerData: {Materials: ["steel", "steel", "leather"],                           Modifiers: []}});
val obsidianBoots = <conarm:boots>.withTag({Stats: {Toughness: 2.0 as float, FreeModifiers: 0, Durability: 1027, Defense: 14.7 as float}, TinkerData: {Materials: ["obsidianenderalloy", "obsidianenderalloy", "leather"], Modifiers: []}});

JEI.addItem(ironSword);
JEI.addItem(steelSword);
JEI.addItem(obsidianSword);
JEI.addItem(ironShovel);
JEI.addItem(steelShovel);
JEI.addItem(obsidianShovel);
JEI.addItem(ironAxe);
JEI.addItem(steelAxe);
JEI.addItem(obsidianAxe);
JEI.addItem(ironPick);
JEI.addItem(steelPick);
JEI.addItem(obsidianPick);
JEI.addItem(treatedWoodBow);
JEI.addItem(ironChest);
JEI.addItem(steelChest);
JEI.addItem(obsidianChest);
JEI.addItem(ironHelmet);
JEI.addItem(steelHelmet);
JEI.addItem(obsidianHelmet);
JEI.addItem(ironLeggings);
JEI.addItem(steelLeggings);
JEI.addItem(obsidianLeggings);
JEI.addItem(ironBoots);
JEI.addItem(steelBoots);
JEI.addItem(obsidianBoots);

// -- Tools & Armor --
val flintOre = <ore:itemRawFlint>;
val cobblestoneOre = <ore:cobblestone>;
val leather = <improvedbackpacks:tanned_leather>;
val stoneToolMaterial = <ore:cobblestone>;
val blazePowder = <minecraft:blaze_powder>;
val grip = <immersiveengineering:material:13>;
val steelComponent = <immersiveengineering:material:8>;
val steelRodOre = <ore:stickSteel>;
val woolOre = <ore:wool>;
val hempOre = <ore:fiberHemp>;
val heavyEngBlock = <immersiveengineering:metal_decoration0:5>;
val revolverBarrel = <immersiveengineering:material:14>;
val revolverDrum = <immersiveengineering:material:15>;
val revolverHammer = <immersiveengineering:material:16>;
val hvCapacitor = <immersiveengineering:metal_device0:2>;
val fluidPipe = <immersiveengineering:metal_device1:6>;

// Stone Hoe
recipes.addShaped("immc/stone_hoe", stoneHoe,
    [ [flintOre, cobblestoneOre],
      [woodRod,  null          ] ]);

// Shears
recipes.addShaped("immc/shears", shears,
    [ [woodRod,      flintOre],
      [ironIngotOre, woodRod ] ]);

// Engineer's Hammer
val engineerHammer = <immersiveengineering:tool>;
recipes.removeShaped(engineerHammer);
recipes.addShaped("immc/stone_hammer_head", stoneHammerHead,
        [ [stoneToolMaterial, stoneToolMaterial],
          [stoneToolMaterial, stoneToolMaterial] ]);
recipes.addShaped("immc/engineers_hammer", engineerHammer,
        [ [null,    null,         ironHammerHead],
          [null,    <ore:string>, null],
          [woodRod, null,         null] ]);

// Treated Wood
Casting.addTableRecipe(treatedWoodStickOre.firstItem, stickOre, <liquid:creosote>, 50, true, 60);
Casting.addTableRecipe(treatedWoodRod, woodRod, <liquid:creosote>, 100, true, 120);
Casting.addBasinRecipe(treatedWoodPlankOre.firstItem, plankOre, <liquid:creosote>, 100, true, 120);

// Firewood
Casting.addTableRecipe(firewoodRod, treatedWoodRod, <liquid:blaze>, 500, true, 240);

// Shears/Wire cutters
val engineerCutters = <immersiveengineering:tool:1>;
recipes.removeShaped(engineerCutters);

// Skyhook
val skyhook = <immersiveengineering:skyhook>;
recipes.removeShaped(skyhook);

// Ear Defenders
val earmuffs = <immersiveengineering:earmuffs>;
recipes.removeShaped(earmuffs);

// Mining Drill
val drill = <immersiveengineering:drill>;
recipes.removeShaped(drill);

// Chem Thrower
val chemthrower = <immersiveengineering:chemthrower>;
recipes.removeShaped(chemthrower);

// Revolver
val revolver = <immersiveengineering:revolver>;
recipes.removeShaped(revolver);

val bayonet = <immersiveengineering:toolupgrade:4>;
recipes.removeShaped(bayonet);
recipes.addShaped("immc/bayonet", bayonet,
    [ [ironSword, steelIngotOre],
      [steelIngotOre, treatedWoodPlankOre] ]);

// Rail Gun
val railgun = <immersiveengineering:railgun>;
recipes.removeShaped(railgun);

// Blueprints

Blueprint.addRecipe("Engineer's Tools", engineerCutters, [ treatedWoodRod * 2, ironIngotOre * 2 ]);
Blueprint.addRecipe("Engineer's Tools", skyhook, [ grip * 2, steelComponent, steelIngotOre * 3 ]);
Blueprint.addRecipe("Engineer's Tools", earmuffs, [ woolOre * 2, steelRodOre * 3 ]);
Blueprint.addRecipe("Engineer's Tools", drill, [ grip * 2, steelComponent * 2, heavyEngBlock ]);
Blueprint.addRecipe("Engineer's Tools", chemthrower, [ grip * 2, steelComponent * 2, fluidPipe * 2 ]);
Blueprint.addRecipe("Engineer's Tools", revolver, [ grip * 2, revolverBarrel, revolverDrum, revolverHammer ]);
Blueprint.addRecipe("Engineer's Tools", railgun, [ grip * 2, revolverBarrel, hvCapacitor, firewoodRod ]);

Blueprint.addRecipe("Basic Tool Parts", treatedWoodRod, [ treatedWoodStickOre * 2 ]);
Blueprint.addRecipe("Basic Tool Parts", woodBinding, [ treatedWoodStickOre * 2 ]);
Blueprint.addRecipe("Basic Tool Parts", woodGuard, [ treatedWoodPlankOre, treatedWoodStickOre * 2 ]);
Blueprint.addRecipe("Basic Tool Parts", woodBlade, [ treatedWoodPlankOre * 3 ]);
Blueprint.addRecipe("Basic Tool Parts", woodShovelHead, [ treatedWoodPlankOre ]);
Blueprint.addRecipe("Basic Tool Parts", woodAxeHead, [ treatedWoodPlankOre * 3 ]);
Blueprint.addRecipe("Basic Tool Parts", woodPickHead, [ treatedWoodPlankOre * 3 ]);

Blueprint.addRecipe("Iron Tools & Armor", ironSword, [ treatedWoodRod, ironBinding, ironBlade ]);
Blueprint.addRecipe("Iron Tools & Armor", ironShovel, [ treatedWoodRod, ironBinding, ironShovelHead ]);
Blueprint.addRecipe("Iron Tools & Armor", ironAxe, [ treatedWoodRod, ironBinding, ironAxeHead ]);
Blueprint.addRecipe("Iron Tools & Armor", ironPick, [ treatedWoodRod, ironBinding, ironPickHead ]);
Blueprint.addRecipe("Iron Tools & Armor", ironHoe, [ treatedWoodRod, ironBinding, ironIngotOre ]);
Blueprint.addRecipe("Iron Tools & Armor", ironChest, [ ironChestCore, ironArmorPlates, leatherArmorTrim ]);
Blueprint.addRecipe("Iron Tools & Armor", ironHelmet, [ ironHelmetCore, ironArmorPlates, leatherArmorTrim ]);
Blueprint.addRecipe("Iron Tools & Armor", ironLeggings, [ ironLeggingsCore, ironArmorPlates, leatherArmorTrim ]);
Blueprint.addRecipe("Iron Tools & Armor", ironBoots, [ ironBootsCore, ironArmorPlates, leatherArmorTrim ]);

Blueprint.addRecipe("Steel Tools & Armor", steelSword, [ treatedWoodRod, steelBinding, steelBlade ]);
Blueprint.addRecipe("Steel Tools & Armor", steelShovel, [ treatedWoodRod, steelBinding, steelShovelHead ]);
Blueprint.addRecipe("Steel Tools & Armor", steelAxe, [ treatedWoodRod, steelBinding, steelAxeHead ]);
Blueprint.addRecipe("Steel Tools & Armor", steelPick, [ treatedWoodRod, steelBinding, steelPickHead ]);
Blueprint.addRecipe("Steel Tools & Armor", steelChest, [ steelChestCore, steelArmorPlates, leatherArmorTrim ]);
Blueprint.addRecipe("Steel Tools & Armor", steelHelmet, [ steelHelmetCore, steelArmorPlates, leatherArmorTrim ]);
Blueprint.addRecipe("Steel Tools & Armor", steelLeggings, [ steelLeggingsCore, steelArmorPlates, leatherArmorTrim ]);
Blueprint.addRecipe("Steel Tools & Armor", steelBoots, [ steelBootsCore, steelArmorPlates, leatherArmorTrim ]);

Blueprint.addRecipe("Obsidian Ender Alloy Tools & Armor", obsidianSword, [ firewoodRod, steelGuard, obsidianBlade ]);
Blueprint.addRecipe("Obsidian Ender Alloy Tools & Armor", obsidianShovel, [ firewoodRod, steelBinding, obsidianShovelHead ]);
Blueprint.addRecipe("Obsidian Ender Alloy Tools & Armor", obsidianAxe, [ firewoodRod, steelBinding, obsidianAxeHead ]);
Blueprint.addRecipe("Obsidian Ender Alloy Tools & Armor", obsidianPick, [ firewoodRod, steelBinding, obsidianPickHead ]);
Blueprint.addRecipe("Obsidian Ender Alloy Tools & Armor", obsidianChest, [ obsidianChestCore, obsidianArmorPlates, leatherArmorTrim ]);
Blueprint.addRecipe("Obsidian Ender Alloy Tools & Armor", obsidianHelmet, [ obsidianHelmetCore, obsidianArmorPlates, leatherArmorTrim ]);
Blueprint.addRecipe("Obsidian Ender Alloy Tools & Armor", obsidianLeggings, [ obsidianLeggingsCore, obsidianArmorPlates, leatherArmorTrim ]);
Blueprint.addRecipe("Obsidian Ender Alloy Tools & Armor", obsidianBoots, [ obsidianBootsCore, obsidianArmorPlates, leatherArmorTrim ]);

Blueprint.addRecipe("Treated Wood Bow & Parts", treatedWoodBowLimb, [ treatedWoodRod ]);
Blueprint.addRecipe("Treated Wood Bow & Parts", hempBowString, [ hempOre * 3 ]);
Blueprint.addRecipe("Treated Wood Bow & Parts", treatedWoodBow, [ treatedWoodBowLimb * 2, hempBowString ]);

Blueprint.addRecipe("Shields", <minecraft:shield>, [ treatedWoodPlankOre * 6, leather * 2, <ore:plateIron> * 2 ]);
Blueprint.addRecipe("Shields", <immersiveengineering:shield>, [ <minecraft:shield>, <ore:plateSteel> * 6 ]);

recipes.addShaped("immc/blueprint_special_bullet", <immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}),
    [ [ gunpowderOre, blazePowder, gunpowderOre ],
      [ blueDye, blueDye, blueDye ],
      [ paper, paper, paper ] ]);
recipes.addShaped("immc/blueprint_electrode", <immersiveengineering:blueprint>.withTag({blueprint: "electrode"}),
    [ [ null, <ore:dustHOPGraphite>, null ],
      [ blueDye, blueDye, blueDye ],
      [ paper, paper, paper ] ]);

recipes.addShaped("immc/blueprint_eng_tools", <immersiveengineering:blueprint>.withTag({blueprint: "Engineer's Tools"}),
    [ [ null, treatedWoodStickOre, null ],
      [ blueDye, blueDye, blueDye ],
      [ paper, paper, paper ] ]);
recipes.addShaped("immc/blueprint_basic_tools", <immersiveengineering:blueprint>.withTag({blueprint: "Basic Tool Parts"}),
    [ [ null, treatedWoodPlankOre, null ],
      [ blueDye, blueDye, blueDye ],
      [ paper, paper, paper ] ]);

recipes.addShaped("immc/blueprint_iron_tools", <immersiveengineering:blueprint>.withTag({blueprint: "Iron Tools & Armor"}),
    [ [ woodBinding, ironIngotOre, leather ],
      [ blueDye, blueDye, blueDye ],
      [ paper, paper, paper ] ]);
recipes.addShaped("immc/blueprint_steel_tools", <immersiveengineering:blueprint>.withTag({blueprint: "Steel Tools & Armor"}),
    [ [ ironBinding, steelIngotOre, leather ],
      [ blueDye, blueDye, blueDye ],
      [ paper, paper, paper ] ]);
recipes.addShaped("immc/blueprint_obsidian_tools", <immersiveengineering:blueprint>.withTag({blueprint: "Obsidian Ender Alloy Tools & Armor"}),
    [ [ steelBinding, obsidianIngotOre, leather ],
      [ blueDye, blueDye, blueDye ],
      [ paper, paper, paper ] ]);

recipes.addShaped("immc/blueprint_shields", <immersiveengineering:blueprint>.withTag({blueprint: "Shields"}),
    [ [ treatedWoodPlankOre, ironIngotOre, treatedWoodPlankOre ],
      [ blueDye, blueDye, blueDye ],
      [ paper, paper, paper ] ]);