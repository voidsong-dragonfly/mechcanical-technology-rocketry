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
                              <traverse:cold_grass>,
                              <traverse:dead_grass>
                       ] as IItemStack[];
for item in traverseBlocksToRemove{
    removeAndHide(item);
    }
