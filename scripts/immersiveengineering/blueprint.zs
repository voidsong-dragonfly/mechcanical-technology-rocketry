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

//Make "Solar Panels" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Solar Panels"}),
 [[<ore:paneGlass>, <ore:plateAluminum>, <ore:paneGlass>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);
 
//Make "REDIA" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "REDIA"}),
 [[null, <ore:dustDiamond>, null],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);
 
//Make "Computers" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Computers"}),
 [[null, <immersiveengineering:material:27>, null],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Make "Advanced Armor" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Advanced Armor"}),
 [[null, <ore:sheetTitaniumAluminide>, null],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);
 
//Make "Fission Reactor Components" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Fission Reactor Components"}),
 [[<immersiveengineering:metal_device1:6>, <ore:ingotZirconiumNiobiumAlloy>, <immersiveengineering:metal_device1:6>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);
 
//Make "Fusion Reactor & Particle Containment Components" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Fusion Reactor & Particle Containment Components"}),
 [[<immersiveengineering:metal_device1:6>, <ore:scaffoldingPanelTungstensteel>, <immersiveengineering:metal_device1:6>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]); 

//Make "Rocket Engine Components" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Rocket Engine Components"}),
 [[<immersiveengineering:metal_device1:6>, <ore:smallPipeTitanium>, <immersiveengineering:metal_device1:6>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]); 
 
//Make "Rocketry Components" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Combustion Rocket Components"}),
 [[<immersiveengineering:metal_device1:6>, <ore:scaffoldingPanelAluminiumMagnesiumTitanide>, <immersiveengineering:metal_device1:6>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]); 
 
//Make "Nuclear Rocketry Components" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Nuclear Rocket Components"}),
 [[<immersiveengineering:metal_device1:6>, <ore:scaffoldingPanelMaragingSteel>, <immersiveengineering:metal_device1:6>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);
 
//Make "Metal Press Secondary Molds" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Metal Press Secondary Molds"}),
 [[<immersiveengineering:tool:0>, <ore:plateSteel>, <immersiveengineering:tool:1>],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);

//Make "Specialty Electric Components" blueprint craftable
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "Specialty Electric Components"}),
 [[null, <mekanism:polyethene:2>, null],
 [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
 [<ore:paper>, <ore:paper>, <ore:paper>]]);
 
 
 
 /*
    Blueprint recipes - anything that goes in the "advanced crafting" of the IE Worrkbench
*/

//Add iridium and tungsten Arc Furnace Electrodes that are "infinite"
Blueprint.addRecipe("electrode", <immersiveengineering:graphite_electrode>.withTag({graphDmg:-1440000}), [<immersiveengineering:graphite_electrode>, <ore:stickTungsten>, <ore:stickTungsten>, <ore:stickTungsten>, <ore:stickTungsten>]);
Blueprint.addRecipe("electrode", <immersiveengineering:graphite_electrode>.withTag({graphDmg:-6048000}), [<immersiveengineering:graphite_electrode>, <ore:stickIridium>, <ore:stickIridium>, <ore:stickIridium>, <ore:stickIridium>]);

//Railgun rods
Blueprint.addRecipe("specialBullet", <ore:stickGraphiteDepletedUraniumComposite>.firstItem * 2, [<immersiveengineering:graphite_electrode>, <ore:nuggetDepletedUraniumDioxide>, <ore:nuggetDepletedUraniumDioxide>, <ore:nuggetDepletedUraniumDioxide>, <ore:nuggetDepletedUraniumDioxide>]);

//Add REDIA Repair blueprint, and make REDIA tool crafting make more sense [changed from adv. tools blueprint]
recipes.remove(<engineerstools:redia_tool>);
Blueprint.addRecipe("REDIA", <engineerstools:redia_tool>, [<engineerstools:redia_tool>.anyDamage(), <ore:dustDiamond>, <ore:stickSteel>]);
Blueprint.addRecipe("REDIA", <engineerstools:redia_tool>, [<ore:dustDiamond>, <ore:stickSteel> * 2, <ore:plateSteel> * 2, <ore:ingotSteel>, <ore:stickTreatedWood> * 2]);

//Make Advanced Rocketry solar panels recipes closer to that of 1st generation PV cells (1950s), and make them use IEn crafting materials
recipes.remove(<advancedrocketry:solarpanel>);
recipes.remove(<advancedrocketry:solararraypanel>);
recipes.remove(<advancedrocketry:solargenerator>);
recipes.remove(<advancedrocketry:satellitepowersource>);
recipes.remove(<advancedrocketry:satellitepowersource:1>);
Blueprint.addRecipe("Solar Panels", <ore:solarPanelItem>.firstItem, [<ore:paneGlassColorless>, <ore:waferLithiumDopedSilicon>, <ore:plateAluminum>]);
Blueprint.addRecipe("Solar Panels", <advancedrocketry:satellitepowersource>, [<ore:stickSteel>, <ore:solarPanelItem>, <ore:solarPanelItem>]);
Blueprint.addRecipe("Solar Panels", <advancedrocketry:satellitepowersource:1>, [<advancedrocketry:satellitepowersource>, <advancedrocketry:satellitepowersource>, <advancedrocketry:satellitepowersource>, <advancedrocketry:satellitepowersource>, <advancedrocketry:satellitepowersource>, <advancedrocketry:satellitepowersource>]);
Blueprint.addRecipe("Solar Panels", <advancedrocketry:solararraypanel>, [<ore:scaffoldingPanelAluminium>, <ore:solarPanelItem>, <ore:solarPanelItem>]);
Blueprint.addRecipe("Solar Panels", <advancedrocketry:solarpanel>, [<ore:solarPanelItem>, <ore:plateAluminum>, <libvulpes:structuremachine>]);
Blueprint.addRecipe("Solar Panels", <advancedrocketry:solargenerator>, [<ore:solarPanelItem>, <ore:plateAluminum>, <libvulpes:structuremachine>, <libvulpes:battery>]);

//Crafting components
Blueprint.removeRecipe(<immersiveengineering:material:8>);
Blueprint.removeRecipe(<immersiveengineering:material:9>);
recipes.replaceAllOccurences(<ore:ingotCopper>, <ore:ingotBronze>, <immersiveengineering:material:9>);
Blueprint.removeRecipe(<immersiveengineering:material:26>);
Blueprint.addRecipe("components", <immersiveengineering:material:8>, [<ore:plateIron>, <ore:plateIron>, <ore:ingotCopper>]);
Blueprint.addRecipe("components", <immersiveengineering:material:9>, [<immersiveengineering:metal:38>, <immersiveengineering:metal:38>, <ore:ingotBronze>]);
Blueprint.addRecipe("components", <ore:mechanicalComponentMaragingSteel>.firstItem, [<ore:plateMaragingSteel>, <ore:plateMaragingSteel>, <ore:ingotBronze>]);
Blueprint.addRecipe("components", <immersiveengineering:material:26> * 3, [<ore:blockGlass>, <ore:plateNickel>, <ore:wireCopper>, <ore:dustRedstone>]);
Blueprint.addRecipe("components", <immersiveengineering:material:26> * 6, [<ore:blockGlass>, <ore:plateNickel>, <ore:wireTungsten>, <ore:dustRedstone>]);
Blueprint.addRecipe("components", <ore:smallBatteryHullItem>.firstItem * 4, [<ore:stickCopper>, <ore:plateLead>, <ore:plateLead>, <ore:plateLead>, <ore:plateTin>, <ore:plateTin>]);
Blueprint.addRecipe("components", <ore:itemBattery>.firstItem * 8, [<ore:stickCopper>, <ore:plateNickel>, <ore:plateNickel>, <ore:plateTitanium>, <ore:plateAluminum>, <ore:plateAluminum>]);

//Superconductors
Blueprint.addRecipe("Specialty Electric Components", <ore:unfilledSuperconductorCableItem>.firstItem * 4, [<ore:sheetSteel> * 4, <ore:wireNiobiumTitaniumAlloy> * 8, <ore:smallPipeTungstensteel> * 4]);
Blueprint.addRecipe("Specialty Electric Components", <ore:unfilledHighCurrentSuperconductorCableItem>.firstItem * 4, [<ore:sheetSteel> * 4, <ore:wireYttriumBariumCuprate> * 8, <ore:smallPipeTungstensteel> * 4]);
Blueprint.addRecipe("Specialty Electric Components", <ore:supercapacitorHullItem>.firstItem, [<mekanism:polyethene:2> * 8, <ore:dustHOPGraphite> * 6, <ore:dustSalt> * 3, <ore:sheetCopper> * 2]);

//Circuit pieces blueprint
Blueprint.removeRecipe(<immersiveengineering:material:27>);
recipes.remove(<advancedrocketry:ic:3>);
recipes.remove(<advancedrocketry:ic:4>);
recipes.remove(<advancedrocketry:ic:5>);
Blueprint.addRecipe("Circuit Assembly", <immersiveengineering:material:27>, [<ore:plateSteel>, <immersiveengineering:stone_decoration:8>, <ore:wireCopper> * 4, <ore:electronTube> * 2]);
Blueprint.addRecipe("Circuit Assembly", <mekanism:controlcircuit>, [<immersiveengineering:material:27> * 2, <engineersdecor:halfslab_treated_wood>, <immersiveengineering:wirecoil:5> * 2]);
Blueprint.addRecipe("Circuit Assembly", <advancedrocketry:ic:3>, [<ore:circuitBasic> * 1, <ore:solderItem> * 4, <ore:plateCopper> * 3, <engineersdecor:halfslab_treated_wood>]);
Blueprint.addRecipe("Circuit Assembly", <advancedrocketry:ic:4>, [<ore:circuitBasic> * 1, <ore:solderItem> * 4, <ore:plateGold> * 3, <engineersdecor:halfslab_treated_wood>]);
Blueprint.addRecipe("Circuit Assembly", <advancedrocketry:ic:5>, [<ore:circuitBasic> * 1, <ore:solderItem> * 4, <ore:plateSilver> * 3, <engineersdecor:halfslab_treated_wood>]);
Blueprint.addRecipe("Circuit Assembly", <ore:etchingPlateIntegratedCircuit>.firstItem, [<ore:plateNickel>, <ore:plateNickel>, <ore:plateNickel>, <ore:plateNickel>, <ore:plateNickel>, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Circuit Assembly", <ore:etchingPlateCentralProcessingUnit>.firstItem, [<ore:plateNickel>, <ore:plateNickel>, <ore:plateNickel>, <ore:plateNickel>, <ore:plateNickel>, <immersiveengineering:tool:1>]);

//Computers blueprint
Blueprint.addRecipe("Computers", <retrocomputers:backplane>, [<ore:circuitBoardPlastic> * 2, <immersiveengineering:material:27>]);
Blueprint.addRecipe("Computers", <retrocomputers:ribbon_cable> * 16, [<ore:wireCopper> * 8, <mekanism:polyethene:2> * 4]);
Blueprint.addRecipe("Computers", <retrocomputers:writable_disk>, [<mekanism:polyethene:2> * 2, <ore:sheetSteel>]);
Blueprint.addRecipe("Computers", <retrocomputers:computer>, [<mekanism:basicblock:8>, <ore:plateSteel>, <ore:circuitAdvanced>, <retrocomputers:ribbon_cable> * 4]);
Blueprint.addRecipe("Computers", <retrocomputers:terminal>, [<mekanism:basicblock:8>, <advancedrocketry:misc>, <ore:circuitBasic>, <retrocomputers:ribbon_cable>]);
Blueprint.addRecipe("Computers", <retrocomputers:disk_drive>, [<mekanism:basicblock:8>, <ore:mechanicalComponentAny>, <ore:circuitBasic>, <retrocomputers:ribbon_cable>]);
Blueprint.addRecipe("Computers", <retrocomputers:memory>, [<mekanism:basicblock:8>, <ore:circuitPlateRandomAccessMemory> * 8, <ore:circuitBasic>, <retrocomputers:ribbon_cable>]);
Blueprint.addRecipe("Computers", <retrocomputers:radio>, [<mekanism:basicblock:8>, <advancedrocketry:wirelesstransciever>, <ore:circuitElite>, <retrocomputers:ribbon_cable>]);
Blueprint.addRecipe("Computers", <retrocomputers:redstone_port_analog>, [<mekanism:basicblock:8>, <immersiveengineering:wirecoil:5>, <ore:circuitBasic>, <retrocomputers:ribbon_cable>]);
Blueprint.addRecipe("Computers", <retrocomputers:cpu>, [<ore:circuitPlateCentralProcessingUnit> * 4, <ore:smdResistor> * 2, <retrocomputers:ribbon_cable> * 4, <ore:circuitBoardPlastic>]);

//Molds
Blueprint.addRecipe("Metal Press Secondary Molds", <ore:metalPressMoldSmallPipe>.firstItem, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Metal Press Secondary Molds", <ore:metalPressMoldPipe>.firstItem, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Metal Press Secondary Molds", <ore:metalPressMoldBarrel>.firstItem, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Metal Press Secondary Molds", <ore:metalPressMoldFiber>.firstItem, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Metal Press Secondary Molds", <ore:metalPressMoldFuelPellet>.firstItem, [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:tool:1>]);
Blueprint.addRecipe("Metal Press Secondary Molds", <ore:heavyMetalPressDieBell>.firstItem, [<ore:blockSteel>, <earthworks:tool_compass:*>,  <immersiveengineering:tool:0>]);
Blueprint.addRecipe("Metal Press Secondary Molds", <ore:heavyMetalPressDieScaffoldingPanel>.firstItem, [<ore:blockSteel>, <earthworks:tool_compass:*>, <immersiveengineering:tool:0>]);

//Environmental Suit blueprint
/*
Blueprint.addRecipe("powerarmor", <immersive_energy:power_armor_suit_head>, [<immersiveengineering:steel_armor_head>, <ore:plateTungsten>, <ore:fabricHemp> * 4, <immersiveengineering:earmuffs>]);
Blueprint.addRecipe("powerarmor", <immersive_energy:power_armor_suit_body>, [<immersiveengineering:steel_armor_chest>, <ore:plateTungsten> * 2, <ore:fabricHemp> * 4, <immersiveengineering:metal_device0:2>]);
Blueprint.addRecipe("powerarmor", <immersive_energy:power_armor_suit_leggs>, [<immersiveengineering:steel_armor_legs>, <ore:plateTungsten> * 2, <ore:fabricHemp> * 4, <immersiveengineering:wirecoil:2> * 4]);
Blueprint.addRecipe("powerarmor", <immersive_energy:power_armor_suit_boots>, [<immersiveengineering:steel_armor_feet>, <ore:plateTungsten>, <ore:fabricHemp> * 4, <ore:blockSlime>]);
*/
Blueprint.addRecipe("Advanced Armor", <advancedrocketry:spacehelmet>, [<mekanism:polyethene:2> * 5, <ore:plateNickel> * 2, <quark:quilted_wool>, <ore:paneGlassColorless>]);
Blueprint.addRecipe("Advanced Armor", <advancedrocketry:spacechestplate>, [<mekanism:polyethene:2> * 8, <ore:plateNickel> * 4, <quark:quilted_wool> * 2, <advancedrocketry:pressuretank:2>]);
Blueprint.addRecipe("Advanced Armor", <advancedrocketry:spaceleggings>, [<mekanism:polyethene:2> * 7, <ore:plateNickel> * 3, <quark:quilted_wool> * 2, <ore:stickSteel>]);
Blueprint.addRecipe("Advanced Armor", <advancedrocketry:spaceboots>, [<mekanism:polyethene:2> * 4, <ore:plateNickel> * 2, <quark:quilted_wool>, <ore:plateSteel>]);

//Fission reactor blueprint
recipes.remove(<rustic:stone_pillar>);
Blueprint.addRecipe("Fission Reactor Components", <rustic:stone_pillar>, [<contenttweaker:zirconium_niobium_alloy_frame>, <ore:smallPipeZirconiumNiobiumAlloy> * 9]);
Blueprint.addRecipe("Fission Reactor Components", <contenttweaker:fission_reactor_fuel_rod_assembly_pipe_connector>, [<immersiveengineering:metal_decoration1:1>, <engineersdecor:straight_pipe_valve_redstone_analog>, <immersiveengineering:metal_device1:6>]);
Blueprint.addRecipe("Fission Reactor Components", <contenttweaker:fission_reactor_calandria_casing>, [<immersiveengineering:stone_decoration:7>, <ore:sheetSteel> * 6]);
recipes.remove(<immersiveengineering:stone_decoration:7>);
Blueprint.addRecipe("Fission Reactor Components", <immersiveengineering:stone_decoration:7>, [<engineersdecor:rebar_concrete>, <ore:plateLead>, <ore:plateLead>, <ore:plateLead>, <ore:plateLead>]);
Blueprint.addRecipe("Fission Reactor Components", <ore:fuelBundleFresh>.firstItem, [<ore:smallPipeZirconiumNiobiumAlloy> * 9, <ore:fuelPelletLightlyEnrichedUraniumDioxide> * 64, <ore:fuelPelletLightlyEnrichedUraniumDioxide> * 8]);
Blueprint.addRecipe("Fission Reactor Components", <ore:rodBundleControl>.firstItem, [<ore:smallPipeZirconiumNiobiumAlloy> * 20, <ore:stickSilverIndiumAlloy> * 20]);

//Fusion+ multiblock components
Blueprint.addRecipe("Fusion Reactor & Particle Containment Components", <contenttweaker:fusion_reactor_outer_casing>, [<contenttweaker:tungstensteel_frame>, <ore:plateTungsten> * 6, <mekanism:transmitter>.withTag({tier: 3}) * 2, <ore:circuitAdvanced>]);
Blueprint.addRecipe("Fusion Reactor & Particle Containment Components", <contenttweaker:fusion_reactor_inner_casing>, [<contenttweaker:tungstensteel_frame>, <ore:plateTungsten> * 6, <ore:smallPipeTungstensteel> * 4, <ore:circuitAdvanced>]);
Blueprint.addRecipe("Fusion Reactor & Particle Containment Components", <contenttweaker:superconductive_coil>, [<ore:scaffoldingSteel>, <ore:unfilledSuperconductorCableItem> * 8]);
Blueprint.addRecipe("Fusion Reactor & Particle Containment Components", <contenttweaker:high_current_superconductive_coil>, [<ore:scaffoldingSteel>, <ore:unfilledHighCurrentSuperconductorCableItem> * 8]);
Blueprint.addRecipe("Fusion Reactor & Particle Containment Components", <contenttweaker:particle_accelerator_casing>, [<contenttweaker:tungstensteel_frame>, <ore:plateMaragingSteel> * 6, <ore:mechanicalComponentMaragingSteel>, <ore:circuitElite>]);
Blueprint.addRecipe("Fusion Reactor & Particle Containment Components", <contenttweaker:beam_control_lens>, [<ore:scaffoldingSteel>, <portalgun:item_miniature_black_hole> * 6, <ore:mechanicalComponentMaragingSteel> * 4, <ore:perfectCircuitItem>]);
Blueprint.addRecipe("Fusion Reactor & Particle Containment Components", <contenttweaker:particle_containment_casing>, [<contenttweaker:titanium_iridium_alloy_frame>, <ore:sheetTitaniumIridium> * 6, <ore:sheetTitaniumIridium> * 6, <ore:smallPipeTungstensteel> * 4]);

//Rocket engine components blueprint
Blueprint.addRecipe("Rocket Engine Components", <ore:compressorAluminiumMagnesiumTitanide>.firstItem, [<ore:stickTitanium>, <ore:plateTitaniumAluminide> * 4, <ore:stickTitaniumAluminide> * 4, <ore:mechanicalComponentAnySteel>]);
Blueprint.addRecipe("Rocket Engine Components", <ore:turbopumpItem>.firstItem, [<ore:plateSteel> * 4, <ore:compressorAluminiumMagnesiumTitanide>, <ore:circuitAdvanced>, <ore:smallPipeTitanium> * 4]);
Blueprint.addRecipe("Rocket Engine Components", <ore:catalyticTurbopumpItem>.firstItem, [<ore:plateSteel> * 3, <ore:compressorAluminiumMagnesiumTitanide>, <ore:platePlatinum>, <ore:smallPipeTitanium> * 4, <ore:circuitAdvanced>, <ore:dustAlumina> * 2]);

//Combustion Rocketry blueprint
Blueprint.addRecipe("Combustion Rocket Components", <advancedrocketry:fueltank>, [<ore:scaffoldingPanelAluminiumMagnesiumTitanide> * 2, <ore:heliumTankItem>, <ore:fuelTankShellItem>, <ore:stickTitaniumAluminide> * 4]);
Blueprint.addRecipe("Combustion Rocket Components", <advancedrocketry:fueltank>, [<ore:scaffoldingPanelMaragingSteel> * 2, <ore:heliumTankItem>, <ore:fuelTankShellItem>, <ore:stickMaragingSteel> * 4]);
Blueprint.addRecipe("Combustion Rocket Components", <advancedrocketry:bipropellantfueltank>, [<ore:scaffoldingPanelAluminiumMagnesiumTitanide> * 2, <ore:heliumTankItem>, <ore:fuelTankShellItem>, <ore:stickTitaniumAluminide> * 4]);
Blueprint.addRecipe("Combustion Rocket Components", <advancedrocketry:bipropellantfueltank>, [<ore:scaffoldingPanelMaragingSteel> * 2, <ore:heliumTankItem>, <ore:fuelTankShellItem>, <ore:stickMaragingSteel> * 4]);
Blueprint.addRecipe("Combustion Rocket Components", <advancedrocketry:oxidizerfueltank>, [<ore:scaffoldingPanelAluminiumMagnesiumTitanide> * 2, <ore:heliumTankItem>, <ore:fuelTankShellItem>, <ore:stickTitaniumAluminide> * 4]);
Blueprint.addRecipe("Combustion Rocket Components", <advancedrocketry:oxidizerfueltank>, [<ore:scaffoldingPanelMaragingSteel> * 2, <ore:heliumTankItem>, <ore:fuelTankShellItem>, <ore:stickMaragingSteel> * 4]);
Blueprint.addRecipe("Combustion Rocket Components", <advancedrocketry:rocketmotor>, [<ore:scaffoldingPanelAluminiumMagnesiumTitanide> * 2, <ore:catalyticTurbopumpItem>, <ore:smallPipeTitanium> * 4, <immersiveengineering:toolupgrade:7>, <ore:engineBellItem>]);
Blueprint.addRecipe("Combustion Rocket Components", <advancedrocketry:bipropellantrocketmotor>, [<ore:scaffoldingPanelAluminiumMagnesiumTitanide> * 2, <ore:turbopumpItem>, <ore:smallPipeTitanium> * 4, <immersiveengineering:toolupgrade:7>, <immersiveengineering:toolupgrade:7>, <ore:engineBellItem>]);
Blueprint.addRecipe("Combustion Rocket Components", <advancedrocketry:advbipropellantrocketmotor>, [<ore:scaffoldingPanelMaragingSteel> * 2, <ore:turbopumpItem>, <ore:smallPipeTitanium> * 4, <immersiveengineering:toolupgrade:7>, <immersiveengineering:toolupgrade:7>, <ore:advancedEngineBellItem>]);

//Nuclear rocketry blueprint
Blueprint.addRecipe("Nuclear Rocket Components", <advancedrocketry:nuclearfueltank>, [<ore:scaffoldingPanelAluminiumMagnesiumTitanide> * 2, <ore:heliumTankItem>, <ore:fuelTankShellItem>, <ore:stickTitaniumAluminide> * 4]);
Blueprint.addRecipe("Nuclear Rocket Components", <advancedrocketry:nuclearfueltank>, [<ore:scaffoldingPanelMaragingSteel> * 2, <ore:heliumTankItem>, <ore:fuelTankShellItem>, <ore:stickMaragingSteel> * 4]);
Blueprint.addRecipe("Nuclear Rocket Components", <advancedrocketry:nuclearrocketmotor>, [<ore:scaffoldingPanelMaragingSteel> * 2, <ore:turbopumpItem> * 2, <ore:smallPipeTitanium> * 4, <immersiveengineering:toolupgrade:7>, <ore:engineBellItem>]);
Blueprint.addRecipe("Nuclear Rocket Components", <advancedrocketry:nuclearcore>, [<rustic:stone_pillar>, <ore:fuelBundleFresh> * 9, <ore:smallPipeZirconiumNiobiumAlloy> * 8, <ore:rodBundleControl> * 8, <ore:mechanicalComponentMaragingSteel> * 4, <ore:plateDepletedUraniumDioxide> * 6]);
