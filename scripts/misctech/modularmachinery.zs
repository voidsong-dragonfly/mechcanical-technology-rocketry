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
    Salt Processing - From brine to chlorine and molten salts
*/

//Salt Melting
var molten_magnesium_chloride = newBuilder("molten_magnesium_chloride", "melting_crucible", "600");
molten_magnesium_chloride.addMekanismHeatInput(0, 715, (1.0/0));
molten_magnesium_chloride.addItemInput(<ore:dustMagnesiumChloride>, 9);
molten_magnesium_chloride.addFluidOutput(<liquid:moltenmagnesiumchloride> * 900);
molten_magnesium_chloride.build();
var molten_lithium_chloride = newBuilder("molten_lithium_chloride", "melting_crucible", "600");
molten_lithium_chloride.addMekanismHeatInput(0, 600, (1.0/0));
molten_lithium_chloride.addItemInput(<ore:dustLithiumChloride>, 9);
molten_lithium_chloride.addFluidOutput(<liquid:moltenlithiumchloride> * 900);
molten_lithium_chloride.build();
var molten_calcium_chloride = newBuilder("molten_calcium_chloride", "melting_crucible", "600");
molten_calcium_chloride.addMekanismHeatInput(0, 1000, (1.0/0));
molten_calcium_chloride.addItemInput(<ore:dustCalciumChloride>, 9);
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
    Assembly Cleanroom pieces - basic circuits, superconductors, satellite pieces
*/

//Basic & advanced circuits in the assembly cleanroom such that the precision assembly loop is fixed
var basic_circuit = newBuilder("basic_circuit", "assembly_cleanroom", 450);
basic_circuit.addEnergyPerTickInput(256);
basic_circuit.addItemInput(<ore:circuitPlateIntegratedCircuit>);
basic_circuit.addItemInput(<mekanism:polyethene:2>);
basic_circuit.addItemInput(<ore:smdResistor>, 2);
basic_circuit.addItemInput(<immersiveengineering:material:20> * 2);
basic_circuit.addItemInput(<ore:solderItem>, 2);
basic_circuit.addItemInput(<ore:circuitBoardPlastic>);
basic_circuit.addItemOutput(<mekanism:controlcircuit>);
basic_circuit.build();
var advanced_circuit = newBuilder("advanced_circuit", "assembly_cleanroom", 450);
advanced_circuit.addEnergyPerTickInput(256);
advanced_circuit.addItemInput(<ore:circuitPlateIntegratedCircuit>, 2);
advanced_circuit.addItemInput(<ore:circuitPlateCentralProcessingUnit>);
advanced_circuit.addItemInput(<ore:smdResistor>, 2);
advanced_circuit.addItemInput(<immersiveengineering:material:21> * 2);
advanced_circuit.addItemInput(<ore:solderItem>, 4);
advanced_circuit.addItemInput(<ore:circuitBoardPlastic>);
advanced_circuit.addItemOutput(<mekanism:controlcircuit:1>);
advanced_circuit.build();

//Cleanroom Induction Matrix tablets
var induction_tablet = newBuilder("induction_tablet", "assembly_cleanroom", 240);
induction_tablet.addEnergyPerTickInput(256);
induction_tablet.addItemInput(<mekanism:polyethene:2> * 2);
induction_tablet.addItemInput(<mekanism:controlcircuit>);
induction_tablet.addItemInput(<mekanism:otherdust:4> * 4);
induction_tablet.addItemOutput(<ore:inductionTabletItem>.firstItem);
induction_tablet.build();

//Cleanroom satellite precision parts
var reaction_wheel = newBuilder("reaction_wheel", "assembly_cleanroom", 600);
reaction_wheel.addEnergyPerTickInput(128);
reaction_wheel.addItemInput(<ore:blockTungsten>, 1);
reaction_wheel.addItemInput(<immersiveengineering:material:2> * 4);
reaction_wheel.addItemInput(<immersiveengineering:material:9> * 4);
reaction_wheel.addFluidInput(<liquid:lubricant> * 1000);
reaction_wheel.addItemOutput(<ore:reactionWheelItem>.firstItem * 4);
reaction_wheel.build();
var satellite_chassis = newBuilder("satellite_chassis", "assembly_cleanroom", 1200);
satellite_chassis.addEnergyPerTickInput(1024);
satellite_chassis.addItemInput(<libvulpes:productsheet:9> * 8);
satellite_chassis.addItemInput(<immersiveengineering:metal_decoration1:5> * 4);
satellite_chassis.addItemInput(<libvulpes:productrod:7> * 4);
satellite_chassis.addItemInput(<ore:reactionWheelItem>, 3);
satellite_chassis.addItemInput(<advancedrocketry:ic:1>);
satellite_chassis.addItemOutput(<advancedrocketry:satellite>);
satellite_chassis.build();
var optical_sensor = newBuilder("optical_sensor", "assembly_cleanroom", 900);
optical_sensor.addEnergyPerTickInput(256);
optical_sensor.addItemInput(<ore:lensGlass>, 3);
optical_sensor.addItemInput(<libvulpes:productrod:7> * 2);
optical_sensor.addItemInput(<mekanism:controlcircuit:1> * 4);
optical_sensor.addItemOutput(<advancedrocketry:satelliteprimaryfunction>);
optical_sensor.build();
var composition_sensor = newBuilder("composition_sensor", "assembly_cleanroom", 900);
composition_sensor.addEnergyPerTickInput(256);
composition_sensor.addItemInput(<ore:lensGlass>, 3);
composition_sensor.addItemInput(<libvulpes:productrod:7> * 2);
composition_sensor.addItemInput(<mekanism:controlcircuit:2>);
composition_sensor.addItemInput(<advancedrocketry:ic:1>);
composition_sensor.addItemOutput(<advancedrocketry:satelliteprimaryfunction:1>);
composition_sensor.build();
var mass_sensor = newBuilder("mass_sensor", "assembly_cleanroom", 900);
mass_sensor.addEnergyPerTickInput(256);
mass_sensor.addItemInput(<ore:lensGlass>, 3);
mass_sensor.addItemInput(<libvulpes:productrod:7> * 2);
mass_sensor.addItemInput(<mekanism:controlcircuit:2>);
mass_sensor.addItemInput(<mekanism:controlcircuit>);
mass_sensor.addItemOutput(<advancedrocketry:satelliteprimaryfunction:2>);
mass_sensor.build();
var microwave_transmitter = newBuilder("microwave_transmitter", "assembly_cleanroom", 900);
microwave_transmitter.addEnergyPerTickInput(256);
microwave_transmitter.addItemInput(<immersiveposts:metal_rods:3> * 2);
microwave_transmitter.addItemInput(<ore:wireSilver>, 4);
microwave_transmitter.addItemInput(<libvulpes:productsheet:9> * 8);
microwave_transmitter.addItemInput(<mekanism:controlcircuit:2>);
microwave_transmitter.addItemInput(<ore:mechanicalComponentSteel>, 2);
microwave_transmitter.addItemOutput(<advancedrocketry:satelliteprimaryfunction:3>);
microwave_transmitter.build();
var ore_scanner = newBuilder("ore_scanner", "assembly_cleanroom", 900);
ore_scanner.addEnergyPerTickInput(1024);
ore_scanner.addItemInput(<ore:lensGlass>, 3);
ore_scanner.addItemInput(<libvulpes:productrod:7> * 2);
ore_scanner.addItemInput(<mekanism:controlcircuit:2> * 2);
ore_scanner.addItemInput(<advancedrocketry:dataunit>);
ore_scanner.addItemOutput(<advancedrocketry:satelliteprimaryfunction:4>);
ore_scanner.build();
var biome_changer = newBuilder("biome_changer", "assembly_cleanroom", 900);
biome_changer.addEnergyPerTickInput(1024);
biome_changer.addItemInput(<libvulpes:productrod:7> * 2);
biome_changer.addItemInput(<ore:wireTungsten>, 8);
biome_changer.addItemInput(<advancedrocketry:productsheet:1> * 4);
biome_changer.addItemInput(<mekanism:controlcircuit:3> * 4);
biome_changer.addItemInput(<ore:mechanicalComponentSteel>, 2);
biome_changer.addItemOutput(<advancedrocketry:satelliteprimaryfunction:5>);
biome_changer.build();

//Cleanroom fusion pieces
var fusion_casing_inner = newBuilder("fusion_casing_inner", "assembly_cleanroom", 300);
fusion_casing_inner.addEnergyPerTickInput(1024);
fusion_casing_inner.addItemInput(<ore:scaffoldingPanelTungstensteel>, 12);
fusion_casing_inner.addItemInput(<ore:plateTungsten>, 6);
fusion_casing_inner.addItemInput(<ore:smallPipeTungstensteel>, 8);
fusion_casing_inner.addItemOutput(<ore:machineCasingFusionReactorInnerCasing>.firstItem);
fusion_casing_inner.build();
var fusion_casing_outer = newBuilder("fusion_casing_outer", "assembly_cleanroom", 300);
fusion_casing_outer.addEnergyPerTickInput(1024);
fusion_casing_outer.addItemInput(<ore:scaffoldingPanelTungstensteel>, 12);
fusion_casing_outer.addItemInput(<ore:plateTungsten>, 6);
fusion_casing_outer.addItemInput(<mekanism:transmitter>.withTag({tier: 3}) * 2);
fusion_casing_outer.addItemOutput(<ore:machineCasingFusionReactorOuterCasing>.firstItem);
fusion_casing_outer.build();
var fusion_coil = newBuilder("fusion_coil", "assembly_cleanroom", 300);
fusion_coil.addEnergyPerTickInput(1024);
fusion_coil.addItemInput(<mekanism:transmitter>.withTag({tier: 3}) * 8);
fusion_coil.addItemInput(<ore:stickMaragingSteel>, 4);
fusion_coil.addItemOutput(<ore:machineCasingSuperconductiveCoil>.firstItem);
fusion_coil.build();

//Cleanroom superconductor pieces
var uncooled_superconductor_cable = newBuilder("uncooled_superconductor_cable", "assembly_cleanroom", 300);
uncooled_superconductor_cable.addEnergyPerTickInput(256);
uncooled_superconductor_cable.addItemInput(<ore:wireNiobiumTitaniumAlloy>, 16);
uncooled_superconductor_cable.addItemInput(<ore:smallPipeTungstensteel>, 4);
uncooled_superconductor_cable.addItemInput(<ore:circuitElite>, 1);
uncooled_superconductor_cable.addItemOutput(<ore:unfilledSuperconductorCableItem>.firstItem * 4);
uncooled_superconductor_cable.build();



/*
    Large Metal Press recipes - anything that wouldn't make sense in the small IE metal press, but does here
*/

//Scaffolding
var aluminium_scaffolding_panel = newBuilder("aluminium_scaffolding_panel", "heavy_metal_press", 400);
aluminium_scaffolding_panel.addEnergyPerTickInput(12288);
aluminium_scaffolding_panel.addItemInput(<ore:ingotAluminum>, 1);
aluminium_scaffolding_panel.addItemInput(<ore:heavyMetalPressDieScaffoldingPanel>).setChance(0);
aluminium_scaffolding_panel.addItemOutput(<ore:scaffoldingPanelAluminium>.firstItem * 12);
aluminium_scaffolding_panel.build();
var steel_scaffolding_panel = newBuilder("steel_scaffolding_panel", "heavy_metal_press", 400);
steel_scaffolding_panel.addEnergyPerTickInput(12288);
steel_scaffolding_panel.addItemInput(<ore:ingotSteel>);
steel_scaffolding_panel.addItemInput(<ore:heavyMetalPressDieScaffoldingPanel>).setChance(0);
steel_scaffolding_panel.addItemOutput(<ore:scaffoldingPanelSteel>.firstItem * 12);
steel_scaffolding_panel.build();
var maraging_steel_scaffolding_panel = newBuilder("maraging_steel_scaffolding_panel", "heavy_metal_press", 400);
maraging_steel_scaffolding_panel.addEnergyPerTickInput(12288);
maraging_steel_scaffolding_panel.addItemInput(<ore:ingotMaragingSteel>, 1);
maraging_steel_scaffolding_panel.addItemInput(<ore:heavyMetalPressDieScaffoldingPanel>).setChance(0);
maraging_steel_scaffolding_panel.addItemOutput(<ore:scaffoldingPanelMaragingSteel>.firstItem * 12);
maraging_steel_scaffolding_panel.build();
var zirconium_niobium_scaffolding_panel = newBuilder("zirconium_niobium_scaffolding_panel", "heavy_metal_press", 400);
zirconium_niobium_scaffolding_panel.addEnergyPerTickInput(12288);
zirconium_niobium_scaffolding_panel.addItemInput(<ore:ingotZirconiumNiobiumAlloy>, 1);
zirconium_niobium_scaffolding_panel.addItemInput(<ore:heavyMetalPressDieScaffoldingPanel>).setChance(0);
zirconium_niobium_scaffolding_panel.addItemOutput(<ore:scaffoldingPanelZirconiumNiobiumAlloy>.firstItem * 12);
zirconium_niobium_scaffolding_panel.build();
var titanium_scaffolding_panel = newBuilder("titanium_scaffolding_panel", "heavy_metal_press", 400);
titanium_scaffolding_panel.addEnergyPerTickInput(12288);
titanium_scaffolding_panel.addItemInput(<ore:ingotTitanium>, 1);
titanium_scaffolding_panel.addItemInput(<ore:heavyMetalPressDieScaffoldingPanel>).setChance(0);
titanium_scaffolding_panel.addItemOutput(<ore:scaffoldingPanelTitanium>.firstItem * 12);
titanium_scaffolding_panel.build();
var titanium_aluminide_scaffolding_panel = newBuilder("titanium_aluminide_scaffolding_panel", "heavy_metal_press", 400);
titanium_aluminide_scaffolding_panel.addEnergyPerTickInput(12288);
titanium_aluminide_scaffolding_panel.addItemInput(<ore:ingotTitaniumAluminide>, 1);
titanium_aluminide_scaffolding_panel.addItemInput(<ore:heavyMetalPressDieScaffoldingPanel>).setChance(0);
titanium_aluminide_scaffolding_panel.addItemOutput(<ore:scaffoldingPanelTitaniumAluminide>.firstItem * 12);
titanium_aluminide_scaffolding_panel.build();
var tungstensteel_scaffolding_panel = newBuilder("tungstensteel_scaffolding_panel", "heavy_metal_press", 400);
tungstensteel_scaffolding_panel.addEnergyPerTickInput(12288);
tungstensteel_scaffolding_panel.addItemInput(<ore:ingotTungstensteel>, 1);
tungstensteel_scaffolding_panel.addItemInput(<ore:heavyMetalPressDieScaffoldingPanel>).setChance(0);
tungstensteel_scaffolding_panel.addItemOutput(<ore:scaffoldingPanelTungstensteel>.firstItem * 12);
tungstensteel_scaffolding_panel.build();
//Engine Bells & Crucibles
var rocket_engine_bell = newBuilder("rocket_engine_bell", "heavy_metal_press", 1600);
rocket_engine_bell.addEnergyPerTickInput(12288);
rocket_engine_bell.addItemInput(<ore:ingotTungsten>, 4);
rocket_engine_bell.addItemInput(<ore:heavyMetalPressDieBell>).setChance(0);
rocket_engine_bell.addItemOutput(<ore:engineBellItem>.firstItem);
rocket_engine_bell.build();
var advanced_rocket_engine_bell = newBuilder("advanced_rocket_engine_bell", "heavy_metal_press", 1600);
advanced_rocket_engine_bell.addEnergyPerTickInput(12288);
advanced_rocket_engine_bell.addItemInput(<ore:ingotTitaniumIridium>, 4);
advanced_rocket_engine_bell.addItemInput(<ore:heavyMetalPressDieBell>).setChance(0);
advanced_rocket_engine_bell.addItemOutput(<ore:advancedEngineBellItem>.firstItem);
advanced_rocket_engine_bell.build();
var iridium_crucible = newBuilder("iridium_crucible", "heavy_metal_press", 2800);
iridium_crucible.addEnergyPerTickInput(12288);
iridium_crucible.addItemInput(<ore:ingotIridium>, 7);
iridium_crucible.addItemInput(<ore:heavyMetalPressDieBell>).setChance(0);
iridium_crucible.addItemOutput(<advancedrocketry:iquartzcrucible>);
iridium_crucible.build();



/*
    Extrusion Press recipes
*/

//Small Pipes
var small_zirconium_niobium_pipe = newBuilder("small_zirconium_niobium_pipe", "extrusion_press", 800);
small_zirconium_niobium_pipe.addEnergyPerTickInput(768);
small_zirconium_niobium_pipe.addItemInput(<ore:ingotZirconiumNiobiumAlloy>, 1);
small_zirconium_niobium_pipe.addItemInput(<ore:metalPressMoldSmallPipe>).setChance(0);
small_zirconium_niobium_pipe.addItemOutput(<ore:smallPipeZirconiumNiobiumAlloy>.firstItem * 4);
small_zirconium_niobium_pipe.build();
var small_titanium_pipe = newBuilder("small_titanium_pipe", "extrusion_press", 800);
small_titanium_pipe.addEnergyPerTickInput(2304);
small_titanium_pipe.addItemInput(<ore:ingotTitanium>, 1);
small_titanium_pipe.addItemInput(<ore:metalPressMoldSmallPipe>).setChance(0);
small_titanium_pipe.addItemOutput(<ore:smallPipeTitanium>.firstItem * 4);
small_titanium_pipe.build();
var small_tungstensteel_pipe = newBuilder("small_tungstensteel_pipe", "extrusion_press", 800);
small_tungstensteel_pipe.addEnergyPerTickInput(2304);
small_tungstensteel_pipe.addItemInput(<ore:ingotTungstensteel>, 1);
small_tungstensteel_pipe.addItemInput(<ore:metalPressMoldSmallPipe>).setChance(0);
small_tungstensteel_pipe.addItemOutput(<ore:smallPipeTungstensteel>.firstItem * 4);
small_tungstensteel_pipe.build();
//Pipe
var pipe_aluminium = newBuilder("pipe_aluminium", "extrusion_press", 400);
pipe_aluminium.addEnergyPerTickInput(768);
pipe_aluminium.addItemInput(<ore:ingotAluminum>, 1);
pipe_aluminium.addItemInput(<ore:metalPressMoldPipe>).setChance(0);
pipe_aluminium.addItemOutput(<immersiveengineering:metal_device1:6> * 2);
pipe_aluminium.build();
var pipe_iron = newBuilder("pipe_iron", "extrusion_press", 400);
pipe_iron.addEnergyPerTickInput(768);
pipe_iron.addItemInput(<ore:ingotIron>, 1);
pipe_iron.addItemInput(<ore:metalPressMoldPipe>).setChance(0);
pipe_iron.addItemOutput(<immersiveengineering:metal_device1:6> * 2);
pipe_iron.build();
var pipe_steel = newBuilder("pipe_steel", "extrusion_press", 400);
pipe_steel.addEnergyPerTickInput(768);
pipe_steel.addItemInput(<ore:ingotSteel>, 1);
pipe_steel.addItemInput(<ore:metalPressMoldPipe>).setChance(0);
pipe_steel.addItemOutput(<immersiveengineering:metal_device1:6> * 2);
pipe_steel.build();
//Barrels & Tanks
var iron_barrel_shell = newBuilder("iron_barrel_shell", "extrusion_press", 200);
iron_barrel_shell.addEnergyPerTickInput(768);
iron_barrel_shell.addItemInput(<ore:ingotIron>, 4);
iron_barrel_shell.addItemInput(<ore:metalPressMoldBarrel>).setChance(0);
iron_barrel_shell.addItemOutput(<ore:machineCasingMetalBarrelShell>.firstItem);
iron_barrel_shell.build();
var steel_barrel_shell = newBuilder("steel_barrel_shell", "extrusion_press", 400);
steel_barrel_shell.addEnergyPerTickInput(768);
steel_barrel_shell.addItemInput(<ore:ingotSteel>, 4);
steel_barrel_shell.addItemInput(<ore:metalPressMoldBarrel>).setChance(0);
steel_barrel_shell.addItemOutput(<ore:machineCasingSteelBarrelShell>.firstItem);
steel_barrel_shell.build();
var fuel_tank_shell_titanium = newBuilder("fuel_tank_shell_titanium", "extrusion_press", 400);
fuel_tank_shell_titanium.addEnergyPerTickInput(2304);
fuel_tank_shell_titanium.addItemInput(<ore:ingotTitanium>, 4);
fuel_tank_shell_titanium.addItemInput(<ore:metalPressMoldBarrel>).setChance(0);
fuel_tank_shell_titanium.addItemOutput(<ore:fuelTankShellItem>.firstItem);
fuel_tank_shell_titanium.build();
var fuel_tank_shell_maraging_steel = newBuilder("fuel_tank_shell_maraging_steel", "extrusion_press", 400);
fuel_tank_shell_maraging_steel.addEnergyPerTickInput(2304);
fuel_tank_shell_maraging_steel.addItemInput(<ore:ingotMaragingSteel>, 4);
fuel_tank_shell_maraging_steel.addItemInput(<ore:metalPressMoldBarrel>).setChance(0);
fuel_tank_shell_maraging_steel.addItemOutput(<ore:fuelTankShellItem>.firstItem);
fuel_tank_shell_maraging_steel.build();
//Gears
var steel_gear = newBuilder("steel_gear", "extrusion_press", 200);
steel_gear.addEnergyPerTickInput(768);
steel_gear.addItemInput(<immersiveengineering:metal:8> * 4);
steel_gear.addItemInput(<immersiveengineering:mold:1>).setChance(0);
steel_gear.addItemOutput(<libvulpes:productgear:6>);
steel_gear.build();
var maraging_steel_gear = newBuilder("maraging_steel_gear", "extrusion_press", 200);
maraging_steel_gear.addEnergyPerTickInput(768);
maraging_steel_gear.addItemInput(<ore:ingotMaragingSteel>, 4);
maraging_steel_gear.addItemInput(<immersiveengineering:mold:1>).setChance(0);
maraging_steel_gear.addItemOutput(<ore:gearMaragingSteel>.firstItem);
maraging_steel_gear.build();
var titanium_gear = newBuilder("titanium_gear", "extrusion_press", 200);
titanium_gear.addEnergyPerTickInput(2304);
titanium_gear.addItemInput(<ore:ingotTitanium>, 4);
titanium_gear.addItemInput(<immersiveengineering:mold:1>).setChance(0);
titanium_gear.addItemOutput(<libvulpes:productgear:7>);
titanium_gear.build();
var titanium_aluminide_gear = newBuilder("titanium_aluminide_gear", "extrusion_press", 200);
titanium_aluminide_gear.addEnergyPerTickInput(2304);
titanium_aluminide_gear.addItemInput(<ore:ingotTitaniumAluminide>, 4);
titanium_aluminide_gear.addItemInput(<immersiveengineering:mold:1>).setChance(0);
titanium_aluminide_gear.addItemOutput(<advancedrocketry:productgear:0>);
titanium_aluminide_gear.build();
var titanium_iridium_gear = newBuilder("titanium_iridium_gear", "extrusion_press", 200);
titanium_iridium_gear.addEnergyPerTickInput(2304);
titanium_iridium_gear.addItemInput(<ore:ingotTitaniumIridium>, 4);
titanium_iridium_gear.addItemInput(<immersiveengineering:mold:1>).setChance(0);
titanium_iridium_gear.addItemOutput(<advancedrocketry:productgear:1>);
titanium_iridium_gear.build();



/*
    Miscellaneous Melting - anything needing melting I haven't covered yet
*/

//Molten magnesium to magnesium
var magnesium = newBuilder("magnesium", "casting_basin", 200);
magnesium.addFluidInput(<liquid:moltenmagnesium> * 1200);
magnesium.addItemOutput(<ore:dustMagnesium>,  12);
magnesium.build();
var calcium = newBuilder("calcium", "casting_basin", 200);
calcium.addFluidInput(<liquid:moltencalcium> * 1200);
calcium.addItemOutput(<ore:dustCalcium>, 12);
calcium.build();
var lithium = newBuilder("lithium", "casting_basin", 200);
lithium.addFluidInput(<liquid:liquidlithium> * 1200);
lithium.addItemOutput(<mekanism:otherdust:4> * 12);
lithium.build();

//HDPE
var molten_cryolite = newBuilder("molten_cryolite", "melting_crucible", "700");
molten_cryolite.addMekanismHeatInput(0, 1100, (1.0/0));
molten_cryolite.addItemInput(<ore:oreCryolite>);
molten_cryolite.addFluidOutput(<liquid:moltencryolite> * 900);
molten_cryolite.build();

//Cryolite
var molten_polyethene = newBuilder("molten_polyethene", "melting_crucible", "300");
molten_polyethene.addMekanismHeatInput(0, 150, (1.0/0));
molten_polyethene.addItemInput(<mekanism:polyethene> * 9);
molten_polyethene.addFluidOutput(<liquid:polyethene> * 1125);
molten_polyethene.build();



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
