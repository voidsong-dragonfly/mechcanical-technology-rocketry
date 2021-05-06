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

//Crushed blocks
create_block_sound("crushed_dolomite", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("calcined_crushed_dolomite", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);
create_block_sound("crushed_limestone", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 0);
create_block_sound("crushed_marble", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 0);
create_block_sound("calcined_crushed_marble", <blockmaterial:sand>, 0.5, 0.8, "shovel", <soundtype:sand>, 1);

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
    drops.add(<item:contenttweaker:material_part:114> * 2);
    drops.add(<item:contenttweaker:material_part:114> % 50);
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
    drops.add(<item:contenttweaker:material_part:114> * 2);
    drops.add(<item:contenttweaker:material_part:114> % 50);
    return;
});
nether_cinnabar_ore.register();
var fluorite_ore = createBlock("nether_fluorite_ore", <blockmaterial:rock>);
fluorite_ore.setBlockHardness(3.0);
fluorite_ore.setBlockResistance(3.0);
fluorite_ore.setToolLevel(2);
fluorite_ore.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(<item:contenttweaker:material_part:109> * 2);
    drops.add(<item:contenttweaker:material_part:109> % 50);
    return;
});
fluorite_ore.register();

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
create_block_sound("red_mud_sludge", <blockmaterial:sand>, 0.8, 0.8, "shovel", <soundtype:ground>, 0);
create_block_sound("calcined_red_mud", <blockmaterial:sand>, 0.75, 0.8, "shovel", <soundtype:sand>, 0);
create_block_sound("spent_red_mud", <blockmaterial:sand>, 0.75, 0.8, "shovel", <soundtype:sand>, 0);
create_block_sound("uranium_tailings", <blockmaterial:sand>, 0.75, 0.8, "shovel", <soundtype:ground>, 0);
