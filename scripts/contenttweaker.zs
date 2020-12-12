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
import scripts.contenttweaker_functions.create_metal_material;
import scripts.contenttweaker_functions.create_metal_material_block;
import scripts.contenttweaker_functions.create_fluid;
import scripts.contenttweaker_functions.create_solid_fluid;
import scripts.contenttweaker_functions.create_molten_fluid;
import scripts.contenttweaker_functions.create_gas;
import scripts.contenttweaker_functions.create_block;
import scripts.contenttweaker_functions.create_block_sound;
import scripts.contenttweaker_functions.create_block_transparent;

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

//Materials
//Format is [name, basic parts, hot ingot, wire, sheet, mechanical component, gear, scaffolding panel, small pipe] or [name, basic parts, hot ingot, wire, sheet, mechanical component, gear, scaffolding panel, small pipe, hardness, resistance, level]
/*
---- Colors ----
HCS - A6A6AA
Platinum - C9E3F9
Tungstensteel - 83919E
Niobium - BFBECC
Niobium-Titanium - DDDAFA
Zirconium - CACCAF
Zirconium-Niobium - 999A8D
Cobalt - 25436A
Maraging Steel - ACACA6
Magnesium - 928a89
Osmium - 94a4ab
Tungsten - bfc5c9
Silver - d0dce4
Nickel - c2c7b6
Tin - CDD5D8
Titanium - CCC8FA
Iridium - DEDCCE
Copper - b27255
Aluminium - b3babd
Iron - 83766d
Gold - facd40
Lithium - 
*/
//New Materials
create_metal_material_block("high_carbon_steel", true, true, true, true, true, true, true, false, 5.0, 10.0, 0);
create_metal_material_block("maraging_steel", true, true, true, true, true, true, true, false, 7.5, 15.0, 0);
create_metal_material("platinum", true, false, true, true, false, false, false, false);
create_metal_material_block("tungstensteel", true, true, false, false, false, false, true, true, 10.0, 100.0, 3);
create_metal_material("niobium", true, false, false, false, false, false, false, false);
create_metal_material("niobium_titanium", true, true, true, false, false, false, false, false);
create_metal_material("zirconium", true, false, false, false, false, false, false, false);
create_metal_material("zirconium_niobium", true, true, false, false, false, false, true, true);
//Material Additions
create_metal_material("iron", false, true, false, false, false, false, false, false);
create_metal_material("lead", false, false, false, true, false, false, false, false);
create_metal_material("silver", false, false, true, false, false, false, false, false);
create_metal_material("tungsten", false, true, true, false, false, false, false, false);
create_metal_material("aluminium", false, true, false, false, false, false, true, false);
create_metal_material("steel", false, true, false, false, false, false, true, false);
create_metal_material("titanium_aluminide", false, true, false, false, false, false, true, false);
create_metal_material("titanium", false, true, false, false, false, false, false, true);
create_metal_material("iridium", false, true, false, false, false, false, false, false);
create_metal_material("titanium_iridium", false, true, false, false, false, false, false, false);

//Asteroid mining dust blocks
//Nonmetals
create_block_sound("silicon_dioxide_dust_block", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("charcoal_dust_block", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("hop_graphite_dust_block", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("sulfur_dust_block", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("lithium_dust_block", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
//Metals
create_block_sound("magnesium_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("iron_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("nickel_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("cobalt_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("copper_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("aluminium_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("gold_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("silver_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("platinum_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("iridium_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("osmium_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("tungsten_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("tin_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("titanium_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("niobium_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);

//Salts
createItem("magnesium_chloride").register();
createItem("lithium_chloride").register();
createItem("calcium_chloride").register();

//Dusts and grits
createItem("charcoal_dust").register();
createItem("stone_dust").register();
createItem("magnesium_dust").register();
createItem("cobalt_dust").register();
createItem("calcium_dust").register();
createItem("gallium_dust").register();
createItem("quartz_dust").register();

//Crushed blocks
create_block_sound("crushed_dolomite", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("calcined_crushed_dolomite", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("crushed_limestone", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 0);
create_block_sound("crushed_marble", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 0);

//Ices
create_block_transparent("oxygen_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("nitrogen_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("carbon_dioxide_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("ammonia_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("methane_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("ethene_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);

//Nether Ores
create_block("nether_gold_ore", <blockmaterial:rock>, 3.0, 3.0, "pickaxe", 2);

//Oil processing items (Petroleum Coke & said dust + injection molds)
createItem("petroleum_coke").register();
createItem("petroleum_coke_dust").register();
createItem("injection_mold_hdpe_rod").register();
createItem("injection_mold_hdpe_sheet").register();

//Plascrete for cleanroom
create_block("plascrete", <blockmaterial:rock>, 5.0, 2000.0, "pickaxe", 2);

//Barrel shell blocks
create_block_transparent("metal_barrel_shell", <blockmaterial:iron>, 5.0, 20.0, "pickaxe", <soundtype:metal>, 0);
create_block_transparent("steel_barrel_shell", <blockmaterial:iron>, 5.0, 20.0, "pickaxe", <soundtype:metal>, 0);

//Circuit Pieces 
createItem("tin_solder").register();
createItem("smd_resistor").register();
createItem("treated_wood_circuit_board").register();
createItem("unprepared_plastic_circuit_board").register();
createItem("unprepared_platinum_backed_plastic_circuit_board").register();
createItem("plastic_circuit_board").register();
createItem("platinum_backed_plastic_circuit_board").register();
createItem("gallium_doped_silicon_boule").register();
createItem("lithium_doped_silicon_boule").register();
createItem("gallium_doped_silicon_wafer").register();
createItem("lithium_doped_silicon_wafer").register();
createItem("integrated_circuit_wafer").register();
createItem("integrated_circuit_plate").register();
createItem("cpu_wafer").register();
createItem("cpu_plate").register();
createItem("nand_memory_wafer").register();
createItem("nand_memory_plate").register();
createItem("ram_wafer").register();
createItem("ram_plate").register();
createItem("soc_wafer").register();
createItem("soc_plate").register();
createItem("gps_unit").register();
createItem("raw_processor_crystal").register();
createItem("engraved_processor_crystal").register();

//Uranium enrichment pieces
createItem("uranium_dioxide_dust_000").register();
createItem("uranium_dioxide_dust_035").register();
createItem("uranium_tetrafluoride_dust_007").register();
createItem("uranyl_fluoride_dust_000").register();
createItem("uranyl_fluoride_dust_035").register();
create_fluid("uranium_hexafluoride_000", "F1EDDA", 300, 5030, 1000);
create_fluid("uranium_hexafluoride_007", "F1EDDA", 300, 5030, 1000);
create_fluid("uranium_hexafluoride_014", "F1EDDA", 300, 5030, 1000);
create_fluid("uranium_hexafluoride_021", "F1EDDA", 300, 5030, 1000);
create_fluid("uranium_hexafluoride_028", "F1EDDA", 300, 5030, 1000);
create_fluid("uranium_hexafluoride_035", "F1EDDA", 300, 5030, 1000);

//Fission reactor pieces
var fresh_fuel_bundle = createItem("fresh_fuel_bundle");
fresh_fuel_bundle.register();
var spent_fuel_bundle = createItem("spent_fuel_bundle");
spent_fuel_bundle.setMaxStackSize(9);
spent_fuel_bundle.register();
var depleted_fuel_bundle = createItem("depleted_fuel_bundle");
depleted_fuel_bundle.setMaxStackSize(9);
depleted_fuel_bundle.register();
var control_rod_bundle = createItem("control_rod_bundle");
control_rod_bundle.setMaxStackSize(1);
control_rod_bundle.register();
createItem("uranium_fuel_pellet").register();
create_block("fission_reactor_calandria_casing_shell", <blockmaterial:iron>, 8.0, 20.0, "pickaxe", 2);
create_block("fission_reactor_calandria_casing", <blockmaterial:iron>, 8.0, 100.0, "pickaxe", 2);
create_block("fission_reactor_fuel_rod_assembly_pipe_connector", <blockmaterial:iron>, 8.0, 20.0, "pickaxe", 2);
create_block("zirconium_niobium_frame", <blockmaterial:iron>, 8.0, 16.0, "pickaxe", 2);

//Fusion reactor pieces
create_block("inner_fusion_casing", <blockmaterial:iron>, 12.0, 100.0, "pickaxe", 2);
create_block("outer_fusion_casing", <blockmaterial:iron>, 12.0, 100.0, "pickaxe", 2);
create_block("fusion_coil", <blockmaterial:iron>, 12.0, 100.0, "pickaxe", 2);

//Rocket pieces
createItem("rocket_engine_bell").register();
createItem("advanced_rocket_engine_bell").register();
createItem("titanium_compressor").register();
createItem("titanium_compressor_blade").register();
createItem("fuel_tank_shell").register();
createItem("pressurized_helium_tank").register();
createItem("turbopump").register();
createItem("collection_array").register();
createItem("mirror_assembly").register();

//Fusion reactor fluids
create_fluid("superheatedwater", "609EED", 1500, 1000, 1000);
create_fluid("heat", "EC422E", 1000000, 1000, 1000);

//Superconductor items
createItem("unfilled_superconductor_cable").register();

//Warp Core Pieces
create_block("warp_ring_engineering_block", <blockmaterial:iron>, 16.0, 400.0, "pickaxe", 2);
create_block("warp_core_engineering_block", <blockmaterial:iron>, 16.0, 400.0, "pickaxe", 2);

//Lenses
createItem("glass_lens").register();
createItem("lapis_lens").register();
createItem("emerald_lens").register();
createItem("ender_pearl_lens").register();
createItem("ruby_lens").register();
createItem("diamond_lens").register();

//Induction Tablet
createItem("induction_tablet").register();

//Reaction Wheel
createItem("reaction_wheel").register();

//Small Battery Hull
createItem("small_battery_hull").register();

//Molds & Dies
createItem("ingot_mold").register();
createItem("small_pipe_die").register();
createItem("pipe_die").register();
createItem("barrel_die").register();
createItem("rod_die").register();
createItem("wire_die").register();
createItem("scaffolding_panel_die").register();
createItem("bell_die").register();

//Impure Refined Obsidian Dust and Refined Glowstone Dust
createItem("impure_refined_obsidian_dust").register();
createItem("impure_refined_glowstone_dust").register();
createItem("refined_glowstone_dust").register();

//Ore Processing fluids, items, and blocks
//Dirty Water
var dirtywater = createFluid("dirtywater", Color.fromHex("343574"));
dirtywater.register();

//Cinnabar
createItem("cinnabar_dust").register();
var cinnabar_ore = createBlock("cinnabar_ore", <blockmaterial:rock>);
cinnabar_ore.setBlockHardness(3.0);
cinnabar_ore.setBlockResistance(3.0);
cinnabar_ore.setToolLevel(2);
cinnabar_ore.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(<item:contenttweaker:cinnabar_dust> * 2);
    drops.add(<item:contenttweaker:cinnabar_dust> % 50);
    return;
});
cinnabar_ore.register();
create_solid_fluid("mercury", "6B6B6B", 300, 13500, 1000);


//Emerald Dust
createItem("emerald_dust").register();

//Aluminium processing blocks
create_block("cryolite", <blockmaterial:rock>, 3.0, 3.0, "pickaxe", 2);
create_block_sound("red_mud_sludge", <blockmaterial:sand>, 0.8, 0.8, "shovel", <soundtype:ground>, 0);
create_block_sound("calcined_red_mud", <blockmaterial:sand>, 0.75, 0.8, "shovel", <soundtype:sand>, 0);
create_block_sound("spent_red_mud", <blockmaterial:sand>, 0.75, 0.8, "shovel", <soundtype:sand>, 0);
//Aluminium processing items
createItem("washed_bauxite_ore_dust").register();
createItem("alumina_dust").register();
createItem("aluminium_hydroxide").register();
//Aluminium processing fluids
create_fluid("sodiumhydroxidesolution", "4A5CF5", 300, 3000, 7800);
create_fluid("impuresodiumaluminatesolution", "1A1A20", 300, 3100, 7800);
create_fluid("sodiumaluminatesolution", "1A1A20", 300, 2000, 7800);
create_molten_fluid("moltencryolite", "ECCEDB", 1350, 2950, 10000);
create_molten_fluid("moltencryolitesolution", "ECCEDB", 1350, 3050, 10000);
create_molten_fluid("moltenaluminium", "899596", 940, 2375, 10000);

//Uranium processing blocks
create_block_sound("uranium_tailings", <blockmaterial:sand>, 0.75, 0.8, "shovel", <soundtype:ground>, 0);
//Uranium processing items
createItem("washed_uranium_ore_dust").register();
createItem("ammonium_diuranate").register();
createItem("yellowcake").register();
createItem("yellowcake_agglomerate").register();
createItem("fine_yellowcake").register();
//Uranium processing fluids
create_fluid("uraniumsulfatesolution", "6E6D31", 300, 2000, 1000);
create_fluid("uraniumtailingssolution", "1E221C", 300, 2000, 1000);

//Iron processing items
createItem("washed_iron_ore_dust").register();
//Iron processing fluids
create_molten_fluid("moltencrudeiron", "BE8972", 1800, 6900, 10000);
create_molten_fluid("moltenhighcarbonsteel", "C79C5A", 2000, 8050, 10000);
create_molten_fluid("moltensteel", "CB8A44", 2000, 7750, 10000);
create_molten_fluid("moltenslag", "725E55", 1800, 2600, 10000);

//Tungsten processing items
createItem("washed_tungsten_ore_dust").register();
createItem("hydrated_tungsten_trioxide").register();
createItem("tungsten_trioxide").register();

//Copper processing items
createItem("washed_copper_ore_dust").register();
createItem("copper_derived_anode_slime").register();
//Copper processing fluids
create_fluid("coppersulfatesolution", "6E6D31", 300, 2000, 1000);

//Nickel processing items
createItem("washed_nickel_ore_dust").register();
createItem("nickel_matte_ingot").register();
createItem("nickel_derived_anode_slime").register();
//Nickel processing fluids
create_fluid("nickelsulfatesolution", "6E6D31", 300, 2000, 1000);
create_molten_fluid("moltennickelmatte", "948E7F", 1800, 8900, 10000);

//Tin processing items
createItem("washed_tin_ore_dust").register();
createItem("impure_tin_ingot").register();
//Tin processing fluids
create_fluid("tinsulfatesolution", "6E6D31", 300, 2000, 1000);
create_molten_fluid("impuremoltentin", "F2E9E0", 1800, 7000, 10000);

//Lead processing items
createItem("washed_lead_ore_dust").register();
createItem("lead_sinter").register();
//Lead processing fluids
create_molten_fluid("moltenlead", "404046", 1800, 10600, 10000);
create_molten_fluid("moltensilver", "95A2A7", 1200, 9320, 10000);

//Titanium processing items
createItem("washed_ilmenite_ore_dust").register();
createItem("rutile_dust").register();

//Platinum processing blocks
create_block("platinum_ore", <blockmaterial:rock>, 3.0, 3.0, "pickaxe", 2);
//Platinum processing items
createItem("platinum_group_metal_dust_pt").register();
createItem("platinum_group_metal_dust_ir").register();
createItem("platinum_group_metal_dust_os").register();
createItem("platinum_group_metal_ingot").register();
createItem("platinum_group_metal_plate").register();
createItem("platinum_group_metal_sheet").register();
createItem("platinum_group_metal_wire").register();
createItem("platinum_group_metal_nugget").register();
createItem("platinum_group_metal_stick").register();
createItem("ammonium_chloride").register();
createItem("ammonium_chloroplatinate").register();
createItem("platinum_group_metal_leach_residue_pt").register();
createItem("platinum_group_metal_leach_residue_ir").register();
createItem("platinum_group_metal_leach_residue_os").register();
//Platinum processing fluids
create_fluid("nitricacidhydrochloridept", "D95E4C", 300, 1210, 1000);
create_fluid("nitricacidhydrochlorideir", "D95E4C", 300, 1210, 1000);
create_fluid("nitricacidhydrochlorideos", "D95E4C", 300, 1210, 1000);
create_fluid("nitricacidhydrochlorideptprocessed", "D95E4C", 300, 1210, 1000);
create_fluid("nitricacidhydrochlorideirprocessed", "D95E4C", 300, 1210, 1000);
create_fluid("nitricacidhydrochlorideosprocessed", "D95E4C", 300, 1210, 1000);

create_fluid("osacidicsolution", "82802B", 300, 1820, 1000);

//Gold processing items
createItem("impure_gold_riffle").register();
createItem("gold_riffle").register();
createItem("mercury_gold_amalgam").register();

//Silver processing items
createItem("impure_silver_riffle").register();
createItem("silver_riffle").register();
createItem("mercury_silver_amalgam").register();

//Niobium processing blocks
create_block("pyrochlore_ore", <blockmaterial:rock>, 3.0, 3.0, "pickaxe", 2);
//Niobium processing items
createItem("pyrochlore_ore_dust").register();
createItem("washed_pyrochlore_ore_dust").register();
createItem("niobium_ferroalloy_ingot").register();
createItem("niobium_pentoxide_dust").register();
createItem("impure_niobium_dust").register();

//Zirconium processing blocks
create_block("zircon_ore", <blockmaterial:rock>, 3.0, 3.0, "pickaxe", 2);
//Zirconium processing items
createItem("zircon_ore_dust").register();
createItem("washed_zircon_ore_dust").register();
