//Import
import mods.mekanism.chemical.injection;
import mods.mekanism.compressor;
import mods.mekanism.thermalevaporation;
import mods.mekanism.separator;
import mods.mekanism.chemical.crystallizer;
import mods.mekanism.chemical.dissolution;
import mods.mekanism.chemical.washer;



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

//Brine and lithium changes and additions
thermalevaporation.removeRecipe(<liquid:brine>);
thermalevaporation.addRecipe(<liquid:saltwater> * 10, <liquid:richbrine>);
thermalevaporation.addRecipe(<liquid:brine> * 10, <liquid:lithiumchloridesolution>);
thermalevaporation.addRecipe(<liquid:richbrine> * 10, <liquid:magnesiumchloridesolution>);
separator.removeRecipe(<liquid:brine>);
separator.addRecipe(<liquid:brine> * 10, 1200, <gas:hydrogen>, <gas:chlorine>);
separator.addRecipe(<liquid:richbrine> * 3, 1200, <gas:hydrogen> * 1, <gas:chlorine> * 1);