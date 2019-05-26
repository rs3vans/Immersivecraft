#modloaded tconstruct
#modloaded tcomplement

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import mods.jei.JEI;
import mods.immersiveengineering.MetalPress;

import scripts.TiCTools.anyIronPick;
import scripts.TiCTools.anySteelPick;
import scripts.TiCTools.anyEnderPick;

val plate = <ore:plateRedstoneNanomaterial>;
val densePlate = <ore:plateDenseRedstoneNanomaterial>;

// plate
val core = <quark:diamond_heart>;
val redstoneCoil = <immersiveengineering:wirecoil:5>;
val redstoneEngBlk = <immersiveengineering:metal_decoration0:3>;
val circBoard = <immersiveengineering:material:27>;
recipes.addShaped("tic/redstone_nm_plate", plate.firstItem,
        [ [ redstoneCoil,   circBoard, redstoneCoil   ],
          [ redstoneEngBlk, core,      redstoneEngBlk ],
          [ redstoneCoil,   circBoard, redstoneCoil   ] ]);

// dense plate
val packingMold2x2 = <immersiveengineering:mold:5>;
MetalPress.addRecipe(densePlate.firstItem, plate, packingMold2x2, 4096, 4);

val hasteTools = anyIronPick | anySteelPick | anyEnderPick;
val hasterTools = anySteelPick | anyEnderPick;
val hastestTools = anyEnderPick;

val outputPickaxe = <tconstruct:pickaxe>
        .withDisplayName("Modified Pickaxe");

recipes.addShaped("tic/add_haste_to_pick", outputPickaxe.withLore(["§cHaste§r"]),
        [ [ null, null, null ],
          [ densePlate , hasteTools.marked("pick"), densePlate ],
          [ null, null, null ] ],
        function (out, ins, info) {
            val numMods = ins.pick.tag.Stats.FreeModifiers;
            if (numMods <= 0) {
                return null; // no modifiers left
            }
            val mods = ins.pick.tag.TinkerData.Modifiers;
            if (mods has "haste") {
                return null; // don't apply haste more than once
            }
            val speed = ins.pick.tag.Stats.MiningSpeed;
            return ins.pick.withTag(ins.pick.tag + {
                Stats: {
                    FreeModifiers: (numMods - 1),
                    MiningSpeed: (speed * 1.25) as float
                },
                TinkerData: {
                    Modifiers:["haste"]
                },
                Modifiers: [
                    {identifier: "haste", color: 9502720, level: 1, current: 50, max: 50}
                ],
                CustomModLevels: {
                    haste: 1
                }
            });
        },
        null);

recipes.addShaped("tic/add_haster_to_pick", outputPickaxe.withLore(["§cHaster§r"]),
        [ [ null, densePlate, null ],
          [ densePlate , hasterTools.marked("pick"), densePlate ],
          [ null, densePlate, null ] ],
        function (out, ins, info) {
            val numMods = ins.pick.tag.Stats.FreeModifiers;
            if (numMods <= 0) {
                return null; // no modifiers left
            }
            val harvestLevel = ins.pick.tag.Stats.HarvestLevel;
            if (harvestLevel < 3) {
                return null; // not applicable below harvest level 3
            }
            val mods = ins.pick.tag.TinkerData.Modifiers;
            if (!(mods has "haste")) {
                return null; // don't apply if haste isn't already present
            }
            val level = ins.pick.tag.CustomModLevels.haste;
            if (level != 1) {
                return null; // don't apply if haste isn't level 1
            }
            val speed = ins.pick.tag.Stats.MiningSpeed;
            val prevModifier = {
                Modifiers: [
                    {identifier: "haste", color: 9502720, level: 1, current: 50, max: 50}
                ]
            } as IData;
            return ins.pick.withTag((ins.pick.tag - prevModifier) + {
                Stats: {
                    FreeModifiers: (numMods - 1),
                    MiningSpeed: (speed * 1.35) as float
                },
                Modifiers: [
                    {identifier: "haste", color: 9502720, level: 2, current: 100, max: 100}
                ],
                CustomModLevels: {
                    haste: 2
                }
            });
        },
        null);

recipes.addShaped("tic/add_hastest_to_pick", outputPickaxe.withLore(["§cHastest§r"]),
        [ [ densePlate, densePlate, densePlate ],
          [ densePlate, hastestTools.marked("pick"), densePlate ],
          [ densePlate, densePlate, densePlate ] ],
        function (out, ins, info) {
            val numMods = ins.pick.tag.Stats.FreeModifiers;
            if (numMods <= 0) {
                return null; // no modifiers left
            }
            val harvestLevel = ins.pick.tag.Stats.HarvestLevel;
            if (harvestLevel < 4) {
                return null; // not applicable below harvest level 4
            }
            val mods = ins.pick.tag.TinkerData.Modifiers;
            if (!(mods has "haste")) {
                return null; // don't apply if haste isn't already present
            }
            val level = ins.pick.tag.CustomModLevels.haste;
            if (level != 2) {
                return null; // don't apply if haste isn't level 2
            }
            val speed = ins.pick.tag.Stats.MiningSpeed;
            val prevModifier = {
                Modifiers: [
                    {identifier: "haste", color: 9502720, level: 2, current: 100, max: 100}
                ]
            } as IData;
            return ins.pick.withTag((ins.pick.tag - prevModifier) + {
                Stats: {
                    FreeModifiers: (numMods - 1),
                    MiningSpeed: (speed * 1.45) as float
                },
                Modifiers: [
                    {identifier: "haste", color: 9502720, level: 3, current: 150, max: 150}
                ],
                CustomModLevels: {
                    haste: 3
                }
            });
        },
        null);

//JEI.addDescription([ <tconstruct:pickaxe>, <quark:diamond_heart> ],
//        "You can add different levels of haste!",
//        "Woo faster mining!");