//Import
import mods.modularmachinery.RecipeBuilder.newBuilder;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;

/*
    Crafting Recipes - 3x3 recipes for MM hatches & similar blocks
*/

//Hide unused Modular Machinery blocks
hide(<modulardiversity:blockjackhatch>);
hide(<modulardiversity:blockmekheatoutput>);
hide(<modulardiversity:blockdaylightdetector>);
hide(<modulardiversity:blockweatherdetector>);
removeAndHide(<modularmachinery:itemmodularium>);
removeAndHide(<modularmachinery:blockinputbus:0>);
removeAndHide(<modularmachinery:blockinputbus:2>);
removeAndHide(<modularmachinery:blockinputbus:3>);
removeAndHide(<modularmachinery:blockinputbus:4>);
removeAndHide(<modularmachinery:blockinputbus:5>);
removeAndHide(<modularmachinery:blockinputbus:6>);
removeAndHide(<modularmachinery:blockcasing:2>);
removeAndHide(<modularmachinery:blockcasing:3>);
removeAndHide(<modularmachinery:blockoutputbus:0>);
removeAndHide(<modularmachinery:blockoutputbus:2>);
removeAndHide(<modularmachinery:blockoutputbus:3>);
removeAndHide(<modularmachinery:blockoutputbus:4>);
removeAndHide(<modularmachinery:blockoutputbus:5>);
removeAndHide(<modularmachinery:blockoutputbus:6>);
removeAndHide(<modularmachinery:blockfluidinputhatch:0>);
removeAndHide(<modularmachinery:blockfluidinputhatch:3>);
removeAndHide(<modularmachinery:blockfluidinputhatch:4>);
removeAndHide(<modularmachinery:blockfluidinputhatch:5>);
removeAndHide(<modularmachinery:blockfluidinputhatch:6>);
removeAndHide(<modularmachinery:blockfluidinputhatch:7>);
removeAndHide(<modularmachinery:blockenergyinputhatch:0>);
removeAndHide(<modularmachinery:blockenergyinputhatch:1>);
removeAndHide(<modularmachinery:blockenergyinputhatch:3>);
removeAndHide(<modularmachinery:blockenergyinputhatch:4>);
removeAndHide(<modularmachinery:blockenergyinputhatch:5>);
removeAndHide(<modularmachinery:blockenergyinputhatch:6>);
removeAndHide(<modularmachinery:blockenergyinputhatch:7>);
removeAndHide(<modularmachinery:blockenergyoutputhatch:0>);
removeAndHide(<modularmachinery:blockenergyoutputhatch:1>);
removeAndHide(<modularmachinery:blockenergyoutputhatch:3>);
removeAndHide(<modularmachinery:blockenergyoutputhatch:4>);
removeAndHide(<modularmachinery:blockenergyoutputhatch:5>);
removeAndHide(<modularmachinery:blockenergyoutputhatch:6>);
removeAndHide(<modularmachinery:blockenergyoutputhatch:7>);

//Modular Machinery blocks
recipes.remove(<modularmachinery:blockinputbus:*>);
recipes.remove(<modularmachinery:blockoutputbus:*>);
recipes.remove(<modularmachinery:blockfluidinputhatch:*>);
recipes.remove(<modularmachinery:blockfluidoutputhatch:*>);
recipes.remove(<modularmachinery:blockenergyinputhatch:*>);
recipes.remove(<modularmachinery:blockenergyoutputhatch:*>);
recipes.remove(<modularmachinery:blockcasing:*>);
recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockinputbus:1>,
 [[<ore:sheetSteel>, null, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:scaffoldingSteel>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <engineersdecor:factory_hopper>, <ore:sheetSteel>]]);
recipes.addShaped(<modularmachinery:blockoutputbus:1>,
 [[<ore:sheetSteel>, <engineersdecor:factory_hopper>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:scaffoldingSteel>, <ore:sheetSteel>],
 [<ore:sheetSteel>, null, <ore:sheetSteel>]]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:2>,
 [[<ore:sheetSteel>, null, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:scaffoldingSteel>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <immersiveengineering:metal_device1:6>, <ore:sheetSteel>]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:2>,
 [[<ore:sheetSteel>, <immersiveengineering:metal_device1:6>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:scaffoldingSteel>, <ore:sheetSteel>],
 [<ore:sheetSteel>, null, <ore:sheetSteel>]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:2>,
 [[<ore:sheetSteel>, null, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:scaffoldingSteel>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <libvulpes:battery>, <ore:sheetSteel>]]);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:2>,
 [[<ore:sheetSteel>, <libvulpes:battery>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:scaffoldingSteel>, <ore:sheetSteel>],
 [<ore:sheetSteel>, null, <ore:sheetSteel>]]);
recipes.addShaped(<modularmachinery:blockcasing:1>,
 [[<ore:sheetSteel>, <libvulpes:productfan:6>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:scaffoldingSteel>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:circuitBasic>, <ore:sheetSteel>]]);
recipes.addShaped(<modularmachinery:blockcontroller>,
 [[<ore:sheetSteel>, <ore:circuitBasic>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:scaffoldingSteel>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:circuitBasic>, <ore:sheetSteel>]]);
recipes.addShaped(<modularmachinery:blockcasing:5>, 
 [[<ore:sheetSteel>, <ore:circuitUltimate>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:scaffoldingSteel>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:circuitUltimate>, <ore:sheetSteel>]]);
recipes.addShaped(<modulardiversity:blockmekheatinput>,
 [[<ore:sheetSteel>, <ore:ingotCopper>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:scaffoldingSteel>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:ingotCopper>, <ore:sheetSteel>]]);
recipes.addShaped(<modulardiversity:blockbiomedetector>,
 [[<ore:sheetSteel>, <ore:circuitBasic>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:scaffoldingSteel>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:fanSteel>, <ore:sheetSteel>]]);
recipes.addShapeless(<modularmachinery:blockfluidinputhatch:1>, [<modularmachinery:blockfluidinputhatch:2>]);
recipes.addShapeless(<modularmachinery:blockfluidoutputhatch:1>, [<modularmachinery:blockfluidoutputhatch:2>]);
 
 
/*
    Fluid Cracking
*/

var bitumen = newBuilder("bitumen", "coking_unit", 900);
bitumen.addMekanismHeatInput(0, 450, 550);
bitumen.addItemInput(<immersivepetroleum:material> * 64);
bitumen.addItemOutput(<contenttweaker:petroleum_coke> * 64);
bitumen.build();


/*
    Salt Processing - From brine to chlorine and molten salts
*/

//Drying
var magnesium_chloride = newBuilder("magnesium_chloride", "drying_bed", 9000);
magnesium_chloride.addFluidInput(<liquid:magnesiumchloridesolution> * 9000);
magnesium_chloride.addItemOutput(<contenttweaker:magnesium_chloride> * 90);
magnesium_chloride.build();
var lithium_chloride = newBuilder("lithium_chloride", "drying_bed", 9000);
lithium_chloride.addFluidInput(<liquid:lithiumchloridesolution> * 9000);
lithium_chloride.addItemOutput(<contenttweaker:lithium_chloride> * 90);
lithium_chloride.build();

//Salt Melting
var molten_magnesium_chloride = newBuilder("molten_magnesium_chloride", "melting_crucible", "600");
molten_magnesium_chloride.addMekanismHeatInput(0, 715, (1.0/0));
molten_magnesium_chloride.addItemInput(<contenttweaker:magnesium_chloride> * 9);
molten_magnesium_chloride.addFluidOutput(<liquid:moltenmagnesiumchloride> * 900);
molten_magnesium_chloride.build();
var molten_lithium_chloride = newBuilder("molten_lithium_chloride", "melting_crucible", "600");
molten_lithium_chloride.addMekanismHeatInput(0, 600, (1.0/0));
molten_lithium_chloride.addItemInput(<contenttweaker:lithium_chloride> * 9);
molten_lithium_chloride.addFluidOutput(<liquid:moltenlithiumchloride> * 900);
molten_lithium_chloride.build();
var molten_calcium_chloride = newBuilder("molten_calcium_chloride", "melting_crucible", "600");
molten_calcium_chloride.addMekanismHeatInput(0, 1000, (1.0/0));
molten_calcium_chloride.addItemInput(<contenttweaker:calcium_chloride> * 9);
molten_calcium_chloride.addFluidOutput(<liquid:moltencalciumchloride> * 900);
molten_calcium_chloride.build();

//Electrolytic separation
var water_electrolysis = newBuilder("water_electrolysis", "electrolytic_cell_battery", 100);
water_electrolysis.addEnergyPerTickInput("3840");
water_electrolysis.addFluidInput(<liquid:water> * 1600);
water_electrolysis.addFluidOutput(<liquid:liquidhydrogen> * 1600);
water_electrolysis.addFluidOutput(<liquid:liquidoxygen> * 800);
water_electrolysis.build();
var brine_electrolysis = newBuilder("brine_electrolysis", "electrolytic_cell_battery", 100);
brine_electrolysis.addEnergyPerTickInput("3840");
brine_electrolysis.addFluidInput(<liquid:brine> * 8000);
brine_electrolysis.addFluidOutput(<liquid:liquidhydrogen> * 800);
brine_electrolysis.addFluidOutput(<liquid:liquidchlorine> * 800);
brine_electrolysis.addFluidOutput(<liquid:sodiumhydroxidesolution> * 8000);
brine_electrolysis.build();
var molten_lithium_chloride_electrolysis = newBuilder("molten_lithium_chloride_electrolysis", "electrolytic_cell_battery", 100);
molten_lithium_chloride_electrolysis.addEnergyPerTickInput("3840");
molten_lithium_chloride_electrolysis.addFluidInput(<liquid:moltenlithiumchloride> * 1600);
molten_lithium_chloride_electrolysis.addFluidOutput(<liquid:liquidlithium> * 1600);
molten_lithium_chloride_electrolysis.addFluidOutput(<liquid:liquidchlorine> * 800);
molten_lithium_chloride_electrolysis.build();
var molten_magnesium_chloride_electrolysis = newBuilder("molten_magnesium_chloride_electrolysis", "electrolytic_cell_battery", 100);
molten_magnesium_chloride_electrolysis.addEnergyPerTickInput("3840");
molten_magnesium_chloride_electrolysis.addFluidInput(<liquid:moltenmagnesiumchloride> * 800);
molten_magnesium_chloride_electrolysis.addFluidOutput(<liquid:moltenmagnesium> * 800);
molten_magnesium_chloride_electrolysis.addFluidOutput(<liquid:liquidchlorine> * 800);
molten_magnesium_chloride_electrolysis.build();
var molten_calcium_chloride_electrolysis = newBuilder("molten_calcium_chloride_electrolysis", "electrolytic_cell_battery", 100);
molten_calcium_chloride_electrolysis.addEnergyPerTickInput("3840");
molten_calcium_chloride_electrolysis.addFluidInput(<liquid:moltencalciumchloride> * 800);
molten_calcium_chloride_electrolysis.addFluidOutput(<liquid:moltencalcium> * 800);
molten_calcium_chloride_electrolysis.addFluidOutput(<liquid:liquidchlorine> * 800);
molten_calcium_chloride_electrolysis.build();


/*
    Liquid Air Processing - Air collection, liquefaction
*/

//Air Collection
var air_collection = newBuilder("air_collection", "air_collection_funnel", 1);
air_collection.addFluidOutput(<liquid:air> * 2000);
air_collection.build();

//Air Liquefaction
var air_liquefaction = newBuilder("air_liquefaction", "gas_liquefaction_plant", 900);
air_liquefaction.addEnergyPerTickInput(768);
air_liquefaction.addFluidInput(<liquid:air> * 12000);
air_liquefaction.addFluidOutput(<liquid:liquidair> * 12000);
air_liquefaction.build();

//Nitrogen Liquefaction
var nitrogen_liquefaction = newBuilder("nitrogen_liquefaction", "gas_liquefaction_plant", 900);
nitrogen_liquefaction.addEnergyPerTickInput(768);
nitrogen_liquefaction.addFluidInput(<liquid:nitrogengas> * 12000);
nitrogen_liquefaction.addFluidOutput(<liquid:liquidnitrogen> * 12000);
nitrogen_liquefaction.build();


/*
    Circuit Crafting - From silicon boule to finished circuit
*/

//Wafers & SMD resistor
var integrated_circuit_wafer = newBuilder("integrated_circuit_wafer", "precision_laser_engraver", 300);
integrated_circuit_wafer.addItemInput(<contenttweaker:gallium_doped_silicon_wafer>);
integrated_circuit_wafer.addItemInput(<contenttweaker:glass_lens>).setChance(0);
integrated_circuit_wafer.addItemOutput(<contenttweaker:integrated_circuit_wafer>);
integrated_circuit_wafer.build();
var cpu_wafer = newBuilder("cpu_wafer", "precision_laser_engraver", 300);
cpu_wafer.addItemInput(<contenttweaker:gallium_doped_silicon_wafer>);
cpu_wafer.addItemInput(<contenttweaker:lapis_lens>).setChance(0);
cpu_wafer.addItemOutput(<contenttweaker:cpu_wafer>);
cpu_wafer.build();
var nand_memory_wafer = newBuilder("nand_memory_wafer", "precision_laser_engraver", 300);
nand_memory_wafer.addItemInput(<contenttweaker:gallium_doped_silicon_wafer>);
nand_memory_wafer.addItemInput(<contenttweaker:emerald_lens>).setChance(0);
nand_memory_wafer.addItemOutput(<contenttweaker:nand_memory_wafer>);
nand_memory_wafer.build();
var ram_wafer = newBuilder("ram_wafer", "precision_laser_engraver", 300);
ram_wafer.addItemInput(<contenttweaker:gallium_doped_silicon_wafer>);
ram_wafer.addItemInput(<contenttweaker:diamond_lens>).setChance(0);
ram_wafer.addItemOutput(<contenttweaker:ram_wafer>);
ram_wafer.build();
var integrated_circuit_wafer_lithium = newBuilder("integrated_circuit_wafer_lithium", "precision_laser_engraver", 300);
integrated_circuit_wafer_lithium.addItemInput(<contenttweaker:lithium_doped_silicon_wafer>);
integrated_circuit_wafer_lithium.addItemInput(<contenttweaker:glass_lens>).setChance(0);
integrated_circuit_wafer_lithium.addItemOutput(<contenttweaker:integrated_circuit_wafer>);
integrated_circuit_wafer_lithium.build();
var cpu_wafer_lithium = newBuilder("cpu_wafer_lithium", "precision_laser_engraver", 300);
cpu_wafer_lithium.addItemInput(<contenttweaker:lithium_doped_silicon_wafer>);
cpu_wafer_lithium.addItemInput(<contenttweaker:lapis_lens>).setChance(0);
cpu_wafer_lithium.addItemOutput(<contenttweaker:cpu_wafer>);
cpu_wafer_lithium.build();
var nand_memory_wafer_lithium = newBuilder("nand_memory_wafer_lithium", "precision_laser_engraver", 300);
nand_memory_wafer_lithium.addItemInput(<contenttweaker:lithium_doped_silicon_wafer>);
nand_memory_wafer_lithium.addItemInput(<contenttweaker:emerald_lens>).setChance(0);
nand_memory_wafer_lithium.addItemOutput(<contenttweaker:nand_memory_wafer>);
nand_memory_wafer_lithium.build();
var ram_wafer_lithium = newBuilder("ram_wafer_lithium", "precision_laser_engraver", 300);
ram_wafer_lithium.addItemInput(<contenttweaker:lithium_doped_silicon_wafer>);
ram_wafer_lithium.addItemInput(<contenttweaker:diamond_lens>).setChance(0);
ram_wafer_lithium.addItemOutput(<contenttweaker:ram_wafer>);
ram_wafer_lithium.build();
var soc_wafer = newBuilder("soc_wafer", "precision_laser_engraver", 450);
soc_wafer.addItemInput(<contenttweaker:lithium_doped_silicon_wafer>);
soc_wafer.addItemInput(<contenttweaker:ender_pearl_lens>).setChance(0);
soc_wafer.addItemOutput(<contenttweaker:soc_wafer>);
soc_wafer.build();
var smd_resistor = newBuilder("smd_resistor", "assembly_cleanroom", 75);
smd_resistor.addEnergyPerTickInput(128);
smd_resistor.addItemInput(<ore:plateGold>);
smd_resistor.addItemInput(<ore:dustAnyCarbon>, 2);
smd_resistor.addItemInput(<mekanism:polyethene:2> * 4);
smd_resistor.addItemOutput(<contenttweaker:smd_resistor> * 16);
smd_resistor.build();
var engraved_processor_crystal = newBuilder("engraved_processor_crystal", "precision_laser_engraver", 600);
engraved_processor_crystal.addItemInput(<contenttweaker:raw_processor_crystal>);
engraved_processor_crystal.addItemInput(<contenttweaker:ruby_lens>).setChance(0);
engraved_processor_crystal.addItemOutput(<contenttweaker:engraved_processor_crystal>);
engraved_processor_crystal.build();

//Cleanroom circuits
var data_storage_unit = newBuilder("data_storage_unit", "assembly_cleanroom", 300);
data_storage_unit.addEnergyPerTickInput(256);
data_storage_unit.addItemInput(<contenttweaker:nand_memory_plate> * 32);
data_storage_unit.addItemInput(<contenttweaker:ram_plate> * 4);
data_storage_unit.addItemInput(<ore:wirePGMAny>, 4);
data_storage_unit.addItemInput(<contenttweaker:tin_solder> * 4);
data_storage_unit.addItemInput(<contenttweaker:plastic_circuit_board>);
data_storage_unit.addItemInput(<mekanism:controlcircuit> * 1);
data_storage_unit.addItemOutput(<advancedrocketry:dataunit>);
data_storage_unit.build();
var basic_circuit = newBuilder("basic_circuit", "assembly_cleanroom", 150);
basic_circuit.addEnergyPerTickInput(256);
basic_circuit.addItemInput(<contenttweaker:integrated_circuit_plate>);
basic_circuit.addItemInput(<mekanism:polyethene:2>);
basic_circuit.addItemInput(<contenttweaker:smd_resistor> * 2);
basic_circuit.addItemInput(<immersiveengineering:material:20> * 2);
basic_circuit.addItemInput(<contenttweaker:tin_solder> * 2);
basic_circuit.addItemInput(<contenttweaker:plastic_circuit_board>);
basic_circuit.addItemOutput(<mekanism:controlcircuit>);
basic_circuit.build();
var basic_circuit_soc = newBuilder("basic_circuit_soc", "assembly_cleanroom", 150);
basic_circuit_soc.addEnergyPerTickInput(1024);
basic_circuit_soc.addItemInput(<contenttweaker:soc_plate>);
basic_circuit_soc.addItemInput(<mekanism:polyethene:2>);
basic_circuit_soc.addItemInput(<contenttweaker:smd_resistor> * 2);
basic_circuit_soc.addItemInput(<immersiveengineering:material:20> * 2);
basic_circuit_soc.addItemInput(<contenttweaker:tin_solder> * 4);
basic_circuit_soc.addItemInput(<contenttweaker:plastic_circuit_board> * 2);
basic_circuit_soc.addItemOutput(<mekanism:controlcircuit> * 2);
basic_circuit_soc.build();
var advanced_circuit = newBuilder("advanced_circuit", "assembly_cleanroom", 150);
advanced_circuit.addEnergyPerTickInput(256);
advanced_circuit.addItemInput(<contenttweaker:integrated_circuit_plate> * 2);
advanced_circuit.addItemInput(<contenttweaker:cpu_plate>);
advanced_circuit.addItemInput(<contenttweaker:smd_resistor> * 2);
advanced_circuit.addItemInput(<immersiveengineering:material:21> * 2);
advanced_circuit.addItemInput(<contenttweaker:tin_solder> * 4);
advanced_circuit.addItemInput(<contenttweaker:plastic_circuit_board>);
advanced_circuit.addItemOutput(<mekanism:controlcircuit:1>);
advanced_circuit.build();
var advanced_circuit_soc = newBuilder("advanced_circuit_soc", "assembly_cleanroom", 150);
advanced_circuit_soc.addEnergyPerTickInput(1024);
advanced_circuit_soc.addItemInput(<contenttweaker:soc_plate>);
advanced_circuit_soc.addItemInput(<mekanism:polyethene:2>);
advanced_circuit_soc.addItemInput(<contenttweaker:smd_resistor> * 2);
advanced_circuit_soc.addItemInput(<immersiveengineering:material:21> * 2);
advanced_circuit_soc.addItemInput(<contenttweaker:tin_solder> * 8);
advanced_circuit_soc.addItemInput(<contenttweaker:plastic_circuit_board> * 2);
advanced_circuit_soc.addItemOutput(<mekanism:controlcircuit:1> * 2);
advanced_circuit_soc.build();
var elite_circuit = newBuilder("elite_circuit", "assembly_cleanroom", 225);
elite_circuit.addEnergyPerTickInput(1024);
elite_circuit.addItemInput(<contenttweaker:cpu_plate> * 2);
elite_circuit.addItemInput(<contenttweaker:gps_unit>);
elite_circuit.addItemInput(<contenttweaker:smd_resistor> * 2);
elite_circuit.addItemInput(<ore:wirePGMAny>, 2);
elite_circuit.addItemInput(<contenttweaker:tin_solder> * 4);
elite_circuit.addItemInput(<contenttweaker:plastic_circuit_board>);
elite_circuit.addItemOutput(<mekanism:controlcircuit:2>);
elite_circuit.build();
var elite_circuit_soc = newBuilder("elite_circuit_soc", "assembly_cleanroom", 225);
elite_circuit_soc.addEnergyPerTickInput(4096);
elite_circuit_soc.addItemInput(<contenttweaker:soc_plate> * 2);
elite_circuit_soc.addItemInput(<contenttweaker:gps_unit>);
elite_circuit_soc.addItemInput(<contenttweaker:smd_resistor> * 2);
elite_circuit_soc.addItemInput(<ore:wirePGMAny>, 2);
elite_circuit_soc.addItemInput(<contenttweaker:tin_solder> * 8);
elite_circuit_soc.addItemInput(<contenttweaker:plastic_circuit_board> * 2);
elite_circuit_soc.addItemOutput(<mekanism:controlcircuit:2> * 2);
elite_circuit_soc.build();
var ultimate_circuit = newBuilder("ultimate_circuit", "assembly_cleanroom", 225);
ultimate_circuit.addBiomeRequirement(["advancedrocketry:space"]);
ultimate_circuit.addEnergyPerTickInput(4096);
ultimate_circuit.addItemInput(<contenttweaker:engraved_processor_crystal>);
ultimate_circuit.addItemInput(<contenttweaker:gps_unit> * 2);
ultimate_circuit.addItemInput(<contenttweaker:smd_resistor> * 2);
ultimate_circuit.addItemInput(<ore:wireNiobiumTitanium>, 2);
ultimate_circuit.addItemInput(<contenttweaker:tin_solder> * 4);
ultimate_circuit.addItemInput(<contenttweaker:platinum_backed_plastic_circuit_board>);
ultimate_circuit.addFluidInput(<liquid:liquidnitrogen> * 125);
ultimate_circuit.addItemOutput(<mekanism:controlcircuit:3>);
ultimate_circuit.build();


/*
    Other Miscellaneous Cleanroom Pieces - Induction, satellites, superconductors
*/

//Cleanroom Induction Matrix tablets
var induction_tablet = newBuilder("induction_tablet", "assembly_cleanroom", 240);
induction_tablet.addEnergyPerTickInput(256);
induction_tablet.addItemInput(<mekanism:polyethene:2> * 2);
induction_tablet.addItemInput(<mekanism:controlcircuit>);
induction_tablet.addItemInput(<mekanism:otherdust:4> * 4);
induction_tablet.addItemOutput(<contenttweaker:induction_tablet>);
induction_tablet.build();

//Cleanroom satellite precision parts
var reaction_wheel = newBuilder("reaction_wheel", "assembly_cleanroom", 600);
reaction_wheel.addEnergyPerTickInput(128);
reaction_wheel.addItemInput(<immersive_energy:storage:1>);
reaction_wheel.addItemInput(<immersiveengineering:material:2> * 4);
reaction_wheel.addItemInput(<immersiveengineering:material:9> * 4);
reaction_wheel.addFluidInput(<liquid:lubricant> * 1000);
reaction_wheel.addItemOutput(<contenttweaker:reaction_wheel> * 4);
reaction_wheel.build();
var satellite_chassis = newBuilder("satellite_chassis", "assembly_cleanroom", 1200);
satellite_chassis.addEnergyPerTickInput(1024);
satellite_chassis.addItemInput(<libvulpes:productsheet:9> * 8);
satellite_chassis.addItemInput(<immersiveengineering:metal_decoration1:5> * 4);
satellite_chassis.addItemInput(<libvulpes:productrod:7> * 4);
satellite_chassis.addItemInput(<contenttweaker:reaction_wheel> * 3);
satellite_chassis.addItemInput(<advancedrocketry:ic:1>);
satellite_chassis.addItemOutput(<advancedrocketry:satellite>);
satellite_chassis.build();
var optical_sensor = newBuilder("optical_sensor", "assembly_cleanroom", 900);
optical_sensor.addEnergyPerTickInput(256);
optical_sensor.addItemInput(<contenttweaker:glass_lens> * 3);
optical_sensor.addItemInput(<libvulpes:productrod:7> * 2);
optical_sensor.addItemInput(<mekanism:controlcircuit:1> * 4);
optical_sensor.addItemOutput(<advancedrocketry:satelliteprimaryfunction>);
optical_sensor.build();
var composition_sensor = newBuilder("composition_sensor", "assembly_cleanroom", 900);
composition_sensor.addEnergyPerTickInput(256);
composition_sensor.addItemInput(<contenttweaker:glass_lens> * 3);
composition_sensor.addItemInput(<libvulpes:productrod:7> * 2);
composition_sensor.addItemInput(<mekanism:controlcircuit:2>);
composition_sensor.addItemInput(<advancedrocketry:ic:1>);
composition_sensor.addItemOutput(<advancedrocketry:satelliteprimaryfunction:1>);
composition_sensor.build();
var mass_sensor = newBuilder("mass_sensor", "assembly_cleanroom", 900);
mass_sensor.addEnergyPerTickInput(256);
mass_sensor.addItemInput(<contenttweaker:glass_lens> * 3);
mass_sensor.addItemInput(<libvulpes:productrod:7> * 2);
mass_sensor.addItemInput(<mekanism:controlcircuit:2>);
mass_sensor.addItemInput(<mekanism:controlcircuit>);
mass_sensor.addItemOutput(<advancedrocketry:satelliteprimaryfunction:2>);
mass_sensor.build();
var microwave_transmitter = newBuilder("microwave_transmitter", "assembly_cleanroom", 900);
microwave_transmitter.addEnergyPerTickInput(256);
microwave_transmitter.addItemInput(<immersiveposts:metal_rods:3> * 2);
microwave_transmitter.addItemInput(<contenttweaker:silver_wire> * 4);
microwave_transmitter.addItemInput(<libvulpes:productsheet:9> * 8);
microwave_transmitter.addItemInput(<mekanism:controlcircuit:2>);
microwave_transmitter.addItemInput(<ore:mechanicalComponentSteel>, 2);
microwave_transmitter.addItemOutput(<advancedrocketry:satelliteprimaryfunction:3>);
microwave_transmitter.build();
var ore_scanner = newBuilder("ore_scanner", "assembly_cleanroom", 900);
ore_scanner.addEnergyPerTickInput(1024);
ore_scanner.addItemInput(<contenttweaker:glass_lens> * 3);
ore_scanner.addItemInput(<libvulpes:productrod:7> * 2);
ore_scanner.addItemInput(<mekanism:controlcircuit:2> * 2);
ore_scanner.addItemInput(<advancedrocketry:dataunit>);
ore_scanner.addItemOutput(<advancedrocketry:satelliteprimaryfunction:4>);
ore_scanner.build();
var biome_changer = newBuilder("biome_changer", "assembly_cleanroom", 900);
biome_changer.addEnergyPerTickInput(1024);
biome_changer.addItemInput(<libvulpes:productrod:7> * 2);
biome_changer.addItemInput(<contenttweaker:tungsten_wire> * 8);
biome_changer.addItemInput(<advancedrocketry:productsheet:1> * 4);
biome_changer.addItemInput(<mekanism:controlcircuit:3> * 4);
biome_changer.addItemInput(<ore:mechanicalComponentSteel>, 2);
biome_changer.addItemOutput(<advancedrocketry:satelliteprimaryfunction:5>);
biome_changer.build();

//Cleanroom fusion pieces
var fusion_casing_inner = newBuilder("fusion_casing_inner", "assembly_cleanroom", 300);
fusion_casing_inner.addEnergyPerTickInput(1024);
fusion_casing_inner.addItemInput(<contenttweaker:tungstensteel_scaffolding_panel> * 12);
fusion_casing_inner.addItemInput(<ore:plateTungsten>, 6);
fusion_casing_inner.addItemInput(<contenttweaker:small_tungstensteel_pipe> * 8);
fusion_casing_inner.addItemOutput(<contenttweaker:inner_fusion_casing>);
fusion_casing_inner.build();
var fusion_casing_outer = newBuilder("fusion_casing_outer", "assembly_cleanroom", 300);
fusion_casing_outer.addEnergyPerTickInput(1024);
fusion_casing_outer.addItemInput(<contenttweaker:tungstensteel_scaffolding_panel> * 12);
fusion_casing_outer.addItemInput(<ore:plateTungsten>, 6);
fusion_casing_outer.addItemInput(<mekanism:transmitter>.withTag({tier: 3}) * 2);
fusion_casing_outer.addItemOutput(<contenttweaker:outer_fusion_casing>);
fusion_casing_outer.build();
var fusion_coil = newBuilder("fusion_coil", "assembly_cleanroom", 300);
fusion_coil.addEnergyPerTickInput(1024);
fusion_coil.addItemInput(<mekanism:transmitter>.withTag({tier: 3}) * 8);
fusion_coil.addItemInput(<ore:stickMaragingSteel>, 4);
fusion_coil.addItemOutput(<contenttweaker:fusion_coil>);
fusion_coil.build();

//Cleanroom superconductor pieces
var uncooled_superconductor_cable = newBuilder("uncooled_superconductor_cable", "assembly_cleanroom", 300);
uncooled_superconductor_cable.addEnergyPerTickInput(256);
uncooled_superconductor_cable.addItemInput(<ore:wireNiobiumTitanium>, 16);
uncooled_superconductor_cable.addItemInput(<contenttweaker:small_tungstensteel_pipe> * 4);
uncooled_superconductor_cable.addItemInput(<ore:circuitElite>, 1);
uncooled_superconductor_cable.addItemOutput(<contenttweaker:unfilled_superconductor_cable> * 4);
uncooled_superconductor_cable.build();


/*
    Large Metal Press recipes - anything that wouldn't make sense in the small IE metal press, but does here
*/

//Scaffolding
var aluminium_scaffolding_panel = newBuilder("aluminium_scaffolding_panel", "heavy_metal_press", 400);
aluminium_scaffolding_panel.addEnergyPerTickInput(12288);
aluminium_scaffolding_panel.addItemInput(<ore:ingotHotAluminum>, 1);
aluminium_scaffolding_panel.addItemInput(<contenttweaker:scaffolding_panel_die>).setChance(0);
aluminium_scaffolding_panel.addItemOutput(<contenttweaker:aluminium_scaffolding_panel> * 12);
aluminium_scaffolding_panel.build();
var ultra_high_carbon_steel_scaffolding_panel = newBuilder("ultra_high_carbon_steel_scaffolding_panel", "heavy_metal_press", 400);
ultra_high_carbon_steel_scaffolding_panel.addEnergyPerTickInput(12288);
ultra_high_carbon_steel_scaffolding_panel.addItemInput(<contenttweaker:hot_steel_ingot> * 1);
ultra_high_carbon_steel_scaffolding_panel.addItemInput(<contenttweaker:scaffolding_panel_die>).setChance(0);
ultra_high_carbon_steel_scaffolding_panel.addItemOutput(<contenttweaker:steel_scaffolding_panel> * 12);
ultra_high_carbon_steel_scaffolding_panel.build();
var high_carbon_steel_scaffolding_panel = newBuilder("high_carbon_steel_scaffolding_panel", "heavy_metal_press", 400);
high_carbon_steel_scaffolding_panel.addEnergyPerTickInput(12288);
high_carbon_steel_scaffolding_panel.addItemInput(<ore:ingotHotHighCarbonSteel>, 1);
high_carbon_steel_scaffolding_panel.addItemInput(<contenttweaker:scaffolding_panel_die>).setChance(0);
high_carbon_steel_scaffolding_panel.addItemOutput(<contenttweaker:high_carbon_steel_scaffolding_panel> * 12);
high_carbon_steel_scaffolding_panel.build();
var maraging_steel_scaffolding_panel = newBuilder("maraging_steel_scaffolding_panel", "heavy_metal_press", 400);
maraging_steel_scaffolding_panel.addEnergyPerTickInput(12288);
maraging_steel_scaffolding_panel.addItemInput(<ore:ingotHotMaragingSteel>, 1);
maraging_steel_scaffolding_panel.addItemInput(<contenttweaker:scaffolding_panel_die>).setChance(0);
maraging_steel_scaffolding_panel.addItemOutput(<contenttweaker:maraging_steel_scaffolding_panel> * 12);
maraging_steel_scaffolding_panel.build();
var zirconium_niobium_scaffolding_panel = newBuilder("zirconium_niobium_scaffolding_panel", "heavy_metal_press", 400);
zirconium_niobium_scaffolding_panel.addEnergyPerTickInput(12288);
zirconium_niobium_scaffolding_panel.addItemInput(<ore:ingotHotZirconiumNiobium>, 1);
zirconium_niobium_scaffolding_panel.addItemInput(<contenttweaker:scaffolding_panel_die>).setChance(0);
zirconium_niobium_scaffolding_panel.addItemOutput(<contenttweaker:zirconium_niobium_scaffolding_panel> * 12);
zirconium_niobium_scaffolding_panel.build();
var titanium_aluminide_scaffolding_panel = newBuilder("titanium_aluminide_scaffolding_panel", "heavy_metal_press", 400);
titanium_aluminide_scaffolding_panel.addEnergyPerTickInput(12288);
titanium_aluminide_scaffolding_panel.addItemInput(<ore:ingotHotTitaniumAluminide>, 1);
titanium_aluminide_scaffolding_panel.addItemInput(<contenttweaker:scaffolding_panel_die>).setChance(0);
titanium_aluminide_scaffolding_panel.addItemOutput(<contenttweaker:titanium_aluminide_scaffolding_panel> * 12);
titanium_aluminide_scaffolding_panel.build();
var tungstensteel_scaffolding_panel = newBuilder("tungstensteel_scaffolding_panel", "heavy_metal_press", 400);
tungstensteel_scaffolding_panel.addEnergyPerTickInput(12288);
tungstensteel_scaffolding_panel.addItemInput(<ore:ingotHotTungstensteel>, 1);
tungstensteel_scaffolding_panel.addItemInput(<contenttweaker:scaffolding_panel_die>).setChance(0);
tungstensteel_scaffolding_panel.addItemOutput(<contenttweaker:tungstensteel_scaffolding_panel> * 12);
tungstensteel_scaffolding_panel.build();
//Engine Bells & Crucibles
var rocket_engine_bell = newBuilder("rocket_engine_bell", "heavy_metal_press", 1600);
rocket_engine_bell.addEnergyPerTickInput(12288);
rocket_engine_bell.addItemInput(<ore:ingotHotTungsten>, 4);
rocket_engine_bell.addItemInput(<contenttweaker:bell_die>).setChance(0);
rocket_engine_bell.addItemOutput(<contenttweaker:rocket_engine_bell>);
rocket_engine_bell.build();
var advanced_rocket_engine_bell = newBuilder("advanced_rocket_engine_bell", "heavy_metal_press", 1600);
advanced_rocket_engine_bell.addEnergyPerTickInput(12288);
advanced_rocket_engine_bell.addItemInput(<ore:ingotHotTitaniumIridium>, 4);
advanced_rocket_engine_bell.addItemInput(<contenttweaker:bell_die>).setChance(0);
advanced_rocket_engine_bell.addItemOutput(<contenttweaker:advanced_rocket_engine_bell>);
advanced_rocket_engine_bell.build();
var iridium_crucible = newBuilder("iridium_crucible", "heavy_metal_press", 2800);
iridium_crucible.addEnergyPerTickInput(12288);
iridium_crucible.addItemInput(<ore:ingotHotIridium>, 7);
iridium_crucible.addItemInput(<contenttweaker:bell_die>).setChance(0);
iridium_crucible.addItemOutput(<advancedrocketry:iquartzcrucible>);
iridium_crucible.build();



/*
    Extrusion Press recipes
*/

//Small Pipes
var small_zirconium_niobium_pipe = newBuilder("small_zirconium_niobium_pipe", "extrusion_press", 200);
small_zirconium_niobium_pipe.addEnergyPerTickInput(768);
small_zirconium_niobium_pipe.addItemInput(<ore:ingotHotZirconiumNiobium>, 1);
small_zirconium_niobium_pipe.addItemInput(<contenttweaker:small_pipe_die>).setChance(0);
small_zirconium_niobium_pipe.addItemOutput(<contenttweaker:small_zirconium_niobium_pipe> * 4);
small_zirconium_niobium_pipe.build();
var small_titanium_pipe = newBuilder("small_titanium_pipe", "extrusion_press", 200);
small_titanium_pipe.addEnergyPerTickInput(2304);
small_titanium_pipe.addItemInput(<ore:ingotHotTitanium>, 1);
small_titanium_pipe.addItemInput(<contenttweaker:small_pipe_die>).setChance(0);
small_titanium_pipe.addItemOutput(<contenttweaker:small_titanium_pipe> * 4);
small_titanium_pipe.build();
var small_tungstensteel_pipe = newBuilder("small_tungstensteel_pipe", "extrusion_press", 200);
small_tungstensteel_pipe.addEnergyPerTickInput(2304);
small_tungstensteel_pipe.addItemInput(<ore:ingotHotTungstensteel>, 1);
small_tungstensteel_pipe.addItemInput(<contenttweaker:small_pipe_die>).setChance(0);
small_tungstensteel_pipe.addItemOutput(<contenttweaker:small_tungstensteel_pipe> * 4);
small_tungstensteel_pipe.build();
//Pipe
var pipe_aluminium = newBuilder("pipe_aluminium", "extrusion_press", 100);
pipe_aluminium.addEnergyPerTickInput(768);
pipe_aluminium.addItemInput(<ore:ingotHotAluminum>, 1);
pipe_aluminium.addItemInput(<contenttweaker:pipe_die>).setChance(0);
pipe_aluminium.addItemOutput(<immersiveengineering:metal_device1:6> * 2);
pipe_aluminium.build();
var pipe_iron = newBuilder("pipe_iron", "extrusion_press", 100);
pipe_iron.addEnergyPerTickInput(768);
pipe_iron.addItemInput(<ore:ingotHotIron>, 1);
pipe_iron.addItemInput(<contenttweaker:pipe_die>).setChance(0);
pipe_iron.addItemOutput(<immersiveengineering:metal_device1:6> * 2);
pipe_iron.build();
var pipe_steel = newBuilder("pipe_steel", "extrusion_press", 100);
pipe_steel.addEnergyPerTickInput(768);
pipe_steel.addItemInput(<ore:ingotHotSteel>, 1);
pipe_steel.addItemInput(<contenttweaker:pipe_die>).setChance(0);
pipe_steel.addItemOutput(<immersiveengineering:metal_device1:6> * 2);
pipe_steel.build();
//Barrels & Tanks
var iron_barrel_shell = newBuilder("iron_barrel_shell", "extrusion_press", 50);
iron_barrel_shell.addEnergyPerTickInput(768);
iron_barrel_shell.addItemInput(<ore:ingotHotIron>, 4);
iron_barrel_shell.addItemInput(<contenttweaker:barrel_die>).setChance(0);
iron_barrel_shell.addItemOutput(<contenttweaker:metal_barrel_shell>);
iron_barrel_shell.build();
var steel_barrel_shell = newBuilder("steel_barrel_shell", "extrusion_press", 100);
steel_barrel_shell.addEnergyPerTickInput(768);
steel_barrel_shell.addItemInput(<ore:ingotHotSteel>, 4);
steel_barrel_shell.addItemInput(<contenttweaker:barrel_die>).setChance(0);
steel_barrel_shell.addItemOutput(<contenttweaker:steel_barrel_shell>);
steel_barrel_shell.build();
var fuel_tank_shell_titanium = newBuilder("fuel_tank_shell_titanium", "extrusion_press", 100);
fuel_tank_shell_titanium.addEnergyPerTickInput(2304);
fuel_tank_shell_titanium.addItemInput(<ore:ingotHotTitanium>, 4);
fuel_tank_shell_titanium.addItemInput(<contenttweaker:barrel_die>).setChance(0);
fuel_tank_shell_titanium.addItemOutput(<contenttweaker:fuel_tank_shell>);
fuel_tank_shell_titanium.build();
var fuel_tank_shell_maraging_steel = newBuilder("fuel_tank_shell_maraging_steel", "extrusion_press", 100);
fuel_tank_shell_maraging_steel.addEnergyPerTickInput(2304);
fuel_tank_shell_maraging_steel.addItemInput(<ore:ingotHotMaragingSteel>, 4);
fuel_tank_shell_maraging_steel.addItemInput(<contenttweaker:barrel_die>).setChance(0);
fuel_tank_shell_maraging_steel.addItemOutput(<contenttweaker:fuel_tank_shell>);
fuel_tank_shell_maraging_steel.build();
//Gears
var steel_gear = newBuilder("steel_gear", "extrusion_press", 50);
steel_gear.addEnergyPerTickInput(768);
steel_gear.addItemInput(<contenttweaker:hot_steel_ingot> * 4);
steel_gear.addItemInput(<immersiveengineering:mold:1>).setChance(0);
steel_gear.addItemOutput(<libvulpes:productgear:6>);
steel_gear.build();
var high_carbon_steel_gear = newBuilder("high_carbon_steel_gear", "extrusion_press", 50);
high_carbon_steel_gear.addEnergyPerTickInput(768);
high_carbon_steel_gear.addItemInput(<ore:ingotHotHighCarbonSteel>, 4);
high_carbon_steel_gear.addItemInput(<immersiveengineering:mold:1>).setChance(0);
high_carbon_steel_gear.addItemOutput(<contenttweaker:high_carbon_steel_gear>);
high_carbon_steel_gear.build();
var maraging_steel_gear = newBuilder("maraging_steel_gear", "extrusion_press", 50);
maraging_steel_gear.addEnergyPerTickInput(768);
maraging_steel_gear.addItemInput(<ore:ingotHotMaragingSteel>, 4);
maraging_steel_gear.addItemInput(<immersiveengineering:mold:1>).setChance(0);
maraging_steel_gear.addItemOutput(<contenttweaker:maraging_steel_gear>);
maraging_steel_gear.build();
var titanium_gear = newBuilder("titanium_gear", "extrusion_press", 50);
titanium_gear.addEnergyPerTickInput(2304);
titanium_gear.addItemInput(<ore:ingotHotTitanium>, 4);
titanium_gear.addItemInput(<immersiveengineering:mold:1>).setChance(0);
titanium_gear.addItemOutput(<libvulpes:productgear:7>);
titanium_gear.build();
var titanium_aluminide_gear = newBuilder("titanium_aluminide_gear", "extrusion_press", 50);
titanium_aluminide_gear.addEnergyPerTickInput(2304);
titanium_aluminide_gear.addItemInput(<ore:ingotHotTitaniumAluminide>, 4);
titanium_aluminide_gear.addItemInput(<immersiveengineering:mold:1>).setChance(0);
titanium_aluminide_gear.addItemOutput(<advancedrocketry:productgear:0>);
titanium_aluminide_gear.build();
var titanium_iridium_gear = newBuilder("titanium_iridium_gear", "extrusion_press", 50);
titanium_iridium_gear.addEnergyPerTickInput(2304);
titanium_iridium_gear.addItemInput(<ore:ingotHotTitaniumIridium>, 4);
titanium_iridium_gear.addItemInput(<immersiveengineering:mold:1>).setChance(0);
titanium_iridium_gear.addItemOutput(<advancedrocketry:productgear:1>);
titanium_iridium_gear.build();



/*
    Miscellaneous Melting - anything needing melting I haven't covered yet
*/

//Molten magnesium to magnesium
var magnesium = newBuilder("magnesium", "casting_basin", 200);
magnesium.addFluidInput(<liquid:moltenmagnesium> * 1200);
magnesium.addItemOutput(<contenttweaker:magnesium_dust> * 12);
magnesium.build();
var calcium = newBuilder("calcium", "casting_basin", 200);
calcium.addFluidInput(<liquid:moltencalcium> * 1200);
calcium.addItemOutput(<contenttweaker:calcium_dust> * 12);
calcium.build();
var lithium = newBuilder("lithium", "casting_basin", 200);
lithium.addFluidInput(<liquid:liquidlithium> * 1200);
lithium.addItemOutput(<mekanism:otherdust:4> * 12);
lithium.build();

//Cryolite
var molten_cryolite = newBuilder("molten_cryolite", "melting_crucible", "700");
molten_cryolite.addMekanismHeatInput(0, 1100, (1.0/0));
molten_cryolite.addItemInput(<contenttweaker:cryolite>);
molten_cryolite.addFluidOutput(<liquid:moltencryolite> * 900);
molten_cryolite.build();

/*
    Miscellaneous
*/

//Offshore pump
var water = newBuilder("water", "offshore_pump", 1);
water.addEnergyPerTickInput("2048");
water.addBiomeRequirement(["minecraft:river", "minecraft:frozen_river"]);
water.addFluidOutput(<liquid:water> * 1000);
water.build();
var saltwater = newBuilder("saltwater", "offshore_pump", 1);
saltwater.addEnergyPerTickInput("2048");
saltwater.addBiomeRequirement(["minecraft:ocean", "minecraft:frozen_ocean", "minecraft:deep_ocean"]);
saltwater.addFluidOutput(<liquid:saltwater> * 1000);
saltwater.build();

//Large radiator recipes for space stations
var exhaust_steam = newBuilder("exhaust_steam", "large_radiator", 3);
exhaust_steam.addFluidInput(<liquid:exhauststeam> * 3000);
exhaust_steam.addFluidOutput(<liquid:distwater> * 150);
exhaust_steam.build();
