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
import scripts.contenttweaker.contenttweaker_functions.create_metal_material;
import scripts.contenttweaker.contenttweaker_functions.create_metal_material_block;
import scripts.contenttweaker.contenttweaker_functions.create_fluid;
import scripts.contenttweaker.contenttweaker_functions.create_solid_fluid;
import scripts.contenttweaker.contenttweaker_functions.create_molten_fluid;
import scripts.contenttweaker.contenttweaker_functions.create_gas;
import scripts.contenttweaker.contenttweaker_functions.create_block;
import scripts.contenttweaker.contenttweaker_functions.create_block_sound;
import scripts.contenttweaker.contenttweaker_functions.create_block_transparent;



//Cryogenic Distillation liquids and gas liquids
create_fluid("liquidnitrogen", "D1D9FF", 77, 750, 250);
create_fluid("liquidair", "8FD0FF", 58, 870, 250);
create_gas("argon", "97D8DF");
create_gas("air", "C1E6FF");
create_gas("carbondioxide", "FFFFFF");
create_gas("heatedair", "FFCEB7");

//Gasses that need colored fluids
create_gas("helium3", "E3FFFE");
create_gas("helium", "E3FFFE");
create_gas("ammonia", "B3CDE2");
create_gas("nitrogengas", "DFE5FE");
create_gas("nitrogendioxide", "D95E4C");
create_gas("fluorine", "CEBD89");

//Nitric Acid Production
create_fluid("hydrogenperoxide", "DBF1FF", 300, 1540, 1260);
create_fluid("nitricacid", "FAFDE7", 300, 1510, 1000);
create_fluid("nitricacidhydrochloride", "D95E4C", 300, 1210, 1000);

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
create_gas("hydrogensulfide", "F9F0D8");
create_solid_fluid("polyethene", "FFFFFF", 400, 800, 2250);

//Gas processing fluids
create_gas("naturalgas", "FFFFFF");
create_gas("hydrotreatedgas", "FFFFFF");
create_gas("refinerygas", "E6E6FF");
create_gas("methane", "E6E6FF");

//Cracking fluids
create_fluid("crackednaphtha", "FCC1B8", 300, 750, 750);
create_gas("crackedethene", "EACCF9");
create_gas("crackedmethane", "E6E6FF");

//Molten Magnesium, Lithium, and Calcium Chloride, and Molten Magnesium
create_molten_fluid("moltenmagnesium", "AB9F9E", 930, 1580, 10000);
create_molten_fluid("moltencalcium", "D4CFB2", 1100, 1380, 10000);
create_molten_fluid("moltenmagnesiumchloride", "807A79", 2300, 800, 10000);
create_molten_fluid("moltenlithiumchloride", "847F68", 880, 2000, 10000);
create_molten_fluid("moltencalciumchloride", "9E9E9E", 1400, 2150, 10000);

//Salt Solutions
create_fluid("saltwater", "24419F", 300, 1000, 1000);
create_fluid("magnesiumchloridesolution", "A8953E", 300, 1000, 1000);
create_fluid("lithiumchloridesolution", "A8953E", 300, 1000, 1000);
create_fluid("richbrine", "D6CC91", 300, 1000, 1000);

//Fusion reactor fluids
create_fluid("superheatedwater", "609EED", 1500, 1000, 1000);
create_fluid("heat", "EC422E", 1000000, 1000, 1000);

//Uranium enrichment fluids
create_fluid("hydrofluoric_acid", "689B9A", 300, 1300, 1000);
create_fluid("uranium_hexafluoride_000", "F1EDDA", 300, 5030, 1000);
create_fluid("uranium_hexafluoride_007", "F1EDDA", 300, 5030, 1000);
create_fluid("uranium_hexafluoride_014", "F1EDDA", 300, 5030, 1000);
create_fluid("uranium_hexafluoride_021", "F1EDDA", 300, 5030, 1000);
create_fluid("uranium_hexafluoride_028", "F1EDDA", 300, 5030, 1000);
create_fluid("uranium_hexafluoride_035", "F1EDDA", 300, 5030, 1000);
