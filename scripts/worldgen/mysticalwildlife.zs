//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;
import mods.futuremc.Campfire;

//Remove and hide unused items
var mysticWildlifeToRemove = [<minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalwildlife:vrontausaurus"}}),
                              <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalwildlife:yaga_hog"}}),
                              <minecraft:spawn_egg>.withTag({EntityTag: {id: "mysticalwildlife:dusk_lurker"}}),
                              <mysticalwildlife:vrontausaurus_fur>,
                              <mysticalwildlife:vrontausaurus_fur_tuft>,
                              <mysticalwildlife:vrontausaurus_meat_raw>,
                              <mysticalwildlife:vrontausaurus_meat_cooked>,
                              <mysticalwildlife:yaga_hog_meat_raw>,
                              <mysticalwildlife:yaga_hog_meat_cooked>,
                              <mysticalwildlife:dusk_ash>,
                              <mysticalwildlife:dusk_lurker_fur>,
                              <mysticalwildlife:dusk_lurker_fur_tuft>,
                              <mysticalwildlife:dusk_lurker_meat_raw>,
                              <mysticalwildlife:plumper_blubber>,
                              <mysticalwildlife:dusk_lurker_meat_cooked>,
                              <mysticalwildlife:plumper_meat_raw>,
                              <mysticalwildlife:plumper_meat_cooked>
                       ] as IItemStack[];
for item in mysticWildlifeToRemove{
    removeAndHide(item);
    furnace.remove(item);
    Campfire.removeRecipe(item);
    }
