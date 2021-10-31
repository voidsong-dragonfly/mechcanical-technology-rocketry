#loader contenttweaker
//Import
import mods.contenttweaker.VanillaFactory.createFluid;
import mods.contenttweaker.VanillaFactory.createItem;
import mods.contenttweaker.VanillaFactory.createBlock;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.Color;
import scripts.contenttweaker.contenttweaker_functions.create_fluid;
import scripts.contenttweaker.contenttweaker_functions.create_solid_fluid;
import scripts.contenttweaker.contenttweaker_functions.create_molten_fluid;
import scripts.contenttweaker.contenttweaker_functions.create_gas;
import scripts.contenttweaker.contenttweaker_functions.create_block;
import scripts.contenttweaker.contenttweaker_functions.create_block_sound;
import scripts.contenttweaker.contenttweaker_functions.create_block_transparent;



//Any needed gasses due to mekanism being a pain and not bucketing _any_ of their stuff
create_gas("air", "C1E6FF");
create_gas("oxynitrogenmix", "8F94B9");
create_gas("fluorine", "CEBD89");
create_gas("deuterium", "FF3232");
create_gas("tritium", "64FF70");
create_gas("helium", "E3FFFE");
create_gas("helium3", "E3FFFE");

//Cryogenic Distillation liquids and gas liquids
create_fluid("liquid_air", "8FD0FF", 58, 870, 250);
create_fluid("liquid_nitrogen", "D1D9FF", 77, 750, 250);
create_fluid("liquid_oxygen", "61CFFE", 90, 1140, 250);
create_fluid("liquid_hydrogen", "D2B6B6", 20, 70, 250);
create_fluid("liquid_methane", "E6E6FF", 90, 1140, 250);

//Sulfur processing
create_gas("hydrogensulfide", "F9F0D8");
create_gas("sulfurdioxide", "A99D90");
create_gas("sulfurtrioxide", "CE6C6C");
create_fluid("sulfuric_acid", "82802B", 300, 1000, 1000);
create_fluid("dilutedsulfuricacid", "755C27", 300, 1000, 1000);
create_fluid("hydrofluoricacid", "689B9A", 300, 1300, 1000);

//Hydrazine
create_gas("ammonia", "B3CDE2");
create_fluid("hydrogenperoxide", "DBF1FF", 300, 1540, 1260);
create_fluid("hydrazine", "B3C4E2", 300, 1020, 1000);

//Oil Processing fluids
//Oil is special to make it look like IP oil
var desulfurisedoil = createFluid("desulfurisedoil", Color.fromHex("FFFFFF"));
desulfurisedoil.temperature = 300;
desulfurisedoil.density = 1000;
desulfurisedoil.viscosity = 2250;
desulfurisedoil.stillLocation = "contenttweaker:fluids/oil_still";
desulfurisedoil.flowingLocation = "contenttweaker:fluids/oil_flow";
desulfurisedoil.colorize = false;
desulfurisedoil.register();
var hydrotreatedoil = createFluid("hydrotreatedoil", Color.fromHex("FFFFFF"));
hydrotreatedoil.temperature = 300;
hydrotreatedoil.density = 1000;
hydrotreatedoil.viscosity = 2250;
hydrotreatedoil.stillLocation = "contenttweaker:fluids/oil_still";
hydrotreatedoil.flowingLocation = "contenttweaker:fluids/oil_flow";
hydrotreatedoil.colorize = false;
hydrotreatedoil.register();
create_fluid("naphtha", "FCC1B8", 300, 750, 750);
create_fluid("kerosene", "FFF4D1", 300, 810, 750);
create_fluid("hydrotreatedkerosene", "FFF4D1", 300, 810, 750);
create_fluid("lowsulfurkerosene", "FFF4D1", 300, 810, 750);
create_fluid("rp1", "EB2045", 300, 850, 750);

//Gas processing fluids
create_gas("naturalgas", "FFFFFF");
create_gas("hydrotreatedgas", "FFFFFF");
create_gas("refinerygas", "E6E6FF");
create_gas("methane", "E6E6FF");
create_gas("ethylene", "EACCF9");

//Cracking fluids
create_fluid("crackednaphtha", "FCC1B8", 300, 750, 750);
create_gas("crackedethene", "EACCF9");
create_gas("crackedmethane", "E6E6FF");

//Other fluid
create_solid_fluid("polyethene", "FFFFFF", 400, 800, 2250);

//Salt Solutions
create_fluid("magnesiumchloridesolution", "A8953E", 300, 1000, 1000);
create_fluid("lithiumchloridesolution", "A8953E", 300, 1000, 1000);

//Molten Magnesium, Lithium, and Molten Magnesium
create_molten_fluid("moltenlithium", "D9E9ED", 520, 930, 10000);
create_molten_fluid("moltenmagnesiumchloride", "807A79", 2300, 800, 10000);
create_molten_fluid("moltenlithiumchloride", "847F68", 880, 2000, 10000);

//Reactor fluids 7079E0
create_gas("hydrogendeuteride", "FE9393");
create_fluid("semiheavywater", "374399", 300, 1050, 1000);
create_fluid("superheatedwater", "609EED", 1500, 1000, 1000);
create_fluid("heat", "EC422E", 1000000, 1000, 1000);

//Uranium enrichment fluids
create_fluid("uraniumhexafluoride_000", "F1EDDA", 300, 5030, 1000);
create_fluid("uraniumhexafluoride_007", "F1EDDA", 300, 5030, 1000);
create_fluid("uraniumhexafluoride_014", "F1EDDA", 300, 5030, 1000);
create_fluid("uraniumhexafluoride_021", "F1EDDA", 300, 5030, 1000);
create_fluid("uraniumhexafluoride_028", "F1EDDA", 300, 5030, 1000);
create_fluid("uraniumhexafluoride_035", "F1EDDA", 300, 5030, 1000);

//Pahoehoe lava for heat exchanger output
create_molten_fluid("pahoehoelava", "7b4e32", 1000, 3500, 9000);

//Gas giant mining gasses
create_gas("precipitategas", "7ebad1");

//Ore processing
//Mercury
create_solid_fluid("mercury", "6B6B6B", 300, 13500, 1000);
//Aluminium processing fluids
create_fluid("sodiumhydroxidesolution", "4A5CF5", 300, 3000, 7800);
create_fluid("impuresodiumaluminatesolution", "1A1A20", 300, 3100, 7800);
create_fluid("sodiumaluminatesolution", "1A1A20", 300, 2000, 7800);
create_molten_fluid("moltencryolite", "ECCEDB", 1350, 2950, 10000);
create_molten_fluid("moltencryolitesolution", "ECCEDB", 1350, 3050, 10000);
//Uranium processing fluids
create_fluid("uraniumsulfatesolution", "6E6D31", 300, 2000, 1000);
create_fluid("uraniumtailingssolution", "1E221C", 300, 2000, 1000);
//Copper processing fluids
create_fluid("coppersulfatesolution", "6E6D31", 300, 2000, 1000);
create_fluid("coppersulfatesolutionresidue", "6E6D31", 300, 2000, 1000);
//Nickel processing fluids
create_fluid("nickelsulfatesolution", "6E6D31", 300, 2000, 1000);
create_fluid("nickelsulfatesolutionresidue", "6E6D31", 300, 2000, 1000);
//Tin processing fluids
create_fluid("tinsulfatesolution", "6E6D31", 300, 2000, 1000);
//Titanium processing
create_gas("titaniumtetrachloride", "E7EBC8");

//Regolith processing
//Partially processed
create_molten_fluid("moltenlowlandvoltaileregolith", "717171", 1750, 3200, 10000);
create_molten_fluid("moltenlowlandvoltailemetals", "717171", 1750, 3200, 10000);
create_molten_fluid("moltenhighlandvoltaileregolith", "a5a5a5", 1750, 2800, 10000);
create_molten_fluid("moltenhighlandvoltailemetals", "a5a5a5", 1750, 2800, 10000);
create_molten_fluid("moltenlowlandironregolith", "856954", 1750, 3700, 10000);
create_molten_fluid("moltenlowlandironmetals", "856954", 1750, 3700, 10000);
create_molten_fluid("moltenhighlandironregolith", "aa7a56", 1750, 3100, 10000);
create_molten_fluid("moltenhighlandironmetals", "aa7a56", 1750, 3100, 10000);
create_molten_fluid("moltenlowlandmetalregolith", "7a7a7a", 1750, 3100, 10000);
create_molten_fluid("moltenlowlandmetalmetals", "7a7a7a", 1750, 3100, 10000);
create_molten_fluid("moltenhighlandmetalregolith", "9c9c9c", 1750, 2700, 10000);
create_molten_fluid("moltenhighlandmetalmetals", "9c9c9c", 1750, 2700, 10000);
//End products
create_molten_fluid("molteniron", "989898", 1810, 6980, 10000);
create_molten_fluid("moltenmagnesium", "AB9F9E", 930, 1580, 10000);
create_molten_fluid("moltenaluminium", "899596", 940, 2375, 10000);
create_molten_fluid("moltentitanium", "CCC8FA", 1940, 4110, 10000);
create_molten_fluid("moltensilicon", "070707", 1680, 2570, 10000);
create_molten_fluid("moltenslag", "725E55", 1800, 2600, 10000);
create_molten_fluid("moltensulfur", "B08D25", 390, 1920, 10000);
