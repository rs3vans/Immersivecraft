#norun
#modloaded tconstruct
#modloaded conarm
#priority 100

import crafttweaker.item.IItemStack;
import mods.jei.JEI;

static textColor as int = 4605510;


// ---> Swords
static endertechSteelSword as IItemStack = <tconstruct:broadsword>.withTag({
  Stats: {AttackSpeedMultiplier: 6.0  as float, MiningSpeed: 23.0 as float, FreeModifiers: 0, Durability: 1247, HarvestLevel: 4, Attack: 17.0 as float},
  TinkerData: {
    Materials: ["endertech_extra", "endertech_steel", "endertech_steel"]
  }
});

static endertechSword as IItemStack = <tconstruct:broadsword>.withTag({
  Stats: {AttackSpeedMultiplier: 6.0  as float, MiningSpeed: 23.0 as float, FreeModifiers: 0, Durability: 1247, HarvestLevel: 4, Attack: 17.0 as float},
  TinkerData: {
    Materials: ["endertech_extra", "endertech", "endertech_steel"]
  }
});

JEI.addItem(endertechSteelSword);
JEI.addItem(endertechSword);


// ---> Shovels
static endertechSteelShovel as IItemStack = <tconstruct:shovel>.withTag({
  Stats: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 23.0 as float, FreeModifiers: 0, Durability: 1247, HarvestLevel: 4, Attack: 3.0 as float},
  TinkerData: {
    Materials: ["endertech_extra", "endertech_steel", "endertech_steel"]
  }
});

static endertechShovel as IItemStack = <tconstruct:shovel>.withTag({
  Stats: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 23.0 as float, FreeModifiers: 0, Durability: 1247, HarvestLevel: 4, Attack: 3.0 as float},
  TinkerData: {
    Materials: ["endertech_extra", "endertech", "endertech_steel"]
  }
});

JEI.addItem(endertechSteelShovel);
JEI.addItem(endertechShovel);


// ---> Axes
static endertechSteelAxe as IItemStack = <tconstruct:hatchet>.withTag({
  Stats: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 23.0 as float, FreeModifiers: 0, Durability: 1247, HarvestLevel: 4, Attack: 18.0 as float},
  TinkerData: {
    Materials: ["endertech_extra", "endertech_steel", "endertech_steel"]
  }
});

static endertechAxe as IItemStack = <tconstruct:hatchet>.withTag({
  Stats: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 23.0 as float, FreeModifiers: 0, Durability: 1247, HarvestLevel: 4, Attack: 18.0 as float},
  TinkerData: {
    Materials: ["endertech_extra", "endertech", "endertech_steel"]
  }
});

JEI.addItem(endertechSteelAxe);
JEI.addItem(endertechAxe);


// ---> Pickaxes
static endertechSteelPick as IItemStack = <tconstruct:pickaxe>.withTag({
  Stats: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 23.0 as float, FreeModifiers: 0, Durability: 1247, HarvestLevel: 4, Attack: 5.0 as float},
  TinkerData: {
    Materials: ["endertech_extra", "endertech_steel", "endertech_steel"]
  }
});

static endertechPick as IItemStack = <tconstruct:pickaxe>.withTag({
  Stats: {AttackSpeedMultiplier: 3.0 as float, MiningSpeed: 23.0 as float, FreeModifiers: 0, Durability: 1247, HarvestLevel: 4, Attack: 5.0 as float},
  TinkerData: {
    Materials: ["endertech_extra", "endertech", "endertech_steel"]
  }
});

JEI.addItem(endertechSteelPick);
JEI.addItem(endertechPick);


// ---> Chestplates
static endertechSteelChest as IItemStack = <conarm:chestplate>.withTag({
  Stats: {Toughness: 7.0 as float, FreeModifiers: 0, Durability: 1024, Defense: 32.0 as float},
  TinkerData: {
    Materials: ["endertech_steel", "endertech_steel", "endertech_extra"]
  }
});

static endertechChest as IItemStack = <conarm:chestplate>.withTag({
  Stats: {Toughness: 7.0 as float, FreeModifiers: 0, Durability: 1024, Defense: 32.0 as float},
  TinkerData: {
    Materials: ["endertech", "endertech_steel", "endertech_extra"],
    Modifiers: [
      "resistant_armor"
    ]
  },
  Modifiers: [
    {identifier: "invigorating_armor", color: textColor, level: 10},
    {identifier: "resistant_armor", color: textColor, level: 5},
    {identifier: "shielding_armor", color: textColor, level: 5},
    {identifier: "magnetic_armor", color: textColor, level: 10}
  ],
  Traits: [
    "invigorating_armor",
    "resistant_armor",
    "shielding_armor",
    "magnetic_armor"
  ]
});

JEI.addItem(endertechSteelChest);
JEI.addItem(endertechChest);


// ---> Helmets
static endertechSteelHelmet as IItemStack = <conarm:helmet>.withTag({
  Stats: {Toughness: 6.0 as float, FreeModifiers: 0, Durability: 1024, Defense: 22.7 as float},
  TinkerData: {
    Materials: ["endertech_steel", "endertech_steel", "endertech_extra"]
  }
});

static endertechHelmet as IItemStack = <conarm:helmet>.withTag({
  Stats: {Toughness: 6.0 as float, FreeModifiers: 0, Durability: 1024, Defense: 22.7 as float},
  TinkerData: {
    Materials: ["endertech", "endertech_steel", "endertech_extra"],
    Modifiers: [
      "resistant_armor",
      "amphibious_armor"
    ]
  },
  Modifiers: [
    {identifier: "resistant_armor", color: textColor, level: 5},
    {identifier: "amphibious_armor", color: textColor, level: 1, oxygen: 1200}
  ],
  Traits: [
    "resistant_armor",
    "amphibious_armor"
  ]
});

JEI.addItem(endertechSteelHelmet);
JEI.addItem(endertechHelmet);


// ---> Leggings
static endertechSteelLeggings as IItemStack = <conarm:leggings>.withTag({
  Stats: {Toughness: 7.0 as float, FreeModifiers: 0, Durability: 1024, Defense: 32.0 as float},
  TinkerData: {
    Materials: ["endertech_steel", "endertech_steel", "endertech_extra"]
  }
});

static endertechLeggings as IItemStack = <conarm:leggings>.withTag({
  Stats: {Toughness: 7.0 as float, FreeModifiers: 0, Durability: 1024, Defense: 32.0 as float},
  TinkerData: {
    Materials: ["endertech", "endertech_steel", "endertech_extra"],
    Modifiers: [
      "resistant_armor"
    ]
  },
  Modifiers: [
    {identifier: "resistant_armor", color: textColor, level: 5},
    {identifier: "lightweight_armor", color: textColor, level: 10},
    {identifier: "shulkerweight_armor", color: textColor, level: 1, current: 20}
  ],
  Traits: [
    "resistant_armor",
    "lightweight_armor",
    "shulkerweight_armor"
  ]
});

JEI.addItem(endertechSteelLeggings);
JEI.addItem(endertechLeggings);


// ---> Boots
static endertechSteelBoots as IItemStack = <conarm:boots>.withTag({
  Stats: {Toughness: 2.0 as float, FreeModifiers: 0, Durability: 1024, Defense: 14.0 as float},
  TinkerData: {
    Materials: ["endertech_steel", "endertech_steel", "endertech_extra"]
  }
});

static endertechBoots as IItemStack = <conarm:boots>.withTag({
  Stats: {Toughness: 2.0 as float, FreeModifiers: 0, Durability: 1024, Defense: 14.0 as float},
  TinkerData: {
    Materials: ["endertech", "endertech_steel", "endertech_extra"],
    Modifiers: [
      "resistant_armor"
    ]
  },
  Modifiers: [
    {identifier: "resistant_armor", color: textColor, level: 5},
    {identifier: "high_stride_armor", color: textColor, level: 1},
    {identifier: "weightless_armor", color: textColor, level: 1}
  ],
  Traits: [
    "resistant_armor",
    "high_stride_armor",
    "weightless_armor"
  ]
});

JEI.addItem(endertechSteelBoots);
JEI.addItem(endertechBoots);