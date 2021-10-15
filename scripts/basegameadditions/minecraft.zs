//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;
import mods.futuremc.Campfire;

//Remove Minecraft things from JEI that don't need to be there, technical blocks and tools superseeded by flint (stone)
var minecraftToRemove = [<minecraft:command_block>,
                         <minecraft:barrier>,
                         <minecraft:repeating_command_block>,
                         <minecraft:chain_command_block>,
                         <minecraft:structure_void>,
                         <minecraft:structure_block>,
                         <minecraft:command_block_minecart>,
                         <minecraft:knowledge_book>,
                         <forge:bucketfilled>.withTag({FluidName: "heat", Amount: 1000})
                         ] as IItemStack[];
for item in minecraftToRemove{
    removeAndHide(item);
    }
//Remove recipes for some tools. Find them
//Seriously, how do you make a solid diamond tool other than "magic". Yes, I _do_ know the vanilla crafting table is magic. I aim to fix that.
var toolsToRemove = [<minecraft:iron_axe>,
                     <minecraft:iron_hoe>,
                     <minecraft:iron_pickaxe>,
                     <minecraft:iron_shovel>,
                     <minecraft:iron_sword>,
                     <minecraft:golden_axe>,
                     <minecraft:golden_hoe>,
                     <minecraft:golden_pickaxe>,
                     <minecraft:golden_shovel>,
                     <minecraft:golden_sword>,
                     <minecraft:diamond_axe>,
                     <minecraft:diamond_hoe>,
                     <minecraft:diamond_pickaxe>,
                     <minecraft:diamond_shovel>,
                     <minecraft:diamond_sword>,
                     <minecraft:diamond_helmet>,
                     <minecraft:diamond_chestplate>,
                     <minecraft:diamond_leggings>,
                     <minecraft:diamond_boots>,
                     <minecraft:stone_axe>,
                     <minecraft:stone_hoe>,
                     <minecraft:stone_pickaxe>,
                     <minecraft:stone_shovel>,
                     <minecraft:stone_sword>
                     ] as IItemStack[];
for item in toolsToRemove{
    recipes.remove(item);
    }

//Remove Chainmail recipes with flex mesh
recipes.removeByRecipeName("tetra:chainmail_helmet");
recipes.removeByRecipeName("tetra:chainmail_chestplate");
recipes.removeByRecipeName("tetra:chainmail_leggings");
recipes.removeByRecipeName("tetra:chainmail_boots");
    
//Make rails crafted from modifying a normal rail
recipes.remove(<minecraft:detector_rail>);
recipes.addShaped(<minecraft:detector_rail>,
 [[<minecraft:rail>],
 [<minecraft:stone_pressure_plate>]]);
recipes.remove(<minecraft:activator_rail>);
recipes.addShaped(<minecraft:activator_rail>,
 [[<minecraft:rail>],
 [<minecraft:redstone_torch>]]);
recipes.addShaped(<transport:holding>,
 [[<minecraft:redstone>],
 [<minecraft:golden_rail>],
 [<minecraft:stone_pressure_plate>]]);
 
//Ender crystal/other Vanilla magic items to use more Quark materials/more fitting materials & ender hopper to use other materials
recipes.remove(<minecraft:end_crystal>);
recipes.remove(<minecraft:enchanting_table>);
recipes.remove(<minecraft:beacon>);
recipes.addShaped(<minecraft:end_crystal>,
 [[<ore:blockGlassColorless>, <quark:biotite_block>, <ore:blockGlassColorless>],
 [<minecraft:chorus_fruit_popped>, <quark:duskbound_lantern>, <minecraft:chorus_fruit_popped>],
 [<ore:blockGlassColorless>, <minecraft:ghast_tear>, <ore:blockGlassColorless>]]);
recipes.addShaped(<minecraft:enchanting_table>,
 [[null, <minecraft:writable_book>, null],
 [<ore:gemDiamond>, <quark:quilted_wool:14>, <ore:gemDiamond>],
 [<ore:obsidian>, <minecraft:red_nether_brick>, <ore:obsidian>]]);
recipes.addShaped(<minecraft:beacon>,
 [[<ore:blockGlassColorless>, <minecraft:nether_star>, <ore:blockGlassColorless>],
 [<ore:gemDiamond>, <minecraft:sea_lantern>, <ore:gemDiamond>],
 [<ore:blockGlassColorless>, <ore:obsidian>, <ore:blockGlassColorless>]]);
recipes.remove(<enderhopper:enderhopper>);
recipes.addShaped(<enderhopper:enderhopper>,
 [[<ore:obsidian>, <ore:gemEnderBiotite>, <ore:obsidian>],
 [<ore:dustObsidian>, <minecraft:ender_chest>, <ore:dustObsidian>],
 [null, <ore:obsidian>, null]]);

//Catalyst item recipes
recipes.remove(<respect-your-elders:eldercrystal>);
recipes.remove(<respect-your-elders:emeraldsoup>);
recipes.addShaped(<respect-your-elders:eldercrystal>,
 [[<ore:dustPrismarine>, <minecraft:lapis_block>, <ore:dustPrismarine>],
 [<minecraft:lapis_block>, <minecraft:prismarine:1>, <minecraft:lapis_block>],
 [<ore:dustPrismarine>, <minecraft:lapis_block>, <ore:dustPrismarine>]]);
recipes.addShaped(<respect-your-elders:emeraldsoup>,
 [[<ore:gemEmerald>, <minecraft:ender_eye>, <ore:gemEmerald>],
 [<minecraft:poisonous_potato>, <minecraft:fish:2>, <minecraft:poisonous_potato>],
 [<ore:gemEmerald>, <charm:suspicious_soup>, <ore:gemEmerald>]]);
 
//Remove Charcoal from furnace
furnace.remove(<minecraft:coal:1>);

//Add dusts as furnace fuel
furnace.setFuel(<ore:dustCoke>, 4000);
furnace.setFuel(<ore:dustCharcoal>, 2000);

//Pantograph has iron rods instead of ingots
recipes.replaceAllOccurences(<ore:listAllmetalingots>, <ore:stickIron>, <pantography:pantograph>);
 
//Remove Forestry capsule useage as they "don't exist"
recipes.removeByRecipeName("forestry:cake_can");
recipes.removeByRecipeName("forestry:cake_capsule");
recipes.removeByRecipeName("forestry:cake_refractory");

//Arrows
recipes.remove(<minecraft:arrow>);
recipes.remove(<quark:arrow_ender>);
recipes.remove(<inspirations:arrow>);
recipes.addShaped(<minecraft:arrow> * 8,
 [[null, null, <ore:flint>],
 [null, <ore:stickWood>, null],
 [<ore:feather>, null, null]]);
recipes.addShaped(<minecraft:arrow> * 4,
 [[null, null, <ore:flint>],
 [null, <ore:stickWood>, null],
 [<ore:paper>, null, null]]);
recipes.addShaped(<minecraft:arrow> * 12,
 [[null, null, <ore:nuggetIron>],
 [null, <ore:stickWood>, <ore:nuggetIron>],
 [<ore:feather>, null, null]]);
recipes.addShaped(<minecraft:arrow> * 6,
 [[null, null, <ore:nuggetIron>],
 [null, <ore:stickWood>, <ore:nuggetIron>],
 [<ore:paper>, null, null]]);
recipes.addShaped(<quark:arrow_ender> * 4,
 [[null, null, <ore:gemEnderBiotite>],
 [null, <ore:stickWood>, <ore:enderpearl>],
 [<ore:feather>, null, null]]);
recipes.addShaped(<quark:arrow_ender> * 2,
 [[null, null, <ore:gemEnderBiotite>],
 [null, <ore:stickWood>, <ore:enderpearl>],
 [<ore:paper>, null, null]]);
recipes.addShaped(<inspirations:arrow> * 8,
 [[null, null, <ore:dustRedstone>],
 [null, <ore:stickWood>, null],
 [<ore:feather>, null, null]]);
recipes.addShaped(<inspirations:arrow> * 4,
 [[null, null, <ore:dustRedstone>],
 [null, <ore:stickWood>, null],
 [<ore:paper>, null, null]]);

//Atlas
recipes.remove(<antiqueatlas:empty_antique_atlas>);
recipes.addShaped(<antiqueatlas:empty_antique_atlas>,
 [[<minecraft:writable_book>, <minecraft:compass>],
 [<minecraft:map>, <minecraft:map>]]);

//Stone tool recipes
recipes.addShaped(<minecraft:stone_axe>,
 [[<minecraft:flint>, <minecraft:flint>],
 [<minecraft:flint>, <ore:stickWood>]]);
recipes.addShaped(<minecraft:stone_pickaxe>,
 [[<minecraft:flint>, <minecraft:flint>],
 [<ore:stickWood>, <minecraft:flint>]]);
recipes.addShaped(<minecraft:stone_hoe>,
 [[<minecraft:flint>, <minecraft:flint>],
 [<ore:stickWood>, null]]);
recipes.addShaped(<minecraft:stone_sword>,
 [[null, <minecraft:flint>],
 [<ore:stickWood>, null]]);
recipes.addShaped(<minecraft:stone_shovel>,
 [[<minecraft:flint>],
 [<ore:stickWood>]]);
 
/*
//Bones from animals for bonemeal early
//This would be enabled if it didn't cause @$#@#$ random crashes I can't trace
//Large animals: horses & variants, llamas, grizzly bears, polar bears, and panda bears
<entity:minecraft:horse>.addDrop(<minecraft:bone>, 1, 4);
<entity:minecraft:donkey>.addDrop(<minecraft:bone>, 1, 4);
<entity:minecraft:mule>.addDrop(<minecraft:bone>, 1, 4);
<entity:minecraft:llama>.addDrop(<minecraft:bone>, 1, 4);
<entity:pvj:pvj_grizzly_bear>.addDrop(<minecraft:bone>, 1, 4);
<entity:minecraft:polar_bear>.addDrop(<minecraft:bone>, 1, 4);
<entity:futuremc:panda>.addDrop(<minecraft:bone>, 1, 4);
//Medium animals: cows, pigs, deer, sheep
<entity:minecraft:cow>.addDrop(<minecraft:bone>, 1, 3);
<entity:minecraft:pig>.addDrop(<minecraft:bone>, 1, 3);
<entity:minecraft:sheep>.addDrop(<minecraft:bone>, 1, 3);
//Small animals: chickens, ducks, foxes, wolves, coyotes, owls
<entity:minecraft:chicken>.addDrop(<minecraft:bone>, 0, 2);
<entity:pvj:pvj_duck>.addDrop(<minecraft:bone>, 0, 2);
<entity:minecraft:wolf>.addDrop(<minecraft:bone>, 0, 2);
<entity:pvj:pvj_coyote>.addDrop(<minecraft:bone>, 0, 2);
//Tiny animals such as frogs and parrots drop no bones, and invertibrates such as squids also drop none
*/
