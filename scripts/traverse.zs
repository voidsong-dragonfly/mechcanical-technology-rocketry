//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;

//Remove Traverse blocks that should not be seen (Atumnal Leaves and saplings, fir trees)
//Side note what on Earth is up with traverse fir leaves. They look pretty but are missing two meta states and it makes them unusable in ReC trees. So away they go.
var traverseBlocksToRemove = [<traverse:red_autumnal_leaves>,
                              <traverse:red_autumnal_sapling>,
                              <traverse:brown_autumnal_leaves>,
                              <traverse:brown_autumnal_sapling>,
                              <traverse:orange_autumnal_leaves>,
                              <traverse:orange_autumnal_sapling>,
                              <traverse:yellow_autumnal_leaves>,
                              <traverse:yellow_autumnal_sapling>,
                              <traverse:fir_leaves>,
                              <traverse:fir_sapling>,
                              <traverse:fir_log>,
                              <traverse:fir_planks>,
                              <traverse:fir_stairs>,
                              <traverse:fir_slab>,
                              <traverse:fir_fence>,
                              <traverse:fir_fence_gate>,
                              <traverse:fir_door>,
                              <traverse:blue_rock_cobblestone_wall>,
                              <traverse:blue_rock_cobblestone_slab>,
                              <traverse:blue_rock_cobblestone>,
                              <traverse:blue_rock_slab>,
                              <traverse:blue_rock_bricks_chiseled>,
                              <traverse:blue_rock>,
                              <traverse:blue_rock_bricks>
                       ] as IItemStack[];
for item in traverseBlocksToRemove{
    removeAndHide(item);
    }

//Turn blocks into their correct types
recipes.remove(<traverse:red_rock>);
furnace.remove(<traverse:blue_rock>);

//Make crag rock brick stuff into crucible bits
recipes.replaceAllOccurences(<traverse:blue_rock_bricks>, <ore:blockSteel>);
recipes.remove(<traverse:blue_rock_cobblestone_stairs>);
recipes.addShaped(<traverse:blue_rock_cobblestone_stairs>,
 [[<ore:stickSteel>, <ore:sheetSteel>, null],
 [<ore:sheetSteel>, <ore:sheetSteel>, <ore:sheetSteel>],
 [<ore:stickSteel>, <ore:sheetSteel>, <ore:stickSteel>]]);
