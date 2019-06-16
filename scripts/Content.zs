#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val hardenedBrick = VanillaFactory.createItem("hardened_brick");
hardenedBrick.register();

val compressedQuartz1 = VanillaFactory.createBlock("compressed_quartz_1", <blockmaterial:rock>);
compressedQuartz1.setToolLevel(2);
compressedQuartz1.setBlockHardness(6.0);
compressedQuartz1.setBlockResistance(6.0);
compressedQuartz1.register();

val compressedQuartz2 = VanillaFactory.createBlock("compressed_quartz_2", <blockmaterial:rock>);
compressedQuartz2.setToolLevel(3);
compressedQuartz2.setBlockHardness(8.0);
compressedQuartz2.setBlockResistance(8.0);
compressedQuartz2.register();

val compressedQuartz3 = VanillaFactory.createBlock("compressed_quartz_3", <blockmaterial:rock>);
compressedQuartz3.setToolLevel(4);
compressedQuartz3.setBlockHardness(12.0);
compressedQuartz3.setBlockResistance(12.0);
compressedQuartz3.register();

val quartzStar = VanillaFactory.createItem("quartz_star");
quartzStar.register();

val refinedEnderPearl = VanillaFactory.createItem("refined_ender_pearl");
refinedEnderPearl.register();