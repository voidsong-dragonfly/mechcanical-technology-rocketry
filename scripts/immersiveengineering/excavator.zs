//Import
import mods.immersiveengineering.Excavator;


//Remove current veins
Excavator.removeMineral("Bauxite");
Excavator.removeMineral("Cassiterite");
Excavator.removeMineral("Coal");
Excavator.removeMineral("Copper");
Excavator.removeMineral("Cinnabar");
Excavator.removeMineral("Silt");
Excavator.removeMineral("Galena");
Excavator.removeMineral("Gold");
Excavator.removeMineral("Iron");
Excavator.removeMineral("Lapis");
Excavator.removeMineral("Lead");
Excavator.removeMineral("Magnetite");
Excavator.removeMineral("Nickel");
Excavator.removeMineral("Pyrite");
Excavator.removeMineral("Quartzite");
Excavator.removeMineral("Silver");
Excavator.removeMineral("Uranium");


/*
    Veins now have more characteristics - they'll provide dirt, stone, and gravel along with their ores
    They also have different yields - the ratio of stone and dirt to ore
    This plays in when they're used as ingame veins as well
    -----Overworld Veins-----
    60% ore is 25% cobblestone 12.5% gravel 2.5% dirt
    40% ore is 40% cobblestone 15% gravel 5% dirt
    20% ore is 50% cobblestone, 25% gravel, 5% dirt
    ----Nether Veins----
    40% ore is 50% netherrack 10% soul sand
*/


//1.15/1.16-Style veins
//Common non-mineral
//Ore-rich (60% ore)
Excavator.addMineral("Bituminous Coal", 25, 0.05, ["cobblestone", "gravel", "dirt", "oreCoal", "dustSulfur"], [0.41666666666666, 0.2083333333333333333, 0.041666666666666, 0.85, 0.15], [0], false);
//Stones
Excavator.addMineral("Silt", 25, 0.05, ["blockClay", "sand", "gravel", "mud"], [0.4, 0.3, 0.2, 0.1], [0], false);
Excavator.addMineral("Igneous Rock", 20, 0.05, ["stoneGranite", "stoneAndesite", "stoneDiorite", "obsidian"], [0.3, 0.3, 0.3, 0.1], [0], false);
Excavator.addMineral("Sedimentary Rock", 20, 0.05, ["stoneDolomite", "stoneLimestone", "stoneSiltstone"], [0.4, 0.4, 0.2], [0], false);
//Minerals
//Common
//Ore-rich (60% ore)
Excavator.addMineral("Pentlandite", 20, 0.05, ["cobblestone", "gravel", "dirt", "oreIron", "oreNickel", "dustSulfur"], [0.41666666666666, 0.2083333333333333333, 0.041666666666666, 0.35, 0.35, 0.3], [0], false);
Excavator.addMineral("Chalcopyrite", 30, 0.05, ["cobblestone", "gravel", "dirt", "oreIron", "oreCopper", "dustSulfur"], [0.41666666666666, 0.2083333333333333333, 0.041666666666666, 0.35, 0.35, 0.3], [0], false);
Excavator.addMineral("Laterite", 20, 0.05, ["cobblestone", "gravel", "dirt", "oreBauxite", "oreIron", "oreIlmenite"], [0.41666666666666, 0.2083333333333333333, 0.041666666666666, 0.775, 0.2, 0.025], [0], false);
//Medium (40% ore)
Excavator.addMineral("Banded Iron", 25, 0.1, ["cobblestone", "gravel", "dirt", "oreIron"], [1.0, 0.375, 0.125, 1.0], [0], false);
Excavator.addMineral("Auricupride", 15, 0.1, ["cobblestone", "gravel", "dirt", "oreCopper", "oreGold"], [1.0, 0.375, 0.125, 0.75, 0.25], [0], false);
Excavator.addMineral("Galena", 20, 0.05, ["cobblestone", "gravel", "dirt", "oreLead", "dustSulfur", "oreSilver"], [1.0, 0.375, 0.125, 0.4, 0.4, 0.2], [0], false);
Excavator.addMineral("Cinnabar", 15, 0.1, ["cobblestone", "gravel", "dirt", "oreRedstone", "dustSulfur", "oreCinnabar"], [1.0, 0.375, 0.125, 0.32, 0.04, 0.04], [0], false);
Excavator.addMineral("Cassiterite", 15, 0.05, ["cobblestone", "gravel", "dirt", "oreTin"], [1.0, 0.375, 0.125, 1.0], [0], false);
//Rare
//Medium (40% ore)
Excavator.addMineral("Uraninite", 10, 0.15, ["cobblestone", "gravel", "dirt", "oreUranium", "oreLead", "oreSilver"], [1.0, 0.375, 0.125, 0.7, 0.2, 0.1], [0], false);
Excavator.addMineral("Beryl", 5, 0.2, ["cobblestone", "gravel", "dirt", "oreEmerald"], [1.0, 0.375, 0.125, 1.0], [0], false);
Excavator.addMineral("Wolframite", 5, 0.1, ["cobblestone", "gravel", "dirt", "oreIron", "oreTungsten"], [1.0, 0.375, 0.125, 0.5, 0.5], [0], false);
Excavator.addMineral("Kimberlite", 5, 0.2, ["cobblestone", "gravel", "dirt", "oreDiamond"], [1.0, 0.375, 0.125, 1.0], [0], false);
Excavator.addMineral("Lapis", 10, 0.1, ["cobblestone", "gravel", "dirt", "oreIron", "oreLapis", "dustSulfur"], [1.0, 0.375, 0.125, 0.7, 0.25, 0.05], [0], false);
//Sparse (20% ore)
Excavator.addMineral("Cooperite", 5, 0.2, ["cobblestone", "gravel", "dirt", "oreNickel", "orePlatinum", "oreIridium"], [2.5, 1.25, 0.25, 0.7, 0.2, 0.1], [0], false);
Excavator.addMineral("Ilmenite", 5, 0.2, ["cobblestone", "gravel", "dirt", "oreIlmenite", "oreZirconium", "oreIron"], [2.5, 1.25, 0.25, 0.60, 0.25, 0.15], [0], false);
//Nether
//Medium (40% ore)
Excavator.addMineral("Mephitic Quartizite", 20, 0.2, ["netherrack", "soulsand", "oreQuartz", "dustSulfur", "oreNetherGold"], [1.25, 0.25, 0.6, 0.2, 0.2], [-1], false);
Excavator.addMineral("Fluoritic Quartzite", 15, 0.4, ["netherrack", "soulsand", "oreQuartz", "oreFluorite", "oreNetherGold"], [1.25, 0.25, 0.6, 0.3, 0.1], [-1], false);
Excavator.addMineral("Cinnabaric Quartzite", 10, 0.4, ["netherrack", "soulsand", "oreQuartz", "oreNetherCinnabar", "oreNetherGold"], [1.25, 0.25, 0.6, 0.3, 0.1], [-1], false);
