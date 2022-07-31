//Import
import mods.modularmachinery.RecipeBuilder.newBuilder;
import mods.jei.JEI.hide;
import mods.jei.JEI.removeAndHide;

/*
    Crafting Recipes - 3x3 recipes for MM hatches & similar blocks
*/

//Hide unused Modular Machinery blocks
removeAndHide(<modularmachinery:itemmodularium>);
removeAndHide(<modularmachinery:blockinputbus:0>);
removeAndHide(<modularmachinery:blockinputbus:2>);
removeAndHide(<modularmachinery:blockinputbus:3>);
removeAndHide(<modularmachinery:blockinputbus:4>);
removeAndHide(<modularmachinery:blockinputbus:5>);
removeAndHide(<modularmachinery:blockinputbus:6>);
removeAndHide(<modularmachinery:blockcasing:0>);
removeAndHide(<modularmachinery:blockcasing:1>);
removeAndHide(<modularmachinery:blockcasing:2>);
removeAndHide(<modularmachinery:blockcasing:3>);
removeAndHide(<modularmachinery:blockcasing:4>);
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
removeAndHide(<modularmachinery:blockfluidoutputhatch:0>);
removeAndHide(<modularmachinery:blockfluidoutputhatch:3>);
removeAndHide(<modularmachinery:blockfluidoutputhatch:4>);
removeAndHide(<modularmachinery:blockfluidoutputhatch:5>);
removeAndHide(<modularmachinery:blockfluidoutputhatch:6>);
removeAndHide(<modularmachinery:blockfluidoutputhatch:7>);
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
recipes.addShaped(<modularmachinery:blockcontroller>,
 [[<ore:sheetSteel>, <ore:circuitAdvanced>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:scaffoldingSteel>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:circuitAdvanced>, <ore:sheetSteel>]]);
recipes.addShaped(<modularmachinery:blockcasing:5>, 
 [[<ore:sheetSteel>, <ore:circuitUltimate>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:scaffoldingSteel>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:circuitUltimate>, <ore:sheetSteel>]]);
recipes.addShapeless(<modularmachinery:blockfluidinputhatch:1>, [<modularmachinery:blockfluidinputhatch:2>]);
recipes.addShapeless(<modularmachinery:blockfluidoutputhatch:1>, [<modularmachinery:blockfluidoutputhatch:2>]);
recipes.addShaped(<contenttweaker:fission_control_drum>,
 [[<ore:plateDepletedUraniumDioxide>, <ore:mechanicalComponentSteel>, <ore:plateDepletedUraniumDioxide>],
 [<ore:plateDepletedUraniumDioxide>, <contenttweaker:steel_barrel_shell>, <ore:plateDepletedUraniumDioxide>],
 [<ore:plateDepletedUraniumDioxide>, <ore:blockSilver>, <ore:plateDepletedUraniumDioxide>]]);



/*
    Large Metal Press recipes - anything that wouldn't make sense in the small IE metal press, but does here
*/

//Scaffolding
var aluminium_scaffolding = newBuilder("aluminium_scaffolding", "heavy_metal_press", 400);
aluminium_scaffolding.addEnergyPerTickInput(11520);
aluminium_scaffolding.addItemInput(<ore:ingotAluminum>, 1);
aluminium_scaffolding.addItemInput(<ore:heavyMetalPressDieScaffoldingPanel>).setChance(0);
aluminium_scaffolding.addItemOutput(<ore:scaffoldingAluminum>.firstItem * 2);
aluminium_scaffolding.build();
var steel_scaffolding = newBuilder("steel_scaffolding", "heavy_metal_press", 400);
steel_scaffolding.addEnergyPerTickInput(11520);
steel_scaffolding.addItemInput(<ore:ingotSteel>);
steel_scaffolding.addItemInput(<ore:heavyMetalPressDieScaffoldingPanel>).setChance(0);
steel_scaffolding.addItemOutput(<ore:scaffoldingSteel>.firstItem * 2);
steel_scaffolding.build();
var maraging_steel_scaffolding = newBuilder("maraging_steel_scaffolding", "heavy_metal_press", 400);
maraging_steel_scaffolding.addEnergyPerTickInput(11520);
maraging_steel_scaffolding.addItemInput(<ore:ingotMaragingSteel>, 1);
maraging_steel_scaffolding.addItemInput(<ore:heavyMetalPressDieScaffoldingPanel>).setChance(0);
maraging_steel_scaffolding.addItemOutput(<contenttweaker:maraging_steel_frame> * 2);
maraging_steel_scaffolding.build();
var titanium_aluminide_scaffolding = newBuilder("titanium_aluminide_scaffolding", "heavy_metal_press", 400);
titanium_aluminide_scaffolding.addEnergyPerTickInput(11520);
titanium_aluminide_scaffolding.addItemInput(<ore:ingotTitaniumAluminide>, 1);
titanium_aluminide_scaffolding.addItemInput(<ore:heavyMetalPressDieScaffoldingPanel>).setChance(0);
titanium_aluminide_scaffolding.addItemOutput(<contenttweaker:aluminium_magnesium_titanide_frame> * 2);
titanium_aluminide_scaffolding.build();
var titanium_iridium_scaffolding = newBuilder("titanium_iridium_scaffolding", "heavy_metal_press", 400);
titanium_iridium_scaffolding.addEnergyPerTickInput(11520);
titanium_iridium_scaffolding.addItemInput(<ore:ingotTitaniumIridium>, 1);
titanium_iridium_scaffolding.addItemInput(<ore:heavyMetalPressDieScaffoldingPanel>).setChance(0);
titanium_iridium_scaffolding.addItemOutput(<contenttweaker:titanium_iridium_alloy_frame> * 2);
titanium_iridium_scaffolding.build();
//Engine Bells & Crucibles
var rocket_engine_bell = newBuilder("rocket_engine_bell", "heavy_metal_press", 1600);
rocket_engine_bell.addEnergyPerTickInput(11520);
rocket_engine_bell.addItemInput(<ore:ingotMolybdenum>, 4);
rocket_engine_bell.addItemInput(<ore:heavyMetalPressDieBell>).setChance(0);
rocket_engine_bell.addItemOutput(<ore:engineBellItem>.firstItem);
rocket_engine_bell.build();
var advanced_rocket_engine_bell = newBuilder("advanced_rocket_engine_bell", "heavy_metal_press", 1600);
advanced_rocket_engine_bell.addEnergyPerTickInput(11520);
advanced_rocket_engine_bell.addItemInput(<ore:ingotTitaniumIridium>, 4);
advanced_rocket_engine_bell.addItemInput(<ore:heavyMetalPressDieBell>).setChance(0);
advanced_rocket_engine_bell.addItemOutput(<ore:advancedEngineBellItem>.firstItem);
advanced_rocket_engine_bell.build();
var iridium_crucible = newBuilder("iridium_crucible", "heavy_metal_press", 2800);
iridium_crucible.addEnergyPerTickInput(11520);
iridium_crucible.addItemInput(<ore:ingotIridium>, 7);
iridium_crucible.addItemInput(<ore:heavyMetalPressDieBell>).setChance(0);
iridium_crucible.addItemOutput(<advancedrocketry:iquartzcrucible>);
iridium_crucible.build();



/*
    Extrusion Press recipes
*/

//Base heating time is 100, time to extrude 1m is 100
//Small Pipes
var small_titanium_pipe = newBuilder("small_titanium_pipe", "extrusion_press", 500);
small_titanium_pipe.addEnergyPerTickInput(2160);
small_titanium_pipe.addItemInput(<ore:ingotTitanium>, 1);
small_titanium_pipe.addItemInput(<ore:metalPressMoldSmallPipe>).setChance(0);
small_titanium_pipe.addItemOutput(<ore:smallPipeTitanium>.firstItem * 4);
small_titanium_pipe.build();
var small_maragingsteel_pipe = newBuilder("small_maragingsteel_pipe", "extrusion_press", 500);
small_maragingsteel_pipe.addEnergyPerTickInput(2160);
small_maragingsteel_pipe.addItemInput(<ore:ingotMaragingSteel>, 1);
small_maragingsteel_pipe.addItemInput(<ore:metalPressMoldSmallPipe>).setChance(0);
small_maragingsteel_pipe.addItemOutput(<ore:smallPipeMaragingSteel>.firstItem * 4);
small_maragingsteel_pipe.build();
//Pipe
var pipe_aluminium = newBuilder("pipe_aluminium", "extrusion_press", 300);
pipe_aluminium.addEnergyPerTickInput(720);
pipe_aluminium.addItemInput(<ore:ingotAluminum>, 1);
pipe_aluminium.addItemInput(<ore:metalPressMoldPipe>).setChance(0);
pipe_aluminium.addItemOutput(<immersiveengineering:metal_device1:6> * 2);
pipe_aluminium.build();
var pipe_iron = newBuilder("pipe_iron", "extrusion_press", 300);
pipe_iron.addEnergyPerTickInput(720);
pipe_iron.addItemInput(<ore:ingotIron>, 1);
pipe_iron.addItemInput(<ore:metalPressMoldPipe>).setChance(0);
pipe_iron.addItemOutput(<immersiveengineering:metal_device1:6> * 2);
pipe_iron.build();
var pipe_steel = newBuilder("pipe_steel", "extrusion_press", 300);
pipe_steel.addEnergyPerTickInput(720);
pipe_steel.addItemInput(<ore:ingotSteel>, 1);
pipe_steel.addItemInput(<ore:metalPressMoldPipe>).setChance(0);
pipe_steel.addItemOutput(<immersiveengineering:metal_device1:6> * 2);
pipe_steel.build();
//Barrels & Tanks
var iron_barrel_shell = newBuilder("iron_barrel_shell", "extrusion_press", 200);
iron_barrel_shell.addEnergyPerTickInput(720);
iron_barrel_shell.addItemInput(<ore:ingotIron>, 4);
iron_barrel_shell.addItemInput(<ore:metalPressMoldBarrel>).setChance(0);
iron_barrel_shell.addItemOutput(<contenttweaker:metal_barrel_shell>);
iron_barrel_shell.build();
var steel_barrel_shell = newBuilder("steel_barrel_shell", "extrusion_press", 200);
steel_barrel_shell.addEnergyPerTickInput(720);
steel_barrel_shell.addItemInput(<ore:ingotSteel>, 4);
steel_barrel_shell.addItemInput(<ore:metalPressMoldBarrel>).setChance(0);
steel_barrel_shell.addItemOutput(<contenttweaker:steel_barrel_shell>);
steel_barrel_shell.build();
//Gears
var steel_gear = newBuilder("steel_gear", "extrusion_press", 200);
steel_gear.addEnergyPerTickInput(720);
steel_gear.addItemInput(<immersiveengineering:metal:8> * 4);
steel_gear.addItemInput(<immersiveengineering:mold:1>).setChance(0);
steel_gear.addItemOutput(<libvulpes:productgear:6>);
steel_gear.build();
var titanium_gear = newBuilder("titanium_gear", "extrusion_press", 200);
titanium_gear.addEnergyPerTickInput(2160);
titanium_gear.addItemInput(<ore:ingotTitanium>, 4);
titanium_gear.addItemInput(<immersiveengineering:mold:1>).setChance(0);
titanium_gear.addItemOutput(<libvulpes:productgear:7>);
titanium_gear.build();
var titanium_aluminide_gear = newBuilder("titanium_aluminide_gear", "extrusion_press", 200);
titanium_aluminide_gear.addEnergyPerTickInput(2160);
titanium_aluminide_gear.addItemInput(<ore:ingotTitaniumAluminide>, 4);
titanium_aluminide_gear.addItemInput(<immersiveengineering:mold:1>).setChance(0);
titanium_aluminide_gear.addItemOutput(<advancedrocketry:productgear:0>);
titanium_aluminide_gear.build();
var titanium_iridium_gear = newBuilder("titanium_iridium_gear", "extrusion_press", 200);
titanium_iridium_gear.addEnergyPerTickInput(2160);
titanium_iridium_gear.addItemInput(<ore:ingotTitaniumIridium>, 4);
titanium_iridium_gear.addItemInput(<immersiveengineering:mold:1>).setChance(0);
titanium_iridium_gear.addItemOutput(<advancedrocketry:productgear:1>);
titanium_iridium_gear.build();
//Fibers
var basalt_fiber = newBuilder("basalt_fiber", "extrusion_press", 4500);
basalt_fiber.addEnergyPerTickInput(720);
basalt_fiber.addItemInput(<contenttweaker:crushed_basalt>);
basalt_fiber.addItemInput(<ore:metalPressMoldFiber>).setChance(0);
basalt_fiber.addItemOutput(<ore:fiberBasalt>.firstItem * 36);
basalt_fiber.build();
var bitumen_fiber = newBuilder("bitumen_fiber", "extrusion_press", 500);
bitumen_fiber.addEnergyPerTickInput(720);
bitumen_fiber.addItemInput(<immersivepetroleum:material>);
bitumen_fiber.addItemInput(<ore:metalPressMoldFiber>).setChance(0);
bitumen_fiber.addItemOutput(<ore:fiberBitumen>.firstItem * 2);
bitumen_fiber.build();
var graphite_fiber = newBuilder("graphite_fiber", "extrusion_press", 500);
graphite_fiber.addEnergyPerTickInput(720);
graphite_fiber.addItemInput(<ore:ingotHOPGraphite>);
graphite_fiber.addItemInput(<ore:metalPressMoldFiber>).setChance(0);
graphite_fiber.addItemOutput(<ore:fiberBitumen>.firstItem * 4);
graphite_fiber.build();
