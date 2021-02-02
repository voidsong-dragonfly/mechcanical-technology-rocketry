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



//Oil processing items (Petroleum Coke & said dust + injection molds)
createItem("petroleum_coke").register();
createItem("petroleum_coke_dust").register();
createItem("injection_mold_hdpe_rod").register();
createItem("injection_mold_hdpe_sheet").register();

//Charcoal processing items
createItem("charcoal_precursor").register();

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

//Fission reactor pieces
var fresh_fuel_bundle = createItem("fresh_fuel_bundle");
fresh_fuel_bundle.setMaxStackSize(9);
fresh_fuel_bundle.register();
var spent_fuel_bundle = createItem("spent_fuel_bundle");
spent_fuel_bundle.setMaxStackSize(9);
spent_fuel_bundle.register();
var depleted_fuel_bundle = createItem("depleted_fuel_bundle");
depleted_fuel_bundle.setMaxStackSize(9);
depleted_fuel_bundle.register();
var deformed_fuel_bundle = createItem("deformed_fuel_bundle");
deformed_fuel_bundle.setMaxStackSize(9);
deformed_fuel_bundle.register();
var control_rod_bundle = createItem("control_rod_bundle");
control_rod_bundle.setMaxStackSize(1);
control_rod_bundle.register();
createItem("uranium_fuel_pellet").register();

//Rocket pieces
createItem("rocket_engine_bell").register();
createItem("advanced_rocket_engine_bell").register();
createItem("titanium_compressor").register();
createItem("titanium_compressor_blade").register();
createItem("fuel_tank_shell").register();
createItem("pressurized_helium_tank").register();
createItem("catalytic_turbopump").register();
createItem("turbopump").register();
createItem("collection_array").register();
createItem("mirror_assembly").register();

//Superconductor items
createItem("unfilled_superconductor_cable").register();

//Lenses
createItem("glass_lens").register();
createItem("lapis_lens").register();
createItem("emerald_lens").register();
createItem("ender_pearl_lens").register();
createItem("ruby_lens").register();
createItem("diamond_lens").register();

//Miscellaneous small parts
createItem("induction_tablet").register();
createItem("reaction_wheel").register();
createItem("small_battery_hull").register();
createItem("supercapacitor_hull").register();
createItem("supercapacitor").register();

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

