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



//Format is [name, basic parts, wire, sheet, mechanical component, gear, scaffolding panel, small pipe] or [name, basic parts, hot ingot, wire, sheet, mechanical component, gear, scaffolding panel, small pipe, hardness, resistance, level]
/*
---- Colors ----
HCS - A6A6AA
UHCS - 707070
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
Tungsten - 5b5b5c
Silver - d0dce4
Indium - 433253
Lead - 404453
Silver-Indium - 9e90ab
Nickel - c2c7b6
Tin - CDD5D8
Titanium - CCC8FA
Iridium - DEDCCE
Copper - b27255
Aluminium - b3babd
Iron - 83766d
Gold - facd40
Electrum - f3b74a
Constantan - ef876c
Bronze - b88c5d
Lithium - 
Uranium (standard) - 585858
Uranium (3.5% enriched) - 576258
Uranium (depleted) - 363636
Uranium (90% enriched) - [Standard IE tex]
*/
//Gems
createItem("fluorite").register();
//New nonmetal dusts - salts & others
createItem("magnesium_chloride").register();
createItem("lithium_chloride").register();
createItem("calcium_chloride").register();
createItem("charcoal_dust").register();
createItem("stone_dust").register();
createItem("calcium_dust").register();
createItem("quartz_dust").register();
createItem("emerald_dust").register();
createItem("fluorite_dust").register();
//New metal dusts
createItem("magnesium_dust").register();
createItem("cobalt_dust").register();
createItem("indium_dust").register();
createItem("gallium_dust").register();
//New Materials
create_metal_material_block("high_carbon_steel", true, true, true, true, true, true, false, 5.0, 10.0, 0);
create_metal_material_block("maraging_steel", true, true, true, true, true, true, false, 7.5, 15.0, 0);
create_metal_material("platinum", true, true, true, false, false, false, false);
create_metal_material_block("tungstensteel", true, false, false, false, false, true, true, 10.0, 100.0, 3);
create_metal_material("niobium", true, false, false, false, false, false, false);
create_metal_material("niobium_titanium", true, true, false, false, false, false, false);
create_metal_material("zirconium", true, false, false, false, false, false, false);
create_metal_material("silver_indium", true, false, false, false, false, false, false);
create_metal_material("zirconium_niobium", true, false, false, false, false, true, true);
create_metal_material_block("tungsten", true, true, false, false, false, false, false, 10.0, 100.0, 3);
//Material additions
create_metal_material("lead", false, false, true, false, false, false, false);
create_metal_material("silver", false, true, false, false, false, false, false);
create_metal_material("aluminium", false, false, false, false, false, true, false);
create_metal_material("steel", false, false, false, false, false, true, false);
create_metal_material("titanium_aluminide", false, false, false, false, false, true, false);
create_metal_material("titanium", false, false, false, false, false, false, true);
