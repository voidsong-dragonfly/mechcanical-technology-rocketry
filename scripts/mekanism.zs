//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import mods.jei.JEI.addItem;
import mods.mekanism.chemical.injection;
import mods.mekanism.GasConversion;
import mods.mekanism.compressor;
import mods.mekanism.thermalevaporation;
import mods.mekanism.separator;
import mods.mekanism.chemical.crystallizer;
import mods.mekanism.chemical.dissolution;
import mods.mekanism.chemical.washer;


//Remove Mekanism boilers and turbines, we have those in Immersive Technology already
//With much better balance and mechanics that make sense, too!
var mekSteamRemovals = [<mekanism:basicblock2:5>,
                        <mekanism:basicblock2:6>,
                        <mekanism:basicblock2:7>,
                        <mekanism:basicblock2:8>,
                        <mekanismgenerators:turbineblade>,
                        <mekanismgenerators:generator:7>,
                        <mekanismgenerators:generator:8>,
                        <mekanismgenerators:generator:9>,
                        <mekanismgenerators:generator:10>,
                        <mekanismgenerators:generator:11>,
                        <mekanismgenerators:generator:12>,
                        <mekanismgenerators:generator:13>
                        ] as IItemStack[];
for item in mekSteamRemovals{
    removeAndHide(item);
    }
    
//Remove Mekanism ore processing items that are unused
var mekOresRemovals = [<mekanism:clump:*>,
                       <mekanism:shard:*>,
                       <mekanism:crystal:*>,
                       <mekores:mekanismore:0>,
                       <mekores:mekanismore:1>,
                       <mekores:mekanismore:2>,
                       <mekores:mekanismore:10>,
                       <mekores:mekanismore:11>,
                       <mekores:mekanismore:12>,
                       <mekores:mekanismore:15>,
                       <mekores:mekanismore:16>,
                       <mekores:mekanismore:17>,
                       <mekores:mekanismore:20>,
                       <mekores:mekanismore:21>,
                       <mekores:mekanismore:22>,
                       <mekores:mekanismore:30>,
                       <mekores:mekanismore:31>,
                       <mekores:mekanismore:32>,
                       <mekores:mekanismore:75>,
                       <mekores:mekanismore:76>,
                       <mekores:mekanismore:77>,
                       <mekores:mekanismore:80>,
                       <mekores:mekanismore:81>,
                       <mekores:mekanismore:82>,
                       <mekores:mekanismore:85>,
                       <mekores:mekanismore:86>,
                       <mekores:mekanismore:87>,
                       <mekores:mekanismore:105>,
                       <mekores:mekanismore:106>,
                       <mekores:mekanismore:107>,
                       <mekores:mekanismore:125>,
                       <mekores:mekanismore:126>,
                       <mekores:mekanismore:127>
                       ] as IItemStack[];
for item in mekOresRemovals{
    removeAndHide(item);
    }

//Remove Mekanism tools, glowstone and lapis are unrealistic, steel tools are already present in IE, and paxels usurp the REDIA
var mekToolsRemovals = [<mekanismtools:steelpickaxe>,
                        <mekanismtools:steelaxe>,
                        <mekanismtools:steelshovel>,
                        <mekanismtools:steelhoe>,
                        <mekanismtools:steelsword>,
                        <mekanismtools:steelpaxel>,
                        <mekanismtools:steelhelmet>,
                        <mekanismtools:steelchestplate>,
                        <mekanismtools:steelleggings>,
                        <mekanismtools:steelboots>,
                        <mekanismtools:lapislazulipickaxe>,
                        <mekanismtools:lapislazuliaxe>,
                        <mekanismtools:lapislazulishovel>,
                        <mekanismtools:lapislazulihoe>,
                        <mekanismtools:lapislazulisword>,
                        <mekanismtools:lapislazulipaxel>,
                        <mekanismtools:lapislazulihelmet>,
                        <mekanismtools:lapislazulichestplate>,
                        <mekanismtools:lapislazulileggings>,
                        <mekanismtools:lapislazuliboots>,
                        <mekanismtools:woodpaxel>,
                        <mekanismtools:stonepaxel>,
                        <mekanismtools:ironpaxel>,
                        <mekanismtools:goldpaxel>,
                        <mekanismtools:diamondpaxel>,
                        <mekanismtools:bronzepickaxe>,
                        <mekanismtools:bronzeaxe>,
                        <mekanismtools:bronzeshovel>,
                        <mekanismtools:bronzehoe>,
                        <mekanismtools:bronzesword>,
                        <mekanismtools:bronzepaxel>,
                        <mekanismtools:osmiumpickaxe>,
                        <mekanismtools:osmiumaxe>,
                        <mekanismtools:osmiumshovel>,
                        <mekanismtools:osmiumhoe>,
                        <mekanismtools:osmiumsword>,
                        <mekanismtools:osmiumpaxel>,
                        <mekanismtools:obsidianpickaxe>,
                        <mekanismtools:obsidianaxe>,
                        <mekanismtools:obsidianshovel>,
                        <mekanismtools:obsidianhoe>,
                        <mekanismtools:obsidiansword>,
                        <mekanismtools:obsidianpaxel>,
                        <mekanismtools:glowstonepickaxe>,
                        <mekanismtools:glowstoneaxe>,
                        <mekanismtools:glowstoneshovel>,
                        <mekanismtools:glowstonehoe>,
                        <mekanismtools:glowstonesword>,
                        <mekanismtools:glowstonepaxel>
                        ] as IItemStack[];
for item in mekToolsRemovals{
    removeAndHide(item);
    }
    
    
//Hide unused Mekanism items
hide(<mekanism:enrichediron>);
removeAndHide(<mekanism:filterupgrade>);
removeAndHide(<mekanism:electrolyticcore>);
removeAndHide(<mekanismgenerators:solarpanel>);
removeAndHide(<mekanism:tierinstaller:*>);
removeAndHide(<mekanism:walkietalkie>);
hide(<mekanism:enrichedalloy>);
hide(<mekanism:reinforcedalloy>);
hide(<mekanism:atomicalloy>);
hide(<mekanism:compressedcarbon>);
hide(<mekanism:compressedredstone>);
hide(<mekanism:compresseddiamond>);
hide(<mekanism:compressedobsidian>);

//Remove energy cubes, if you don't have the resources for an Induction Matrix use flywheels
removeAndHide(<mekanism:energycube:*>);

//Remove obsidian TNT, why would that change anything other than make it worse IRL?
removeAndHide(<mekanism:obsidiantnt>);

//Remove gas upgrades, use the full amount and produce it, no skimping here
removeAndHide(<mekanism:gasupgrade>);

//Remove gunpowder coversion recipes that don't work IRL
injection.removeRecipe(<mekanism:otherdust:3>);

//Remove unrealistic item->gas conversions, readd osmium->gas conversion
//Because seriously, who took a look at flint and said "you know what? you can get pure O2 out of that super easily"
GasConversion.unregisterAll();
GasConversion.register(<ore:ingotOsmium>, <gas:liquidosmium> * 200);

//Remove handcrafting of HDPE and move it to plastic extruder
removeAndHide(<mekanism:polyethene:1>);
recipes.remove(<mekanism:polyethene:*>);

//Make Steel Casing take HDPE Sheets
recipes.remove(<mekanism:basicblock:8>);
recipes.addShaped(<mekanism:basicblock:8>,
 [[<mekanism:polyethene:2>, null, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:scaffoldingSteel>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:ingotPGMAny>, <mekanism:polyethene:2>]]);

//Make Osmium only arc-furnace-able
furnace.remove(<ore:ingotOsmium>);


//Add some use to the chemical injection chamber
injection.addRecipe(<contenttweaker:stone_dust>, <gas:water> * 125, <minecraft:clay_ball>);
injection.addRecipe(<contenttweaker:stone_dust> * 4, <gas:water> * 500, <minecraft:clay>);
injection.addRecipe(<inspirations:materials:6> * 3, <gas:hydrogenchloride> * 250, <immersiveengineering:metal:12>);
injection.addRecipe(<ore:rodBlaze>, <gas:hydrogenchloride> * 125, <minecraft:blaze_powder> * 6);
injection.addRecipe(<ore:gemPrismarine>, <gas:hydrogenchloride> * 125, <minecraft:prismarine_crystals> * 2);
injection.addRecipe(<ore:bone>, <gas:nitrogengas> * 125, <minecraft:dye:15> * 8);
injection.addRecipe(<minecraft:end_stone>, <gas:endacid> * 500, <stygian:endmagma>);
injection.addRecipe(<quark:soul_bead>, <gas:endacid> * 4000, <minecraft:ender_pearl>);
injection.addRecipe(<inspirations:materials:6>, <gas:endacid> * 125, <charm:endermite_powder>);
injection.addRecipe(<ore:obsidian>, <gas:endacid> * 250, <mekanism:otherdust:6> * 8);
injection.addRecipe(<ore:enderpearl>, <gas:endacid> * 125, <portalgun:item_dust_ender_pearl> * 4);
injection.addRecipe(<ore:rodBlaze>, <gas:endacid> * 125, <minecraft:blaze_powder> * 8);
injection.addRecipe(<ore:gemPrismarine>, <gas:endacid> * 125, <minecraft:prismarine_crystals> * 3);

//Refined Obsidian and Glowstone processing
compressor.removeRecipe(<mekanism:ingot:3>);
dissolution.addRecipe(<contenttweaker:impure_refined_obsidian_dust>, <gas:impurerefinedobsidian> * 100);
washer.addRecipe(<gas:impurerefinedobsidian>, <gas:refinedobsidian>);
crystallizer.addRecipe(<gas:refinedobsidian> * 100, <mekanism:otherdust:5>);
dissolution.addRecipe(<contenttweaker:impure_refined_glowstone_dust>, <gas:impurerefinedglowstone> * 100);
washer.addRecipe(<gas:impurerefinedglowstone>, <gas:refinedglowstone>);
crystallizer.addRecipe(<gas:refinedglowstone> * 100, <contenttweaker:refined_glowstone_dust>);
compressor.addRecipe(<contenttweaker:refined_glowstone_dust>, <gas:liquidosmium> * 200, <mekanism:ingot:3>);

//Lithium in the crystalliser
crystallizer.addRecipe(<gas:lithium> * 100, <mekanism:otherdust:4>);

//Mekanism transmitter recipes, make universal cables into superconductors
removeAndHide(<mekanism:transmitter:*>);
//Universal cables (ultimate to superconductor)
addItem(<mekanism:transmitter:0>.withTag({tier: 3}));

//Mekanism side of circuit production
recipes.remove(<mekanism:controlcircuit:*>);

//Mekanism multiblock pieces
recipes.remove(<mekanism:basicblock:9>);
recipes.remove(<mekanism:basicblock:11>);
recipes.remove(<mekanism:basicblock2:0>);
recipes.remove(<mekanism:basicblock:15>);
recipes.remove(<mekanism:basicblock:14>);
recipes.remove(<mekanism:basicblock2:1>);
recipes.remove(<mekanism:basicblock2:2>);
recipes.addShaped(<mekanism:basicblock:9> * 4,
 [[<ore:sheetSteel>, <ore:sheetSteel>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <contenttweaker:plascrete>, <ore:sheetSteel>],
 [<ore:sheetSteel>, <ore:sheetSteel>, <ore:sheetSteel>]]);
recipes.addShaped(<mekanism:basicblock:11>,
 [[<engineersdecor:straight_pipe_valve>, <mekanism:basicblock:9>, <engineersdecor:straight_pipe_valve>],
 [null, <ore:circuitBasic>, null]]);
recipes.addShaped(<mekanism:basicblock2:0> * 4,
 [[<ore:sheetCopper>, <ore:sheetCopper>, <ore:sheetCopper>],
 [<ore:sheetCopper>, <contenttweaker:plascrete>, <ore:sheetCopper>],
 [<ore:sheetCopper>, <ore:sheetCopper>, <ore:sheetCopper>]]);
recipes.addShaped(<mekanism:basicblock:15>,
 [[<engineersdecor:straight_pipe_valve>, <mekanism:basicblock2:0>, <engineersdecor:straight_pipe_valve>],
 [null, <ore:circuitAdvanced>, null]]);
recipes.addShaped(<mekanism:basicblock:14>,
 [[<ore:circuitAdvanced>, <ore:paneGlass>, <ore:circuitAdvanced>],
 [<ore:ingotConstantan>, <mekanism:basicblock:8>, <ore:ingotConstantan>],
 [<ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>]]);
recipes.addShaped(<mekanism:basicblock2:1> * 4,
 [[<ore:sheetAluminum>, <mekanism:polyethene:2>, <ore:sheetAluminum>],
 [<mekanism:polyethene:2>, <contenttweaker:plascrete>, <mekanism:polyethene:2>],
 [<ore:sheetAluminum>, <mekanism:polyethene:2>, <ore:sheetAluminum>]]);
recipes.addShaped(<mekanism:basicblock2:2>,
 [[<immersiveengineering:wirecoil:2>, <mekanism:basicblock2:1>, <immersiveengineering:wirecoil:2>],
 [null, <ore:circuitElite>, null]]);
 
//Laser Focus Matrix
recipes.remove(<mekanismgenerators:reactorglass:1>);
recipes.addShaped(<mekanismgenerators:reactorglass:1>,
 [[<ore:plateSteel>, <ore:mechanicalComponentSteel>, <ore:plateSteel>],
 [<ore:stickSteel>, <contenttweaker:glass_lens>, <ore:stickSteel>],
 [<ore:plateSteel>, null, <ore:plateSteel>]]);
 
//Resistive Heater
recipes.remove(<mekanism:machineblock3:4>);
recipes.addShaped(<mekanism:machineblock3:4>,
 [[<ore:ingotTin>, <ore:ingotConstantan>, <ore:ingotTin>],
 [<ore:ingotConstantan>, <immersiveengineering:metal_device1:1>, <ore:ingotConstantan>],
 [<ore:ingotTin>, <immersiveengineering:metal_device0:2>, <ore:ingotTin>]]);

//Brine and lithium changes and additions
thermalevaporation.removeRecipe(<liquid:brine>);
thermalevaporation.addRecipe(<liquid:saltwater> * 10, <liquid:richbrine>);
thermalevaporation.addRecipe(<liquid:brine> * 10, <liquid:lithiumchloridesolution>);
thermalevaporation.addRecipe(<liquid:richbrine> * 10, <liquid:magnesiumchloridesolution>);
separator.removeRecipe(<liquid:brine>);
separator.addRecipe(<liquid:brine> * 10, 1200, <gas:hydrogen>, <gas:chlorine>);
separator.addRecipe(<liquid:richbrine> * 3, 1200, <gas:hydrogen> * 1, <gas:chlorine> * 1);

//Mekanism machine recipes
//T1 is Tungsten-Basic Circuit
//T2 is Constantan-Advanced Circuit
//T3 is Titanium Aluminide-Elite Circuit
//T4 is Titanium-Ultimate Circuit
//The colors match really well!
recipes.remove(<mekanism:machineblock:1>);
recipes.remove(<mekanism:machineblock:2>);
recipes.remove(<mekanism:machineblock:9>);
recipes.remove(<mekanism:machineblock2:0>);
recipes.remove(<mekanism:machineblock2:1>);
recipes.remove(<mekanism:machineblock2:3>);
recipes.remove(<mekanism:machineblock2:4>);
recipes.remove(<mekanism:machineblock2:6>);
recipes.remove(<mekanism:machineblock2:7>);
recipes.remove(<mekanism:machineblock2:8>);
recipes.remove(<mekanism:machineblock2:9>);
recipes.remove(<mekanism:machineblock2:13>);
recipes.remove(<mekanism:machineblock2:14>);
recipes.addShaped(<mekanism:machineblock:1>,
 [[<ore:ingotConstantan>, <ore:circuitAdvanced>, <ore:ingotConstantan>],
 [<mekanism:machineblock:13>, <mekanism:basicblock:8>, <mekanism:machineblock:13>],
 [<ore:ingotConstantan>, <ore:circuitAdvanced>, <ore:ingotConstantan>]]);
recipes.addShaped(<mekanism:machineblock:2>,
 [[<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>],
 [<mekanism:machineblock:13>, <mekanism:basicblock:8>, <mekanism:machineblock:13>],
 [<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>]]);
recipes.addShaped(<mekanism:machineblock2:0>,
 [[<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>],
 [<mekanism:gastank>, <mekanism:basicblock:8>, <immersivetech:metal_barrel:2>],
 [<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>]]);
recipes.addShaped(<mekanism:machineblock2:1>,
 [[<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>],
 [<mekanism:machineblock:13>, <mekanism:basicblock:9>, <mekanism:gastank>],
 [<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>]]);
recipes.addShaped(<mekanism:machineblock2:3>,
 [[<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>],
 [<mekanism:gastank>, <mekanism:basicblock:9>, <mekanism:machineblock:13>],
 [<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>]]);
recipes.addShaped(<mekanism:machineblock2:4>,
 [[<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>],
 [<immersiveengineering:graphite_electrode>, <mekanism:basicblock:8>, <immersiveengineering:graphite_electrode>],
 [<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>]]);
recipes.addShaped(<mekanism:machineblock2:6>,
 [[<ore:circuitUltimate>, <mekanism:gastank>, <ore:circuitUltimate>],
 [<ore:ingotTitanium>, <mekanism:basicblock:8>, <ore:ingotTitanium>],
 [<ore:circuitUltimate>, <mekanism:gastank>, <ore:circuitUltimate>]]);
recipes.addShaped(<mekanism:machineblock2:7>,
 [[<ore:circuitUltimate>, <immersivetech:metal_barrel:2>, <ore:circuitUltimate>],
 [<ore:ingotTitanium>, <mekanism:basicblock:8>, <ore:ingotTitanium>],
 [<ore:circuitUltimate>, <mekanism:gastank>, <ore:circuitUltimate>]]);
recipes.addShaped(<mekanism:machineblock2:8>,
 [[<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>],
 [<mekanism:gastank>, <mekanism:basicblock:8>, <mekanism:gastank>],
 [<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>]]);
recipes.addShaped(<mekanism:machineblock2:9>,
 [[<ore:ingotSteel>, <ore:paneGlassColorless>, <ore:ingotSteel>],
 [<ore:circuitBasic>, <mekanism:basicblock:8>, <ore:circuitBasic>],
 [<ore:ingotSteel>, <engineersdecor:thin_steel_pole>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:machineblock2:13>,
 [[<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>],
 [<mekanism:energytablet>, <mekanism:basicblock:8>, <contenttweaker:glass_lens>],
 [<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>]]);
recipes.addShaped(<mekanism:machineblock2:13>,
 [[<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>],
 [<mekanism:energytablet>, <mekanism:basicblock:8>, <contenttweaker:ruby_lens>],
 [<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>]]);
recipes.addShaped(<mekanism:machineblock2:14>,
 [[<ore:ingotTungsten>, <ore:lensGlass>, <ore:ingotTungsten>],
 [<ore:lensGlass>, <mekanism:basicblock:8>, <ore:lensGlass>],
 [<ore:ingotTungsten>, <ore:lensGlass>, <ore:ingotTungsten>]]);
recipes.replaceAllOccurences(<ore:alloyUltimate>, <ore:circuitUltimate>, <mekanism:machineblock3>);
 
//Gas Tanks
recipes.remove(<mekanism:gastank:*>);
recipes.addShaped(<mekanism:gastank>.withTag({tier: 0}),
 [[<ore:ingotPGMAny>, <ore:plateTungsten>, <ore:ingotPGMAny>],
 [<ore:plateTungsten>, null, <ore:plateTungsten>],
 [<ore:ingotPGMAny>, <ore:plateTungsten>, <ore:ingotPGMAny>]]);
recipes.addShaped(<mekanism:gastank>.withTag({tier: 1}),
 [[<ore:ingotPGMAny>, <ore:plateConstantan>, <ore:ingotPGMAny>],
 [<ore:plateConstantan>, null, <ore:plateConstantan>],
 [<ore:ingotPGMAny>, <ore:plateConstantan>, <ore:ingotPGMAny>]]);
recipes.addShaped(<mekanism:gastank>.withTag({tier: 2}),
 [[<ore:ingotPGMAny>, <ore:plateTitaniumAluminide>, <ore:ingotPGMAny>],
 [<ore:plateTitaniumAluminide>, null, <ore:plateTitaniumAluminide>],
 [<ore:ingotPGMAny>, <ore:plateTitaniumAluminide>, <ore:ingotPGMAny>]]);
recipes.addShaped(<mekanism:gastank>.withTag({tier: 3}),
 [[<ore:ingotPGMAny>, <ore:plateTitanium>, <ore:ingotPGMAny>],
 [<ore:plateTitanium>, null, <ore:plateTitanium>],
 [<ore:ingotPGMAny>, <ore:plateTitanium>, <ore:ingotPGMAny>]]);
 
//Bins
recipes.remove(<mekanism:basicblock:6>);
recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 0}),
 [[<minecraft:cobblestone>, <ore:circuitBasic>, <minecraft:cobblestone>],
 [<ore:ingotTungsten>, null, <ore:ingotTungsten>],
 [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 1}),
 [[<minecraft:cobblestone>, <ore:circuitAdvanced>, <minecraft:cobblestone>],
 [<ore:ingotConstantan>, null, <ore:ingotConstantan>],
 [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 2}),
 [[<minecraft:cobblestone>, <ore:circuitElite>, <minecraft:cobblestone>],
 [<ore:ingotTitaniumAluminide>, null, <ore:ingotTitaniumAluminide>],
 [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 3}),
 [[<minecraft:cobblestone>, <ore:circuitUltimate>, <minecraft:cobblestone>],
 [<ore:ingotTitanium>, null, <ore:ingotTitanium>],
 [<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]]);
 
//Removing enriched alloys and similar from items
//Because I don't know WHAT they were made of originally but it certainly wasn't "realism", I can tell you that much
//Upgrades
recipes.remove(<mekanism:speedupgrade>);
recipes.remove(<mekanism:energyupgrade>);
recipes.remove(<mekanism:mufflingupgrade>);
recipes.remove(<mekanism:anchorupgrade>);
recipes.addShaped(<mekanism:speedupgrade>,
 [[null, <ore:ingotTungsten>, null],
 [<ore:blockGlassColorless>, <ore:circuitBasic>, <ore:blockGlassColorless>],
 [null, <ore:ingotTungsten>, null]]);
recipes.addShaped(<mekanism:energyupgrade>,
 [[null, <ore:ingotTungsten>, null],
 [<ore:blockGlassColorless>, <ore:circuitAdvanced>, <ore:blockGlassColorless>],
 [null, <ore:ingotTungsten>, null]]);
recipes.addShaped(<mekanism:mufflingupgrade>,
 [[null, <ore:ingotTungsten>, null],
 [<ore:blockGlassColorless>, <ore:wool>, <ore:blockGlassColorless>],
 [null, <ore:ingotTungsten>, null]]);
recipes.addShaped(<mekanism:anchorupgrade>,
 [[null, <ore:ingotTungsten>, null],
 [<ore:blockGlassColorless>, <ore:circuitElite>, <ore:blockGlassColorless>],
 [null, <ore:ingotTungsten>, null]]);
 
//Energy tablet
recipes.remove(<mekanism:energytablet:*>);
recipes.addShaped(<mekanism:energytablet>,
 [[<mekanism:polyethene:2>, <ore:itemBattery>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:circuitBasic>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:itemBattery>, <mekanism:polyethene:2>]]);

//Network reader
recipes.remove(<mekanism:networkreader>);
recipes.addShaped(<mekanism:networkreader>,
 [[<ore:ingotSteel>, <ore:blockGlassColorless>, <ore:ingotSteel>],
 [<ore:ingotSteel>, <mekanism:energytablet>, <ore:ingotSteel>],
 [<ore:ingotSteel>, <ore:circuitBasic>, <ore:ingotSteel>]]);
 
//Teleportation core
recipes.remove(<mekanism:teleportationcore>);
recipes.addShaped(<mekanism:teleportationcore>,
 [[<ore:dustRefinedObsidian>, <ore:ingotTitanium>, <ore:dustRefinedObsidian>],
 [<ore:circuitUltimate>, <ore:dustDiamond>, <ore:circuitUltimate>],
 [<ore:dustRefinedObsidian>, <ore:ingotTitanium>, <ore:dustRefinedObsidian>]]);
 
//Mekanism gear
recipes.replaceAllOccurences(<ore:alloyAdvanced>, <ore:plateSteel>, <mekanism:scubatank>);
recipes.replaceAllOccurences(<ore:alloyAdvanced>, <ore:mechanicalComponentSteel>, <mekanism:freerunners>);
recipes.remove(<mekanism:electricbow>);
recipes.addShaped(<mekanism:electricbow>,
 [[null, <ore:stickSteel>, <ore:mechanicalComponentSteel>],
 [<ore:plateSteel>, <mekanism:energytablet>, <ore:wireAluminum>],
 [null, <ore:stickSteel>, <ore:mechanicalComponentSteel>]]);
recipes.remove(<mekanism:seismicreader>);
recipes.addShaped(<mekanism:seismicreader>, 
 [[<ore:sheetSteel>, <ore:circuitBasic>, <ore:paneGlassColorless>],
 [<ore:sheetSteel>, <mekanism:energytablet>, <ore:sheetSteel>]]);
recipes.remove(<mekanism:configurator>);
recipes.addShaped(<mekanism:configurator>, 
 [[null, <ore:dyeBlue>, <ore:stickSteel>],
 [<mekanism:polyethene:2>, <mekanism:energytablet>, <ore:circuitBasic>],
 [<mekanism:polyethene:3>, <mekanism:polyethene:2>, null]]);
recipes.replaceAllOccurences(<ore:alloyAdvanced>, <mekanism:polyethene:2>, <mekanism:configurationcard>);
recipes.remove(<mekanism:atomicdisassembler:*>);
recipes.addShaped(<mekanism:atomicdisassembler>,
 [[<ore:ingotTitanium>, <ore:circuitAdvanced>, <ore:ingotTitanium>],
 [<ore:dustDiamond>, <mekanism:energytablet>, <ore:dustDiamond>],
 [null, <mekanism:polyethene:3>, null]]);
recipes.remove(<mekanism:jetpack>);
recipes.remove(<mekanism:armoredjetpack>);
recipes.addShaped(<mekanism:jetpack>,
 [[<ore:ingotBronze>, <ore:circuitBasic>, <ore:ingotBronze>],
 [<immersiveengineering:toolupgrade:7>, <mekanism:gastank>.withTag({tier: 0}), <immersiveengineering:toolupgrade:7>],
 [null, <immersiveengineering:toolupgrade:7>, null]]);
recipes.addShaped(<mekanism:armoredjetpack>,
 [[<mekanism:polyethene:2>, null, <mekanism:polyethene:2>],
 [<ore:ingotBronze>, <immersiveengineering:steel_armor_chest>, <ore:ingotBronze>],
 [<mekanism:polyethene:2>, <mekanism:jetpack>, <mekanism:polyethene:2>]]);
 
//Robit
recipes.remove(<mekanism:robit>);
recipes.addShaped(<mekanism:robit>,
 [[null, <ore:ingotTungsten>, null],
 [<ore:ingotTungsten>, <mekanism:energytablet>, <ore:ingotTungsten>],
 [<ore:gearTitaniumAluminide>, <mekanism:machineblock:13>, <ore:gearTitaniumAluminide>]]);
 
//Induction Matrix
//Huge battery is huge. Makes so much heat it needs liquid nitrogen cycles to not turn into a rapidly expanding mass of gas and lithium cell fragments
recipes.remove(<mekanism:basicblock2:3>);
recipes.remove(<mekanism:basicblock2:4>);
recipes.addShaped(<mekanism:basicblock2:3>.withTag({tier: 0}),
 [[<contenttweaker:induction_tablet>, <ore:circuitBasic>, <contenttweaker:induction_tablet>],
 [<contenttweaker:induction_tablet>, <mekanism:basicblock:8>, <contenttweaker:induction_tablet>],
 [<contenttweaker:induction_tablet>, <ore:circuitBasic>, <contenttweaker:induction_tablet>]]);
recipes.addShaped(<mekanism:basicblock2:3>.withTag({tier: 1}),
 [[<contenttweaker:induction_tablet>, <ore:circuitAdvanced>, <contenttweaker:induction_tablet>],
 [<contenttweaker:induction_tablet>, <mekanism:basicblock2:3>.withTag({tier: 0}), <contenttweaker:induction_tablet>],
 [<contenttweaker:induction_tablet>, <ore:circuitAdvanced>, <contenttweaker:induction_tablet>]]);
recipes.addShaped(<mekanism:basicblock2:3>.withTag({tier: 2}),
 [[<contenttweaker:induction_tablet>, <ore:circuitElite>, <contenttweaker:induction_tablet>],
 [<contenttweaker:induction_tablet>, <mekanism:basicblock2:3>.withTag({tier: 1}), <contenttweaker:induction_tablet>],
 [<contenttweaker:induction_tablet>, <ore:circuitElite>, <contenttweaker:induction_tablet>]]);
recipes.addShaped(<mekanism:basicblock2:3>.withTag({tier: 3}),
 [[<contenttweaker:induction_tablet>, <ore:circuitUltimate>, <contenttweaker:induction_tablet>],
 [<contenttweaker:induction_tablet>, <mekanism:basicblock2:3>.withTag({tier: 2}), <contenttweaker:induction_tablet>],
 [<contenttweaker:induction_tablet>, <ore:circuitUltimate>, <contenttweaker:induction_tablet>]]);
recipes.addShaped(<mekanism:basicblock2:4>.withTag({tier: 0}),
 [[<ore:circuitBasic>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitBasic>],
 [<forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <mekanism:basicblock:8>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000})],
 [<ore:circuitBasic>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitBasic>]]);
recipes.addShaped(<mekanism:basicblock2:4>.withTag({tier: 1}),
 [[<ore:circuitAdvanced>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitAdvanced>],
 [<forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <mekanism:basicblock2:4>.withTag({tier: 0}), <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000})],
 [<ore:circuitAdvanced>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitAdvanced>]]);
recipes.addShaped(<mekanism:basicblock2:4>.withTag({tier: 2}),
 [[<ore:circuitElite>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitElite>],
 [<forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <mekanism:basicblock2:4>.withTag({tier: 1}), <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000})],
 [<ore:circuitElite>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitElite>]]);
recipes.addShaped(<mekanism:basicblock2:4>.withTag({tier: 3}),
 [[<ore:circuitUltimate>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitUltimate>],
 [<forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <mekanism:basicblock2:4>.withTag({tier: 2}), <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000})],
 [<ore:circuitUltimate>, <forge:bucketfilled>.withTag({FluidName: "liquidnitrogen", Amount: 1000}), <ore:circuitUltimate>]]);
