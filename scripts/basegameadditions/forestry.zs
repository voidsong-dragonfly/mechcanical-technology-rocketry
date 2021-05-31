//Import
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import crafttweaker.item.IItemStack;
import mods.forestry.CharcoalWall;
import mods.alfinivia.ImmersiveEngineering;

//Remove most of Forestry
var forestryRemovals = [<forestry:wrench>,
                        <forestry:pipette>,
                        <forestry:sturdy_machine>,
                        <forestry:hardened_machine>,
                        <forestry:impregnated_casing>,
                        <forestry:flexible_casing>,
                        <forestry:crafting_material:*>,
                        <forestry:naturalist_helmet>,
                        <forestry:bituminous_peat>,
                        <forestry:chipsets:*>, 
                        <forestry:soldering_iron>,
                        <forestry:carton>,
                        <forestry:oak_stick>,
                        <forestry:wood_pulp>,
                        <forestry:broken_bronze_shovel>,
                        <forestry:bronze_shovel>,
                        <forestry:broken_bronze_pickaxe>,
                        <forestry:bronze_pickaxe>,
                        <forestry:kit_shovel>,
                        <forestry:kit_pickaxe>,
                        <forestry:mouldy_wheat>,
                        <forestry:decaying_wheat>,
                        <forestry:iodine_capsule>,
                        <forestry:phosphor>,
                        <forestry:beeswax>,
                        <forestry:refractory_wax>,
                        <forestry:fruits:*>,
                        <forestry:analyzer>,
                        <forestry:escritoire>,
                        <forestry:resources:*>,
                        <forestry:resource_storage:*>,
                        <forestry:can:*>,
                        <forestry:capsule:*>,
                        <forestry:refractory:*>,
                        <forestry:portable_alyzer>,
                        ] as IItemStack[];
for item in forestryRemovals{
    removeAndHide(item);
    }
    
//Forestry crafting changes
//Fertilizer
recipes.remove(<forestry:fertilizer_bio>);
var calcium_sources = <ore:dustCalcium> | <ore:dustAsh> | <minecraft:dye:15>;
recipes.addShaped(<forestry:fertilizer_compound> * 4,
 [[<mekanism:biofuel>, <mekanism:biofuel>],
 [calcium_sources, <ore:dustSaltpeter>]]);
recipes.addShaped(<forestry:fertilizer_compound> * 6,
 [[<forestry:fertilizer_bio>, <forestry:fertilizer_bio>],
 [calcium_sources, <ore:dustSaltpeter>]]);

//Fertilizers
ImmersiveEngineering.addItemFertilizer(<mekanism:biofuel> | <forestry:fertilizer_bio>, 9.0);
ImmersiveEngineering.addItemFertilizer(<ore:dustAsh> | <ore:dustCalcium>, 10.0);

//Remove can recipes
recipes.removeByRecipeName("forestry:can_bog_earth");
recipes.removeByRecipeName("forestry:capsule_bog_earth");
recipes.removeByRecipeName("forestry:refractory_capsule_bog_earth");

//Redo ash brick stairs
recipes.remove(<forestry:ash_stairs>);
recipes.addShaped(<forestry:ash_stairs> * 8,
 [[<forestry:ash_brick>, null, null],
 [<forestry:ash_brick>, <forestry:ash_brick>, null],
 [<forestry:ash_brick>, <forestry:ash_brick>, <forestry:ash_brick>]]);
 
//Remove endstone as an applicable material for charcoal piles
CharcoalWall.removeWall(<minecraft:netherrack>.asBlock());
CharcoalWall.removeWall(<minecraft:end_stone>.asBlock());
CharcoalWall.removeWall(<minecraft:end_bricks>.asBlock());

//Add coke brick and reinforced coke brick as options
CharcoalWall.addWallStack(<immersiveengineering:stone_decoration>, 4);
CharcoalWall.addWallStack(<minecraft:nether_brick>, 5.5);
CharcoalWall.addWallStack(<quark:charred_nether_bricks>, 6);
CharcoalWall.addWallStack(<immersivetech:stone_decoration>, 11);

//Remove MC cobweb recipes
recipes.remove(<minecraft:web>);
