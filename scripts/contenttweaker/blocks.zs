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

//Plascrete for cleanroom
create_block("plascrete", <blockmaterial:rock>, 5.0, 2000.0, "pickaxe", 2);

//Barrel shell blocks
create_block_transparent("metal_barrel_shell", <blockmaterial:iron>, 5.0, 20.0, "pickaxe", <soundtype:metal>, 0);
create_block_transparent("steel_barrel_shell", <blockmaterial:iron>, 5.0, 20.0, "pickaxe", <soundtype:metal>, 0);

//Fission reactor pieces
create_block("fission_reactor_calandria_casing_shell", <blockmaterial:iron>, 8.0, 20.0, "pickaxe", 2);
create_block("fission_reactor_calandria_casing", <blockmaterial:iron>, 8.0, 100.0, "pickaxe", 2);
create_block("fission_reactor_fuel_rod_assembly_pipe_connector", <blockmaterial:iron>, 8.0, 20.0, "pickaxe", 2);
create_block("zirconium_niobium_frame", <blockmaterial:iron>, 8.0, 16.0, "pickaxe", 2);

//Fusion reactor pieces
create_block("inner_fusion_casing", <blockmaterial:iron>, 12.0, 100.0, "pickaxe", 2);
create_block("outer_fusion_casing", <blockmaterial:iron>, 12.0, 100.0, "pickaxe", 2);
create_block("fusion_coil", <blockmaterial:iron>, 12.0, 100.0, "pickaxe", 2);

//Warp Core Pieces
create_block("warp_ring_engineering_block", <blockmaterial:iron>, 16.0, 400.0, "pickaxe", 2);
create_block("warp_core_engineering_block", <blockmaterial:iron>, 16.0, 400.0, "pickaxe", 2);

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
