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


//Crushed blocks
create_block_sound("crushed_dolomite", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("calcined_crushed_dolomite", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("crushed_limestone", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 0);
create_block_sound("crushed_marble", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 0);
create_block_sound("calcined_crushed_marble", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);

//Ices
create_block_transparent("oxygen_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("nitrogen_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("carbon_dioxide_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("ammonia_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("methane_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);
create_block_transparent("ethene_ice", <blockmaterial:ice>, 0.5, 0.5, "pickaxe", <soundtype:glass>, 0);

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
