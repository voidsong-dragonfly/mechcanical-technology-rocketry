//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import mods.jei.JEI.addItem;
import mods.mekanism.enrichment;
import mods.mekanism.crusher;
import mods.mekanism.chemical.injection;
import mods.mekanism.GasConversion;
import mods.mekanism.compressor;
import mods.mekanism.reaction;
import mods.mekanism.sawmill;
import mods.mekanism.thermalevaporation;
import mods.mekanism.separator;
import mods.mekanism.chemical.crystallizer;
import mods.mekanism.chemical.infuser;
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
//Hide and remove "compressed" infusion types from JEI, unused and unrealistic
enrichment.removeRecipe(<minecraft:coal:*>);
enrichment.removeRecipe(<minecraft:redstone>);
enrichment.removeRecipe(<minecraft:diamond>);
enrichment.removeRecipe(<mekanism:otherdust:5>);
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
enrichment.removeRecipe(<immersiveengineering:material:24>);
enrichment.removeRecipe(<immersiveengineering:material:25>);
enrichment.removeRecipe(<mekanism:otherdust:3>);
crusher.removeRecipe(<minecraft:gunpowder>);
injection.removeRecipe(<mekanism:otherdust:3>);

//Remove unrealistic item->gas conversions, readd osmium->gas conversion
//Because seriously, who took a look at flint and said "you know what? you can get pure O2 out of that super easily"
GasConversion.unregisterAll();
GasConversion.register(<ore:ingotOsmium>, <gas:liquidosmium> * 200);

//Remove some miscelaneous unrealistic recipes
crusher.removeRecipe(<minecraft:string>);
crusher.removeRecipe(<libvulpes:productingot:3>);

//Remove handcrafting of HDPE and move it to plastic extruder
enrichment.removeRecipe(<mekanism:polyethene:0>);
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

//Sawmill plank compat
//PVJ
sawmill.addRecipe(<pvj:log_willow>, <pvj:planks_willow> * 6, <mekanism:sawdust>, 1.0);
sawmill.addRecipe(<pvj:log_mangrove>, <pvj:planks_mangrove> * 6, <mekanism:sawdust>, 1.0);
sawmill.addRecipe(<pvj:log_palm>, <pvj:planks_palm> * 6, <mekanism:sawdust>, 1.0);
sawmill.addRecipe(<pvj:log_redwood>, <pvj:planks_redwood> * 6, <mekanism:sawdust>, 1.0);
sawmill.addRecipe(<pvj:log_fir>, <pvj:planks_fir> * 6, <mekanism:sawdust>, 1.0);
sawmill.addRecipe(<pvj:log_pine>, <pvj:planks_pine> * 6, <mekanism:sawdust>, 1.0);
sawmill.addRecipe(<pvj:log_aspen>, <pvj:planks_aspen> * 6, <mekanism:sawdust>, 1.0);
sawmill.addRecipe(<pvj:log_maple>, <pvj:planks_maple> * 6, <mekanism:sawdust>, 1.0);
sawmill.addRecipe(<pvj:log_baobab>, <pvj:planks_baobab> * 6, <mekanism:sawdust>, 1.0);
sawmill.addRecipe(<pvj:log_cottonwood>, <pvj:planks_cottonwood> * 6, <mekanism:sawdust>, 1.0);
sawmill.addRecipe(<pvj:log_juniper>, <pvj:planks_juniper> * 6, <mekanism:sawdust>, 1.0);
sawmill.addRecipe(<pvj:log_cherry_blossom>, <pvj:planks_cherry_blossom> * 6, <mekanism:sawdust>, 1.0);
sawmill.addRecipe(<pvj:log_jacaranda>, <pvj:planks_jacaranda> * 6, <mekanism:sawdust>, 1.0);
//Sawmill stick compat
//PVJ
sawmill.addRecipe(<pvj:planks_willow>, <minecraft:stick> * 6, <mekanism:sawdust>, 0.25);
sawmill.addRecipe(<pvj:planks_mangrove>, <minecraft:stick> * 6, <mekanism:sawdust>, 0.25);
sawmill.addRecipe(<pvj:planks_palm>, <minecraft:stick> * 6, <mekanism:sawdust>, 0.25);
sawmill.addRecipe(<pvj:planks_redwood>, <minecraft:stick> * 6, <mekanism:sawdust>, 0.25);
sawmill.addRecipe(<pvj:planks_fir>, <minecraft:stick> * 6, <mekanism:sawdust>, 0.25);
sawmill.addRecipe(<pvj:planks_pine>, <minecraft:stick> * 6, <mekanism:sawdust>, 0.25);
sawmill.addRecipe(<pvj:planks_aspen>, <minecraft:stick> * 6, <mekanism:sawdust>, 0.25);
sawmill.addRecipe(<pvj:planks_maple>, <minecraft:stick> * 6, <mekanism:sawdust>, 0.25);
sawmill.addRecipe(<pvj:planks_baobab>, <minecraft:stick> * 6, <mekanism:sawdust>, 0.25);
sawmill.addRecipe(<pvj:planks_cottonwood>, <minecraft:stick> * 6, <mekanism:sawdust>, 0.25);
sawmill.addRecipe(<pvj:planks_juniper>, <minecraft:stick> * 6, <mekanism:sawdust>, 0.25);
sawmill.addRecipe(<pvj:planks_cherry_blossom>, <minecraft:stick> * 6, <mekanism:sawdust>, 0.25);
sawmill.addRecipe(<pvj:planks_jacaranda>, <minecraft:stick> * 6, <mekanism:sawdust>, 0.25);
//Sawmill composter wierdness removal
//Why? Why did logs with no planks made _charm composters_? The world will never know.
sawmill.removeRecipe(<biomesoplenty:log_4:4>);
sawmill.removeRecipe(<biomesoplenty:log_4:5>);
sawmill.removeRecipe(<minecraft:log:*>, <charm:composter>);
sawmill.removeRecipe(<minecraft:log2:*>, <charm:composter>);


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
//Some of these are on the verge of being removed if not for the fact that logistical transporters are pretty dumb routing-wise and sometimes LogisticsPipes just doesn't cut it
//Mechanical pipes are just ITCHING to go, though
recipes.remove(<mekanism:transmitter:*>);
//Universal cables (ultimate to superconductor)
hide(<mekanism:transmitter:0>);
hide(<mekanism:transmitter:0>.withTag({tier: 1}));
hide(<mekanism:transmitter:0>.withTag({tier: 2}));
addItem(<mekanism:transmitter:0>.withTag({tier: 3}));
//Mechanical Pipes
recipes.addShaped(<mekanism:transmitter:1>.withTag({tier: 0}) * 8,
 [[<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:transmitter:1>.withTag({tier: 1}) * 8,
 [[<mekanism:transmitter:1>.withTag({tier: 0}), <mekanism:transmitter:1>.withTag({tier: 0}), <mekanism:transmitter:1>.withTag({tier: 0})],
 [<mekanism:transmitter:1>.withTag({tier: 0}), <ore:circuitAdvanced>, <mekanism:transmitter:1>.withTag({tier: 0})],
 [<mekanism:transmitter:1>.withTag({tier: 0}), <mekanism:transmitter:1>.withTag({tier: 0}), <mekanism:transmitter:1>.withTag({tier: 0})]]);
recipes.addShaped(<mekanism:transmitter:1>.withTag({tier: 2}) * 8,
 [[<mekanism:transmitter:1>.withTag({tier: 1}), <mekanism:transmitter:1>.withTag({tier: 1}), <mekanism:transmitter:1>.withTag({tier: 1})],
 [<mekanism:transmitter:1>.withTag({tier: 1}), <ore:circuitElite>, <mekanism:transmitter:1>.withTag({tier: 1})],
 [<mekanism:transmitter:1>.withTag({tier: 1}), <mekanism:transmitter:1>.withTag({tier: 1}), <mekanism:transmitter:1>.withTag({tier: 1})]]);
recipes.addShaped(<mekanism:transmitter:1>.withTag({tier: 3}) * 8,
 [[<mekanism:transmitter:1>.withTag({tier: 2}), <mekanism:transmitter:1>.withTag({tier: 2}), <mekanism:transmitter:1>.withTag({tier: 2})],
 [<mekanism:transmitter:1>.withTag({tier: 2}), <ore:circuitUltimate>, <mekanism:transmitter:1>.withTag({tier: 2})],
 [<mekanism:transmitter:1>.withTag({tier: 2}), <mekanism:transmitter:1>.withTag({tier: 2}), <mekanism:transmitter:1>.withTag({tier: 2})]]);
//Pressurized Tubes
recipes.addShaped(<mekanism:transmitter:2>.withTag({tier: 0}) * 8,
 [[<ore:ingotSteel>, <mekanism:basicblock:10>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:transmitter:2>.withTag({tier: 1}) * 8,
 [[<mekanism:transmitter:2>.withTag({tier: 0}), <mekanism:transmitter:2>.withTag({tier: 0}), <mekanism:transmitter:2>.withTag({tier: 0})],
 [<mekanism:transmitter:2>.withTag({tier: 0}), <ore:circuitAdvanced>, <mekanism:transmitter:2>.withTag({tier: 0})],
 [<mekanism:transmitter:2>.withTag({tier: 0}), <mekanism:transmitter:2>.withTag({tier: 0}), <mekanism:transmitter:2>.withTag({tier: 0})]]);
recipes.addShaped(<mekanism:transmitter:2>.withTag({tier: 2}) * 8,
 [[<mekanism:transmitter:2>.withTag({tier: 1}), <mekanism:transmitter:2>.withTag({tier: 1}), <mekanism:transmitter:2>.withTag({tier: 1})],
 [<mekanism:transmitter:2>.withTag({tier: 1}), <ore:circuitElite>, <mekanism:transmitter:2>.withTag({tier: 1})],
 [<mekanism:transmitter:2>.withTag({tier: 1}), <mekanism:transmitter:2>.withTag({tier: 1}), <mekanism:transmitter:2>.withTag({tier: 1})]]);
recipes.addShaped(<mekanism:transmitter:2>.withTag({tier: 3}) * 8,
 [[<mekanism:transmitter:2>.withTag({tier: 2}), <mekanism:transmitter:2>.withTag({tier: 2}), <mekanism:transmitter:2>.withTag({tier: 2})],
 [<mekanism:transmitter:2>.withTag({tier: 2}), <ore:circuitUltimate>, <mekanism:transmitter:2>.withTag({tier: 2})],
 [<mekanism:transmitter:2>.withTag({tier: 2}), <mekanism:transmitter:2>.withTag({tier: 2}), <mekanism:transmitter:2>.withTag({tier: 2})]]);
//Logistical Transporter
recipes.addShaped(<mekanism:transmitter:3>.withTag({tier: 0}) * 8,
 [[<ore:ingotSteel>, <ore:circuitBasic>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:transmitter:3>.withTag({tier: 1}) * 8,
 [[<mekanism:transmitter:3>.withTag({tier: 0}), <mekanism:transmitter:3>.withTag({tier: 0}), <mekanism:transmitter:3>.withTag({tier: 0})],
 [<mekanism:transmitter:3>.withTag({tier: 0}), <ore:circuitAdvanced>, <mekanism:transmitter:3>.withTag({tier: 0})],
 [<mekanism:transmitter:3>.withTag({tier: 0}), <mekanism:transmitter:3>.withTag({tier: 0}), <mekanism:transmitter:3>.withTag({tier: 0})]]);
recipes.addShaped(<mekanism:transmitter:3>.withTag({tier: 2}) * 8,
 [[<mekanism:transmitter:3>.withTag({tier: 1}), <mekanism:transmitter:3>.withTag({tier: 1}), <mekanism:transmitter:3>.withTag({tier: 1})],
 [<mekanism:transmitter:3>.withTag({tier: 1}), <ore:circuitElite>, <mekanism:transmitter:3>.withTag({tier: 1})],
 [<mekanism:transmitter:3>.withTag({tier: 1}), <mekanism:transmitter:3>.withTag({tier: 1}), <mekanism:transmitter:3>.withTag({tier: 1})]]);
recipes.addShaped(<mekanism:transmitter:3>.withTag({tier: 3}) * 8,
 [[<mekanism:transmitter:3>.withTag({tier: 2}), <mekanism:transmitter:3>.withTag({tier: 2}), <mekanism:transmitter:3>.withTag({tier: 2})],
 [<mekanism:transmitter:3>.withTag({tier: 2}), <ore:circuitUltimate>, <mekanism:transmitter:3>.withTag({tier: 2})],
 [<mekanism:transmitter:3>.withTag({tier: 2}), <mekanism:transmitter:3>.withTag({tier: 2}), <mekanism:transmitter:3>.withTag({tier: 2})]]);
//Restrictive and Diversion
recipes.addShaped(<mekanism:transmitter:4> * 2,
 [[<ore:ingotSteel>, <ore:barsIron>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:transmitter:5> * 2,
 [[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>],
 [<ore:ingotSteel>, <ore:barsIron>, <ore:ingotSteel>],
 [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]]);
//Thermodynamic conductors
recipes.addShaped(<mekanism:transmitter:6>.withTag({tier: 0}) * 8,
 [[<ore:ingotSteel>, <ore:ingotCopper>, <ore:ingotSteel>]]);
recipes.addShaped(<mekanism:transmitter:6>.withTag({tier: 1}) * 8,
 [[<mekanism:transmitter:6>.withTag({tier: 0}), <mekanism:transmitter:6>.withTag({tier: 0}), <mekanism:transmitter:6>.withTag({tier: 0})],
 [<mekanism:transmitter:6>.withTag({tier: 0}), <ore:circuitAdvanced>, <mekanism:transmitter:6>.withTag({tier: 0})],
 [<mekanism:transmitter:6>.withTag({tier: 0}), <mekanism:transmitter:6>.withTag({tier: 0}), <mekanism:transmitter:6>.withTag({tier: 0})]]);
recipes.addShaped(<mekanism:transmitter:6>.withTag({tier: 2}) * 8,
 [[<mekanism:transmitter:6>.withTag({tier: 1}), <mekanism:transmitter:6>.withTag({tier: 1}), <mekanism:transmitter:6>.withTag({tier: 1})],
 [<mekanism:transmitter:6>.withTag({tier: 1}), <ore:circuitElite>, <mekanism:transmitter:6>.withTag({tier: 1})],
 [<mekanism:transmitter:6>.withTag({tier: 1}), <mekanism:transmitter:6>.withTag({tier: 1}), <mekanism:transmitter:6>.withTag({tier: 1})]]);
recipes.addShaped(<mekanism:transmitter:6>.withTag({tier: 3}) * 8,
 [[<mekanism:transmitter:6>.withTag({tier: 2}), <mekanism:transmitter:6>.withTag({tier: 2}), <mekanism:transmitter:6>.withTag({tier: 2})],
 [<mekanism:transmitter:6>.withTag({tier: 2}), <ore:circuitUltimate>, <mekanism:transmitter:6>.withTag({tier: 2})],
 [<mekanism:transmitter:6>.withTag({tier: 2}), <mekanism:transmitter:6>.withTag({tier: 2}), <mekanism:transmitter:6>.withTag({tier: 2})]]);


//Mekanism side of circuit production
//If/when I backport the IE sawmill block these are moving over to that and the sawmill is being removed
sawmill.addRecipe(<ore:blockGlassColorless>, <contenttweaker:glass_lens> * 4);
sawmill.addRecipe(<ore:blockLapis>, <contenttweaker:lapis_lens> * 4);
sawmill.addRecipe(<ore:blockEmerald>, <contenttweaker:emerald_lens> * 4);
sawmill.addRecipe(<advancedrocketry:crystal:2>, <contenttweaker:emerald_lens> * 4);
sawmill.addRecipe(<charm:ender_pearl_block>, <contenttweaker:ender_pearl_lens> * 4);
sawmill.addRecipe(<advancedrocketry:crystal:3>, <contenttweaker:ruby_lens> * 4);
sawmill.addRecipe(<ore:blockDiamond>, <contenttweaker:diamond_lens> * 4);
recipes.remove(<mekanism:controlcircuit:*>);
sawmill.addRecipe(<ore:plankTreatedWood>, <contenttweaker:treated_wood_circuit_board> * 6);
sawmill.addRecipe(<contenttweaker:gallium_doped_silicon_boule>, <contenttweaker:gallium_doped_silicon_wafer> * 16);
sawmill.addRecipe(<contenttweaker:lithium_doped_silicon_boule>, <contenttweaker:lithium_doped_silicon_wafer> * 16);
sawmill.addRecipe(<contenttweaker:integrated_circuit_wafer>, <contenttweaker:integrated_circuit_plate> * 8);
sawmill.addRecipe(<contenttweaker:cpu_wafer>, <contenttweaker:cpu_plate> * 8);
sawmill.addRecipe(<contenttweaker:nand_memory_wafer>, <contenttweaker:nand_memory_plate> * 8);
sawmill.addRecipe(<contenttweaker:ram_wafer>, <contenttweaker:ram_plate> * 16);
sawmill.addRecipe(<contenttweaker:soc_wafer>, <contenttweaker:soc_plate> * 4);

//Remove Enrichment Chamber gem ore processing, use the Marx Generator
enrichment.removeRecipe(<ore:oreCoal>);
enrichment.removeRecipe(<ore:oreLapis>);
enrichment.removeRecipe(<ore:oreRedstone>);
enrichment.removeRecipe(<ore:oreQuartz>);
enrichment.removeRecipe(<ore:oreDiamond>);
enrichment.removeRecipe(<ore:oreEmerald>);

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
 [<ore:sheetSteel>, <engineersdecor:rebar_concrete>, <ore:sheetSteel>],
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
recipes.remove(<mekanism:machineblock:0>);
recipes.remove(<mekanism:machineblock:1>);
recipes.remove(<mekanism:machineblock:2>);
recipes.remove(<mekanism:machineblock:3>);
recipes.remove(<mekanism:machineblock:4>);
recipes.remove(<mekanism:machineblock:9>);
recipes.remove(<mekanism:machineblock:10>);
recipes.remove(<mekanism:machineblock2:0>);
recipes.remove(<mekanism:machineblock2:1>);
recipes.remove(<mekanism:machineblock2:2>);
recipes.remove(<mekanism:machineblock2:3>);
recipes.remove(<mekanism:machineblock2:4>);
recipes.remove(<mekanism:machineblock2:5>);
recipes.remove(<mekanism:machineblock2:6>);
recipes.remove(<mekanism:machineblock2:7>);
recipes.remove(<mekanism:machineblock2:8>);
recipes.remove(<mekanism:machineblock2:9>);
recipes.remove(<mekanism:machineblock2:10>);
recipes.remove(<mekanism:machineblock2:12>);
recipes.remove(<mekanism:machineblock2:13>);
recipes.remove(<mekanism:machineblock2:14>);
recipes.addShaped(<mekanism:machineblock:0>,
 [[<ore:ingotConstantan>, <ore:circuitAdvanced>, <ore:ingotConstantan>],
 [<minecraft:cauldron>, <mekanism:basicblock:8>, <minecraft:cauldron>],
 [<ore:ingotConstantan>, <ore:circuitAdvanced>, <ore:ingotConstantan>]]);
recipes.addShaped(<mekanism:machineblock:1>,
 [[<ore:ingotConstantan>, <ore:circuitAdvanced>, <ore:ingotConstantan>],
 [<mekanism:machineblock:13>, <mekanism:basicblock:8>, <mekanism:machineblock:13>],
 [<ore:ingotConstantan>, <ore:circuitAdvanced>, <ore:ingotConstantan>]]);
recipes.addShaped(<mekanism:machineblock:2>,
 [[<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>],
 [<mekanism:machineblock:13>, <mekanism:basicblock:8>, <mekanism:machineblock:13>],
 [<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>]]);
recipes.addShaped(<mekanism:machineblock:3>,
 [[<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>],
 [<ore:dustDiamond>, <mekanism:basicblock:8>, <ore:dustDiamond>],
 [<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>]]);
recipes.addShaped(<mekanism:machineblock:4>,
 [[<ore:ingotRefinedObsidian>, <ore:circuitUltimate>, <ore:ingotRefinedObsidian>],
 [<mekanism:teleportationcore>, <mekanism:robit>, <mekanism:teleportationcore>],
 [<mekanism:machineblock:15>, <mekanism:basicblock:8>, <mekanism:machineblock:15>]]);
recipes.addShaped(<mekanism:machineblock:10>,
 [[<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>],
 [<immersiveengineering:metal_device1:1>, <mekanism:basicblock:8>, <immersiveengineering:metal_device1:1>],
 [<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>]]);
recipes.addShaped(<mekanism:machineblock2:0>,
 [[<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>],
 [<mekanism:gastank>, <mekanism:basicblock:8>, <immersivetech:metal_barrel:2>],
 [<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>]]);
recipes.addShaped(<mekanism:machineblock2:1>,
 [[<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>],
 [<mekanism:machineblock:13>, <mekanism:basicblock:9>, <mekanism:gastank>],
 [<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>]]);
recipes.addShaped(<mekanism:machineblock2:2>,
 [[<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>],
 [<mekanism:gastank>, <mekanism:basicblock:9>, <mekanism:gastank>],
 [<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>]]);
recipes.addShaped(<mekanism:machineblock2:3>,
 [[<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>],
 [<mekanism:gastank>, <mekanism:basicblock:9>, <mekanism:machineblock:13>],
 [<ore:ingotTitaniumAluminide>, <ore:circuitElite>, <ore:ingotTitaniumAluminide>]]);
recipes.addShaped(<mekanism:machineblock2:4>,
 [[<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>],
 [<immersiveengineering:graphite_electrode>, <mekanism:basicblock:8>, <immersiveengineering:graphite_electrode>],
 [<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>]]);
recipes.addShaped(<mekanism:machineblock2:5>,
 [[<ore:ingotTungsten>, <ore:circuitBasic>, <ore:ingotTungsten>],
 [<advancedrocketry:sawbladeiron>, <mekanism:basicblock:8>, <advancedrocketry:sawbladeiron>],
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
recipes.addShaped(<mekanism:machineblock2:10>,
 [[<ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>],
 [<ore:circuitAdvanced>, <mekanism:basicblock:8>, <ore:circuitAdvanced>],
 [<mekanism:gastank>, <mekanism:basicblock:9>, <mekanism:gastank>]]);
recipes.addShaped(<mekanism:machineblock2:12>,
 [[<ore:ingotTin>, <ore:barsIron>, <ore:ingotTin>],
 [<ore:circuitBasic>, <mekanism:basicblock:8>, <ore:circuitBasic>],
 [<ore:ingotTin>, <ore:barsIron>, <ore:ingotTin>]]);
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

//H2SO4 from oil products
//You should really be using the MM or IE versions of these but ah well. Sure, use these. They're as expensive as anything but I guess smaller.
infuser.addRecipe(<gas:hydrogensulfide> * 2, <gas:oxygen> * 3, <gas:sulfurdioxide> * 2);
infuser.addRecipe(<gas:nitrogengas>, <gas:oxygen> * 2, <gas:nitrogendioxide> * 2);
infuser.addRecipe(<gas:nitrogengas>, <gas:hydrogen> * 3, <gas:ammonia> * 2);

//Simple separator recipes
separator.addRecipe(<liquid:moltenlithiumchloride> * 2, 480, <gas:lithium> * 2, <gas:chlorine>);
