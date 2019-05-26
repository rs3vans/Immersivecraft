#priority 1
#modloaded tconstruct

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// ~~ Pickaxes ~~

static ironPick as IItemStack = <tconstruct:pickaxe>.withTag({
    Stats: {
        AttackSpeedMultiplier: 1.0 as float,
        MiningSpeed: 6.0 as float,
        FreeModifiers: 2,
        Durability: 279,
        HarvestLevel: 2,
        Attack: 4.0 as float
    },
    Special: {
        Categories: ["aoe", "tool", "harvest"]
    },
    TinkerData: {
        Materials: ["wood", "iron", "iron"],
        Modifiers: []
    },
    Modifiers: [],
    Traits: []
});
static anyIronPick as IIngredient = <tconstruct:pickaxe>.onlyWithTag({
    TinkerData: {
        Materials: ["wood", "iron", "iron"]
    }
});

static steelPick as IItemStack = <tconstruct:pickaxe>.withTag({
    Stats: {
        AttackSpeedMultiplier: 1.0 as float,
        MiningSpeed: 8.0 as float,
        FreeModifiers: 3,
        Durability: 625,
        HarvestLevel: 3,
        Attack: 6.0 as float
    },
    Special: {
        Categories: ["aoe", "tool", "harvest"]
    },
    TinkerData: {
        Materials: ["treatedwood", "steel", "iron"],
        Modifiers: []
    },
    Modifiers: [],
    Traits: []
});
static anySteelPick as IIngredient = <tconstruct:pickaxe>.onlyWithTag({
    TinkerData: {
        Materials: ["treatedwood", "steel", "iron"]
    }
});

static enderPick as IItemStack = <tconstruct:pickaxe>.withTag({
    Stats: {
        AttackSpeedMultiplier: 1.0 as float,
        MiningSpeed: 12.0 as float,
        FreeModifiers: 5,
        Durability: 1245,
        HarvestLevel: 4,
        Attack: 9.0 as float
    },
    Special: {
        Categories: ["aoe", "tool", "harvest"]
    },
    TinkerData: {
        Materials: ["treatedwood", "ender", "steel"],
        Modifiers: []
    },
    Modifiers: [],
    Traits: []
});
static anyEnderPick as IIngredient = <tconstruct:pickaxe>.onlyWithTag({
    TinkerData: {
        Materials: ["treatedwood", "ender", "steel"]
    }
});