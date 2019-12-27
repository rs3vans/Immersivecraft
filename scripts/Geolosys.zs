#modloaded geolosys

import mods.jei.JEI;
import mods.immersiveengineering.Excavator;

JEI.removeAndHide(<geolosys:cluster:3>);     // tin, tealite, casserite
JEI.removeAndHide(<geolosys:ore_sample:4>);
JEI.removeAndHide(<geolosys:ore_sample:5>);
JEI.removeAndHide(<geolosys:ore:4>);
JEI.removeAndHide(<geolosys:ore:5>);
JEI.removeAndHide(<geolosys:cluster:10>);    // zinc, sphalerite
JEI.removeAndHide(<geolosys:ore_sample:10>);
JEI.removeAndHide(<geolosys:ore:10>);
JEI.removeAndHide(<geolosys:cluster:8>);    // platinum
JEI.removeAndHide(<geolosys:ore_sample:8>);
JEI.removeAndHide(<geolosys:ore:8>);
JEI.removeAndHide(<geolosys:cluster:11>);    // yellorium
JEI.removeAndHide(<geolosys:cluster:12>);    // osmium

// Rename Quartz
<geolosys:ore_vanilla:4>.displayName = "Quartz";
<geolosys:ore_sample_vanilla:4>.displayName = "Quartz Sample";

// Remove Excavator recipes & add Geolosys ones

val ecxavatorMixesToRemove = [
    "Copper",
    "Pyrite",
    "Gold",
    "Cassiterite",
    "Nickel",
    "Cinnabar",
    "Iron",
    "Lapis",
    "Bauxite",
    "Silver",
    "Uranium",
    "Galena",
    "Magnetite",
    "Lead",
    "Coal",
    "Quartzite",
    "Platinum"
] as string[];
for m in ecxavatorMixesToRemove {
    Excavator.removeMineral(m);
}

// Hematite
Excavator.addMineral("Hematite", 20, 0.1, ["geolosys:cluster:0"], [1.0]);