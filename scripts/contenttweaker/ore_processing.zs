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
var nether_cinnabar_ore = createBlock("nether_cinnabar_ore", <blockmaterial:rock>);
nether_cinnabar_ore.setBlockHardness(3.0);
nether_cinnabar_ore.setBlockResistance(3.0);
nether_cinnabar_ore.setToolLevel(2);
nether_cinnabar_ore.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(<item:contenttweaker:cinnabar_dust> * 2);
    drops.add(<item:contenttweaker:cinnabar_dust> % 50);
    return;
});
nether_cinnabar_ore.register();
create_solid_fluid("mercury", "6B6B6B", 300, 13500, 1000);

//Fluorite
var fluorite_ore = createBlock("fluorite_ore", <blockmaterial:rock>);
fluorite_ore.setBlockHardness(3.0);
fluorite_ore.setBlockResistance(3.0);
fluorite_ore.setToolLevel(2);
fluorite_ore.setDropHandler(function(drops, world, position, state, fortune) {
    drops.clear();
    drops.add(<item:contenttweaker:fluorite> * 2);
    drops.add(<item:contenttweaker:fluorite> % 50);
    return;
});
fluorite_ore.register();

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
