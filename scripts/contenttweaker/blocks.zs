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



//Fine blocks
create_block_sound("fine_gravel", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("fine_sand", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("fine_soul_sand", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("end_gravel", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);

//Crushed blocks
create_block_sound("crushed_dolomite", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("calcined_crushed_dolomite", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("crushed_limestone", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 0);
create_block_sound("crushed_marble", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 0);
create_block_sound("calcined_crushed_marble", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("crushed_basalt", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);

//Ores
create_block("cryolite_ore", <blockmaterial:rock>, 3.0, 3.0, "pickaxe", 2);
create_block("platinum_ore", <blockmaterial:rock>, 3.0, 3.0, "pickaxe", 2);
create_block("tungsten_ore", <blockmaterial:rock>, 3.0, 3.0, "pickaxe", 2);
create_block("zirconium_ore", <blockmaterial:rock>, 3.0, 3.0, "pickaxe", 2);
create_block("niobium_ore", <blockmaterial:rock>, 3.0, 3.0, "pickaxe", 2);
var cinnabar_ore = createBlock("cinnabar_ore", <blockmaterial:rock>);
cinnabar_ore.setBlockHardness(3.0);
cinnabar_ore.setBlockResistance(3.0);
cinnabar_ore.setToolLevel(2);
cinnabar_ore.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(<item:contenttweaker:material_part:132> * 2);
    drops.add(<item:contenttweaker:material_part:132> % 50);
    return;
});
cinnabar_ore.register();
create_block("nether_gold_ore", <blockmaterial:rock>, 3.0, 3.0, "pickaxe", 2);
var nether_cinnabar_ore = createBlock("nether_cinnabar_ore", <blockmaterial:rock>);
nether_cinnabar_ore.setBlockHardness(3.0);
nether_cinnabar_ore.setBlockResistance(3.0);
nether_cinnabar_ore.setToolLevel(2);
nether_cinnabar_ore.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(<item:contenttweaker:material_part:132> * 2);
    drops.add(<item:contenttweaker:material_part:132> % 50);
    return;
});
nether_cinnabar_ore.register();
var fluorite_ore = createBlock("nether_fluorite_ore", <blockmaterial:rock>);
fluorite_ore.setBlockHardness(3.0);
fluorite_ore.setBlockResistance(3.0);
fluorite_ore.setToolLevel(2);
fluorite_ore.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(<item:contenttweaker:material_part:128> * 2);
    drops.add(<item:contenttweaker:material_part:128> % 50);
    return;
});
fluorite_ore.register();
create_block("shattered_end_stone", <blockmaterial:rock>, 3.0, 3.0, "pickaxe", 4);

//Ices
create_block_transparent("oxygen_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("nitrogen_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("carbon_dioxide_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("ammonia_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("methane_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("ethene_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);

//Snows & planetary ices
create_block_transparent("tholinated_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("lightly_tholinated_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("sooty_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_sound("soot", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("sulfur_dioxide_snow", <blockmaterial:snow>, 0.5, 0.5, "shovel", <soundtype:snow>, 0);
create_block_sound("sulfur_snow", <blockmaterial:snow>, 0.5, 0.5, "shovel", <soundtype:snow>, 0);
create_block_sound("damaged_sulfur_snow", <blockmaterial:snow>, 0.5, 0.5, "shovel", <soundtype:snow>, 0);
create_block_sound("mixed_exotic_salts", <blockmaterial:snow>, 0.5, 0.5, "shovel", <soundtype:snow>, 0);
create_block_sound("mixed_exotic_clays", <blockmaterial:clay>, 0.5, 0.5, "shovel", <soundtype:ground>, 0);
//Regoliths
create_block_sound("icebound_regolith", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block("fresh_sulfated_mega_regolith", <blockmaterial:rock>, 2.0, 3.0, "pickaxe", 1);
create_block("sulfated_mega_regolith", <blockmaterial:rock>, 2.0, 3.0, "pickaxe", 1);
create_block("sulfated_mega_regolith_cobblestone", <blockmaterial:rock>, 2.0, 3.0, "pickaxe", 1);
create_block("sulfated_mega_regolith_gravel", <blockmaterial:rock>, 2.0, 3.0, "pickaxe", 1);
//Volatilic
//Highland
create_block_sound("fine_highland_regolith_volatiles", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("compacted_highland_regolith_volatiles", <blockmaterial:sand>, 0.7, 0.8, "shovel", <soundtype:sand>, 1);
create_block("mega_highland_regolith_volatiles", <blockmaterial:rock>, 2.0, 6.0, "pickaxe", 1);
create_block("mega_highland_regolith_volatiles_cobblestone", <blockmaterial:rock>, 1.75, 6.0, "pickaxe", 1);
//Lowland
create_block_sound("fine_lowland_regolith_volatiles", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("compacted_lowland_regolith_volatiles", <blockmaterial:sand>, 0.7, 0.8, "shovel", <soundtype:sand>, 1);
create_block("mega_lowland_regolith_volatiles", <blockmaterial:rock>, 2.0, 6.0, "pickaxe", 1);
create_block("mega_lowland_regolith_volatiles_cobblestone", <blockmaterial:rock>, 1.75, 6.0, "pickaxe", 1);
//Metallic
//Highland
create_block_sound("fine_highland_regolith_metals", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("compacted_highland_regolith_metals", <blockmaterial:sand>, 0.7, 0.8, "shovel", <soundtype:sand>, 1);
create_block("mega_highland_regolith_metals", <blockmaterial:rock>, 2.0, 6.0, "pickaxe", 1);
create_block("mega_highland_regolith_metals_cobblestone", <blockmaterial:rock>, 1.75, 6.0, "pickaxe", 1);
//Lowland
create_block_sound("fine_lowland_regolith_metals", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("compacted_lowland_regolith_metals", <blockmaterial:sand>, 0.7, 0.8, "shovel", <soundtype:sand>, 1);
create_block("mega_lowland_regolith_metals", <blockmaterial:rock>, 2.0, 6.0, "pickaxe", 1);
create_block("mega_lowland_regolith_metals_cobblestone", <blockmaterial:rock>, 1.75, 6.0, "pickaxe", 1);
//Oxidized
//Highland
create_block_sound("fine_highland_regolith_iron", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("compacted_highland_regolith_iron", <blockmaterial:sand>, 0.7, 0.8, "shovel", <soundtype:sand>, 1);
create_block("mega_highland_regolith_iron", <blockmaterial:rock>, 2.0, 6.0, "pickaxe", 1);
create_block("mega_highland_regolith_iron_cobblestone", <blockmaterial:rock>, 1.75, 6.0, "pickaxe", 1);
//Lowland
create_block_sound("fine_lowland_regolith_iron", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("compacted_lowland_regolith_iron", <blockmaterial:sand>, 0.7, 0.8, "shovel", <soundtype:sand>, 1);
create_block("mega_lowland_regolith_iron", <blockmaterial:rock>, 2.0, 6.0, "pickaxe", 1);
create_block("mega_lowland_regolith_iron_cobblestone", <blockmaterial:rock>, 1.75, 6.0, "pickaxe", 1);

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
create_block_sound("uranium_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("tungsten_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);
create_block_sound("titanium_dust_block", <blockmaterial:sand>, 0.75, 1.25, "shovel", <soundtype:sand>, 1);

//Crushed ore blocks
create_block_sound("crushed_iron_ore", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);
create_block_sound("crushed_gold_ore", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);
create_block_sound("crushed_copper_ore", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);
create_block_sound("crushed_bauxite_ore", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);
create_block_sound("crushed_lead_ore", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);
create_block_sound("crushed_silver_ore", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);
create_block_sound("crushed_nickel_ore", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);
create_block_sound("crushed_uranium_ore", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);
create_block_sound("crushed_tin_ore", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);
create_block_sound("crushed_platinum_ore", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);
create_block_sound("crushed_iridium_ore", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);
create_block_sound("crushed_zirconium_ore", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);
create_block_sound("crushed_niobium_ore", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);
create_block_sound("crushed_ilmenite_ore", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);
create_block_sound("crushed_tungsten_ore", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);

//Ore processing byproduct blocks
create_block_sound("crushed_ore_spoils", <blockmaterial:sand>, 0.6, 0.8, "shovel", <soundtype:ground>, 1);
create_block_sound("red_mud", <blockmaterial:sand>, 0.8, 0.8, "shovel", <soundtype:ground>, 0);
create_block_sound("spent_red_mud", <blockmaterial:sand>, 0.75, 0.8, "shovel", <soundtype:sand>, 0);
create_block_sound("uranium_tailings", <blockmaterial:sand>, 0.75, 0.8, "shovel", <soundtype:ground>, 0);

//Frames
create_block_transparent("zirconium_niobium_alloy_frame", <blockmaterial:iron>, 3.0, 3.0, "pickaxe", <soundtype:metal>, 0);
create_block_transparent("tungstensteel_frame", <blockmaterial:iron>, 3.0, 3.0, "pickaxe", <soundtype:metal>, 0);
create_block_transparent("titanium_iridium_alloy_frame", <blockmaterial:iron>, 3.0, 3.0, "pickaxe", <soundtype:metal>, 0);
//Plascrete
create_block("plastic_coated_rebar_concrete", <blockmaterial:rock>, 5.0, 750.0, "pickaxe", 2);
//Miscelaneous iron bits
create_block_transparent("metal_barrel_shell", <blockmaterial:iron>, 3.0, 3.0, "pickaxe", <soundtype:metal>, 0);
create_block_transparent("steel_barrel_shell", <blockmaterial:iron>, 3.0, 3.0, "pickaxe", <soundtype:metal>, 0);
//Bearings
create_block("lubricated_bearing", <blockmaterial:iron>, 3.0, 3.0, "pickaxe", 2);
create_block("rare_earths_magnetic_coil", <blockmaterial:iron>, 3.0, 3.0, "pickaxe", 2);
create_block("magnetic_bearing", <blockmaterial:iron>, 3.0, 3.0, "pickaxe", 2);
//Flywheel bits
create_block("basalt_fiber_flywheel_component", <blockmaterial:iron>, 4.0, 16.0, "pickaxe", 2);
create_block("carbon_fiber_flywheel_component", <blockmaterial:iron>, 4.0, 16.0, "pickaxe", 2);
//Fission reactor pieces
create_block("fission_reactor_calandria_casing", <blockmaterial:iron>, 8.0, 20.0, "pickaxe", 3);
create_block("fission_reactor_fuel_rod_assembly_pipe_connector", <blockmaterial:iron>, 8.0, 20.0, "pickaxe", 3);
//Fusion reactor pieces
create_block("superconductive_coil", <blockmaterial:iron>, 12.0, 100.0, "pickaxe", 4);
create_block("fusion_reactor_inner_casing", <blockmaterial:iron>, 12.0, 100.0, "pickaxe", 4);
create_block("fusion_reactor_outer_casing", <blockmaterial:iron>, 12.0, 100.0, "pickaxe", 4);
//Particle Accelerator & etc pieces
create_block("high_current_superconductive_coil", <blockmaterial:iron>, 12.0, 100.0, "pickaxe", 4);
create_block("particle_accelerator_casing", <blockmaterial:iron>, 12.0, 100.0, "pickaxe", 4);
create_block("particle_containment_casing", <blockmaterial:iron>, 12.0, 100.0, "pickaxe", 4);
create_block("beam_control_lens", <blockmaterial:iron>, 12.0, 100.0, "pickaxe", 4);
