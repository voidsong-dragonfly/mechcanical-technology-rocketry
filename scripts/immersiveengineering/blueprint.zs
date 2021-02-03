//Import
import mods.immersiveengineering.Blueprint;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;



 /*
    Blueprint crafting recipes - so you can actually use the custom ones
*/

//Make "Components" blueprint craftable without aluminium
recipes.replaceAllOccurences(<ore:ingotAluminum>, <ore:ingotTin>, <immersiveengineering:blueprint>.withTag({blueprint: "components"}));
recipes.replaceAllOccurences(<ore:plateAluminum>, <ore:plateTin>, <immersiveengineering:toolbox>);

//Make "Circuit Assembly" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Circuit Assembly"}),
 [[null, <immersiveengineering:material:26>, null],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]); 

//Make "Machine Structures" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Machine Structures"}),
 [[null, <ore:ingotOsmium>, null],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Make "Fission Reactor Components" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Fission Reactor Components"}),
 [[<immersiveengineering:metal_device1:6>, <ore:ingotZirconiumNiobium>, <immersiveengineering:metal_device1:6>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]); 

//Make "Rocket Engine Components" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Rocket Engine Components"}),
 [[<immersiveengineering:metal_device1:6>, <contenttweaker:small_titanium_pipe>, <immersiveengineering:metal_device1:6>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]); 
 
//Make "Rocketry Components" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Rocket Components"}),
 [[<immersiveengineering:metal_device1:6>, <contenttweaker:titanium_aluminide_scaffolding_panel>, <immersiveengineering:metal_device1:6>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]); 
 
//Make "Asteroid Mining Components" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Asteroid Mining Components"}),
 [[<immersiveengineering:metal_device1:6>, <advancedrocketry:blocklens>, <immersiveengineering:metal_device1:6>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]); 
 
//Make "Extrusion Dies" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Extrusion Dies"}),
 [[<immersiveengineering:tool:0>, <ore:plateSteel>, <immersiveengineering:tool:1>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);
 
//Make "Heavy Metal Press Dies" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Heavy Metal Press Dies"}),
 [[null, <ore:blockSteel>, null],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Make "Scaffolding Assembly" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Scaffolding Assembly"}),
 [[null, <ore:scaffoldingSteel>, null],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);
 
 
 
 /*
    Blueprint recipes - anything that goes in the "advanced crafting" of the IE Worrkbench
*/

//Add iridium and tungsten Arc Furnace Electrodes that are "infinite"
Blueprint.addRecipe("electrode", <immersiveengineering:graphite_electrode>.withTag({graphDmg:-6048000}), [<immersiveengineering:graphite_electrode>, <ore:stickTungsten>, <ore:stickTungsten>, <ore:stickTungsten>, <ore:stickTungsten>]);
Blueprint.addRecipe("electrode", <immersiveengineering:graphite_electrode>.withTag({graphDmg:-24480000}), [<immersiveengineering:graphite_electrode>, <ore:stickIridium>, <ore:stickIridium>, <ore:stickIridium>, <ore:stickIridium>]);

//Add REDIA Repair blueprint, and make REDIA tool crafting make more sense [changed from adv. tools blueprint]
recipes.remove(<engineerstools:redia_tool>);
Blueprint.removeRecipe(<immersive_energy:toolupgrade:0>);
Blueprint.removeRecipe(<immersive_energy:toolupgrade:1>);
Blueprint.removeRecipe(<immersive_energy:toolupgrade:2>);
Blueprint.removeRecipe(<immersive_energy:toolupgrade:3>);
Blueprint.removeRecipe(<immersive_energy:hefty_wrench>);
hide(<immersive_energy:toolupgrade:0>);
hide(<immersive_energy:toolupgrade:1>);
hide(<immersive_energy:toolupgrade:2>);
hide(<immersive_energy:toolupgrade:3>);
hide(<immersive_energy:hefty_wrench>);
Blueprint.addRecipe("advanced_tool", <engineerstools:redia_tool>, [<engineerstools:redia_tool>.anyDamage(), <ore:dustDiamond>, <ore:stickSteel>]);
Blueprint.addRecipe("advanced_tool", <engineerstools:redia_tool>, [<ore:dustDiamond>, <ore:stickSteel> * 2, <ore:plateSteel> * 2, <ore:ingotSteel>, <ore:stickTreatedWood> * 2]);

//Make Advanced Rocketry solar panels recipes closer to that of 1st generation PV cells (1950s), and make them use IEn crafting materials
recipes.remove(<advancedrocketry:solarpanel>);
recipes.remove(<advancedrocketry:solargenerator>);
recipes.remove(<advancedrocketry:satellitepowersource>);
recipes.remove(<advancedrocketry:satellitepowersource:1>);
hide(<immersive_energy:metal_generators0>);
Blueprint.removeRecipe(<immersive_energy:material:1>);
Blueprint.removeRecipe(<immersive_energy:metal_generators0>);
Blueprint.addRecipe("solar", <immersive_energy:material:1>, [<ore:paneGlassColorless>, <contenttweaker:lithium_doped_silicon_wafer>, <ore:plateAluminum>]);
Blueprint.addRecipe("solar", <advancedrocketry:satellitepowersource>, [<ore:stickSteel>, <immersive_energy:material:1>, <immersive_energy:material:1>]);
Blueprint.addRecipe("solar", <advancedrocketry:satellitepowersource:1>, [<advancedrocketry:satellitepowersource>, <advancedrocketry:satellitepowersource>, <advancedrocketry:satellitepowersource>, <advancedrocketry:satellitepowersource>, <advancedrocketry:satellitepowersource>, <advancedrocketry:satellitepowersource>]);
Blueprint.addRecipe("solar", <advancedrocketry:solarpanel>, [<immersive_energy:material:1>, <ore:plateAluminum>, <libvulpes:structuremachine>]);
Blueprint.addRecipe("solar", <advancedrocketry:solargenerator>, [<immersive_energy:material:1>, <ore:plateAluminum>, <libvulpes:structuremachine>, <libvulpes:battery>]);

//Mechanical Components
Blueprint.removeRecipe(<immersiveengineering:material:8>);
Blueprint.removeRecipe(<immersiveengineering:material:9>);
Blueprint.addRecipe("components", <immersiveengineering:material:8>, [<ore:plateIron>, <ore:plateIron>, <ore:ingotCopper>]);
Blueprint.addRecipe("components", <immersiveengineering:material:9>, [<immersiveengineering:metal:38>, <immersiveengineering:metal:38>, <ore:ingotCopper>]);
Blueprint.addRecipe("components", <contenttweaker:high_carbon_steel_mechanical_component>, [<ore:plateHighCarbonSteel>, <ore:plateHighCarbonSteel>, <ore:ingotCopper>]);
Blueprint.addRecipe("components", <contenttweaker:maraging_steel_mechanical_component>, [<ore:plateMaragingSteel>, <ore:plateMaragingSteel>, <ore:ingotCopper>]);

//Circuit pieces blueprint
Blueprint.removeRecipe(<immersiveengineering:material:27>);
Blueprint.addRecipe("Circuit Assembly", <immersiveengineering:material:27>, [<ore:plateSteel>, <immersiveengineering:stone_decoration:8>, <ore:wireCopper> * 4, <ore:electronTube> * 2]);
Blueprint.addRecipe("Circuit Assembly", <contenttweaker:treated_wood_circuit_board>, [<ore:slabTreatedWood>]);
Blueprint.addRecipe("Circuit Assembly", <mekanism:controlcircuit>, [<immersiveengineering:material:27> * 2, <contenttweaker:treated_wood_circuit_board>, <immersiveengineering:wirecoil:5> * 2]);

//Molds
Blueprint.addRecipe("molds", <contenttweaker:ingot_mold>, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);

//Extrusion dies blueprint
Blueprint.addRecipe("Extrusion Dies", <contenttweaker:small_pipe_die>, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Extrusion Dies", <contenttweaker:pipe_die>, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Extrusion Dies", <contenttweaker:barrel_die>, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Extrusion Dies", <contenttweaker:rod_die>, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Extrusion Dies", <contenttweaker:wire_die>, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);

//Heavy Metal Press dies blueprint
Blueprint.addRecipe("Heavy Metal Press Dies", <contenttweaker:bell_die>, [<ore:blockSteel>, <earthworks:tool_compass>,  <immersiveengineering:tool:0>]);
Blueprint.addRecipe("Heavy Metal Press Dies", <contenttweaker:scaffolding_panel_die>, [<ore:blockSteel>, <earthworks:tool_compass>, <immersiveengineering:tool:0>]);

//Crafting components
Blueprint.addRecipe("components", <contenttweaker:small_battery_hull> * 4, [<ore:stickCopper>, <ore:plateLead>, <ore:plateTin>, <ore:plateLead>, <ore:plateTin>, <ore:plateLead>]);
Blueprint.addRecipe("components", <immersiveengineering:material:26> * 6, [<ore:blockGlass>, <ore:plateNickel>, <ore:wireTungsten>, <ore:dustRedstone>]);
Blueprint.addRecipe("components", <contenttweaker:supercapacitor_hull>, [<mekanism:polyethene:2> * 8, <ore:dustHOPGraphite> * 6, <ore:dustSalt> * 3, <ore:sheetCopper> * 2]);

//Environmental Suit blueprint
Blueprint.removeRecipe(<immersive_energy:power_armor_suit_head>);
Blueprint.removeRecipe(<immersive_energy:power_armor_suit_body>);
Blueprint.removeRecipe(<immersive_energy:power_armor_suit_leggs>);
Blueprint.removeRecipe(<immersive_energy:power_armor_suit_boots>);
Blueprint.addRecipe("powerarmor", <immersive_energy:power_armor_suit_head>, [<immersiveengineering:steel_armor_head>, <ore:plateTungsten>, <ore:fabricHemp> * 4, <immersiveengineering:earmuffs>]);
Blueprint.addRecipe("powerarmor", <immersive_energy:power_armor_suit_body>, [<immersiveengineering:steel_armor_chest>, <ore:plateTungsten> * 2, <ore:fabricHemp> * 4, <immersiveengineering:metal_device0:2>]);
Blueprint.addRecipe("powerarmor", <immersive_energy:power_armor_suit_leggs>, [<immersiveengineering:steel_armor_legs>, <ore:plateTungsten> * 2, <ore:fabricHemp> * 4, <immersiveengineering:wirecoil:2> * 4]);
Blueprint.addRecipe("powerarmor", <immersive_energy:power_armor_suit_boots>, [<immersiveengineering:steel_armor_feet>, <ore:plateTungsten>, <ore:fabricHemp> * 4, <ore:blockSlime>]);
Blueprint.addRecipe("powerarmor", <advancedrocketry:spacehelmet>, [<minecraft:leather_helmet>, <ore:sheetTitaniumAluminide> * 2, <quark:quilted_wool>, <ore:paneGlass>]);
Blueprint.addRecipe("powerarmor", <advancedrocketry:spacechestplate>, [<minecraft:leather_chestplate>, <ore:sheetTitaniumAluminide> * 4, <quark:quilted_wool>, <advancedrocketry:fueltank>]);
Blueprint.addRecipe("powerarmor", <advancedrocketry:spaceleggings>, [<minecraft:leather_leggings>, <ore:sheetTitaniumAluminide> * 4, <quark:quilted_wool>, <ore:stickSteel>]);
Blueprint.addRecipe("powerarmor", <advancedrocketry:spaceboots>, [<minecraft:leather_boots>, <ore:sheetTitaniumAluminide> * 2, <quark:quilted_wool>, <ore:plateSteel>]);

//Fission reactor blueprint
recipes.remove(<rustic:stone_pillar>);
Blueprint.addRecipe("Fission Reactor Components", <rustic:stone_pillar>, [<contenttweaker:zirconium_niobium_frame>, <contenttweaker:small_zirconium_niobium_pipe> * 9]);
Blueprint.addRecipe("Fission Reactor Components", <contenttweaker:fission_reactor_fuel_rod_assembly_pipe_connector>, [<immersiveengineering:metal_decoration1:1>, <engineersdecor:straight_pipe_valve_redstone_analog>, <immersiveengineering:metal_device1:6>]);
Blueprint.addRecipe("Fission Reactor Components", <contenttweaker:fission_reactor_calandria_casing_shell>, [<contenttweaker:steel_scaffolding_panel> * 6, <libvulpes:productsheet:6> * 6, <ore:sheetLead> * 6]);
Blueprint.addRecipe("Fission Reactor Components", <contenttweaker:fission_reactor_calandria_casing_shell>, [<contenttweaker:high_carbon_steel_scaffolding_panel> * 6, <contenttweaker:high_carbon_steel_sheet> * 6, <ore:sheetLead> * 6]);
Blueprint.addRecipe("Fission Reactor Components", <contenttweaker:fission_reactor_calandria_casing_shell>, [<contenttweaker:maraging_steel_scaffolding_panel> * 6, <contenttweaker:maraging_steel_sheet> * 6, <ore:sheetLead> * 6]);
recipes.remove(<immersiveengineering:stone_decoration:7>);
Blueprint.addRecipe("Fission Reactor Components", <immersiveengineering:stone_decoration:7>, [<engineersdecor:rebar_concrete>, <ore:plateLead>, <ore:plateLead>, <ore:plateLead>, <ore:plateLead>]);
Blueprint.addRecipe("Fission Reactor Components", <contenttweaker:fresh_fuel_bundle>, [<contenttweaker:small_zirconium_niobium_pipe> * 9, <contenttweaker:uranium_fuel_pellet> * 64, <contenttweaker:uranium_fuel_pellet> * 8]);
Blueprint.addRecipe("Fission Reactor Components", <contenttweaker:control_rod_bundle>, [<contenttweaker:small_zirconium_niobium_pipe> * 20, <ore:stickSilverIndium> * 20]);

//Rocket engine components blueprint
Blueprint.addRecipe("Rocket Engine Components", <contenttweaker:titanium_compressor_blade> * 32, [<ore:stickTitanium>, <ore:plateTitanium>, <ore:stickTitanium>, <ore:plateTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>]);
Blueprint.addRecipe("Rocket Engine Components", <contenttweaker:titanium_compressor>, [<contenttweaker:titanium_compressor_blade> * 16, <ore:stickSteel>]);
Blueprint.addRecipe("Rocket Engine Components", <contenttweaker:turbopump>, [<ore:plateSteel> * 4, <contenttweaker:titanium_compressor>, <ore:circuitAdvanced>, <contenttweaker:small_titanium_pipe> * 4]);
Blueprint.addRecipe("Rocket Engine Components", <contenttweaker:catalytic_turbopump>, [<ore:plateSteel> * 3, <contenttweaker:titanium_compressor>, <ore:platePlatinum>, <contenttweaker:small_titanium_pipe> * 4, <ore:circuitAdvanced>, <contenttweaker:alumina_dust> * 2]);

//Rocketry blueprint
Blueprint.addRecipe("Rocket Components", <advancedrocketry:fueltank>, [<contenttweaker:titanium_aluminide_scaffolding_panel> * 2, <contenttweaker:pressurized_helium_tank>, <contenttweaker:fuel_tank_shell>, <ore:stickTitaniumAluminide> * 4]);
Blueprint.addRecipe("Rocket Components", <advancedrocketry:fueltank>, [<contenttweaker:maraging_steel_scaffolding_panel> * 2, <contenttweaker:pressurized_helium_tank>, <contenttweaker:fuel_tank_shell>, <ore:stickMaragingSteel> * 4]);
Blueprint.addRecipe("Rocket Components", <advancedrocketry:bipropellantfueltank>, [<contenttweaker:titanium_aluminide_scaffolding_panel> * 2, <contenttweaker:pressurized_helium_tank>, <contenttweaker:fuel_tank_shell>, <ore:stickTitaniumAluminide> * 4]);
Blueprint.addRecipe("Rocket Components", <advancedrocketry:bipropellantfueltank>, [<contenttweaker:maraging_steel_scaffolding_panel> * 2, <contenttweaker:pressurized_helium_tank>, <contenttweaker:fuel_tank_shell>, <ore:stickMaragingSteel> * 4]);
Blueprint.addRecipe("Rocket Components", <advancedrocketry:oxidizerfueltank>, [<contenttweaker:titanium_aluminide_scaffolding_panel> * 2, <contenttweaker:pressurized_helium_tank>, <contenttweaker:fuel_tank_shell>, <ore:stickTitaniumAluminide> * 4]);
Blueprint.addRecipe("Rocket Components", <advancedrocketry:oxidizerfueltank>, [<contenttweaker:maraging_steel_scaffolding_panel> * 2, <contenttweaker:pressurized_helium_tank>, <contenttweaker:fuel_tank_shell>, <ore:stickMaragingSteel> * 4]);
Blueprint.addRecipe("Rocket Components", <advancedrocketry:rocketmotor>, [<contenttweaker:titanium_aluminide_scaffolding_panel> * 2, <contenttweaker:catalytic_turbopump>, <contenttweaker:small_titanium_pipe> * 4, <immersiveengineering:toolupgrade:7>, <contenttweaker:rocket_engine_bell>]);
Blueprint.addRecipe("Rocket Components", <advancedrocketry:bipropellantrocketmotor>, [<contenttweaker:titanium_aluminide_scaffolding_panel> * 2, <contenttweaker:turbopump>, <contenttweaker:small_titanium_pipe> * 4, <immersiveengineering:toolupgrade:7>, <immersiveengineering:toolupgrade:7>, <contenttweaker:rocket_engine_bell>]);
Blueprint.addRecipe("Rocket Components", <advancedrocketry:advbipropellantrocketmotor>, [<contenttweaker:maraging_steel_scaffolding_panel> * 2, <contenttweaker:turbopump>, <contenttweaker:small_titanium_pipe> * 4, <immersiveengineering:toolupgrade:7>, <immersiveengineering:toolupgrade:7>, <contenttweaker:advanced_rocket_engine_bell>]);

//Asteroid Mining blueprint
Blueprint.addRecipe("Asteroid Mining Components", <contenttweaker:mirror_assembly>, [<ore:sheetAluminum> * 64, <ore:sheetAluminum> * 64, <ore:wireAluminum> * 32, <ore:stickAluminum> * 16]);
Blueprint.addRecipe("Asteroid Mining Components", <contenttweaker:collection_array>, [<advancedrocketry:satellitepowersource:1> * 8, <libvulpes:structuremachine>, <immersiveengineering:metal_decoration0:2> * 2, <immersiveengineering:material:14> * 4]);
Blueprint.addRecipe("Asteroid Mining Components", <advancedrocketry:drill> * 4, [<contenttweaker:mirror_assembly> * 4, <contenttweaker:collection_array>]);

//Scaffolding blueprint
Blueprint.addRecipe("Scaffolding Assembly", <immersiveengineering:metal_decoration1:1> * 1, [<contenttweaker:steel_scaffolding_panel> * 6]);
Blueprint.addRecipe("Scaffolding Assembly", <immersiveengineering:metal_decoration1:1> * 1, [<contenttweaker:high_carbon_steel_scaffolding_panel> * 6]);
Blueprint.addRecipe("Scaffolding Assembly", <immersiveengineering:metal_decoration1:1> * 1, [<contenttweaker:maraging_steel_scaffolding_panel> * 6]);
Blueprint.addRecipe("Scaffolding Assembly", <immersiveengineering:metal_decoration1:5> * 1, [<contenttweaker:aluminium_scaffolding_panel> * 6]);
Blueprint.addRecipe("Scaffolding Assembly", <contenttweaker:zirconium_niobium_frame> * 1, [<contenttweaker:zirconium_niobium_scaffolding_panel> * 6]);
Blueprint.addRecipe("Scaffolding Assembly", <advancedrocketry:structuretower> * 1, [<contenttweaker:steel_scaffolding_panel> * 4]);
Blueprint.addRecipe("Scaffolding Assembly", <advancedrocketry:structuretower> * 1, [<contenttweaker:high_carbon_steel_scaffolding_panel> * 4]);
Blueprint.addRecipe("Scaffolding Assembly", <advancedrocketry:structuretower> * 1, [<contenttweaker:maraging_steel_scaffolding_panel> * 4]);
