//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;

//Remove Rustic and addons things from JEI that don't need to be there, things for BoP woods I have disabled
var rusticToRemove = [<rusticbopwoods:chair_sacred_oak>,
                      <rusticbopwoods:chair_cherry>,
                      <rusticbopwoods:chair_ethereal>,
                      <rusticbopwoods:chair_magic>,
                      <rusticbopwoods:chair_redwood>,
                      <rusticbopwoods:chair_eucalyptus>,
                      <rusticbopwoods:table_sacred_oak>,
                      <rusticbopwoods:table_cherry>,
                      <rusticbopwoods:table_ethereal>,
                      <rusticbopwoods:table_magic>,
                      <rusticbopwoods:table_redwood>,
                      <rusticbopwoods:table_eucalyptus>
                      ] as IItemStack[];
for item in rusticToRemove{
    removeAndHide(item);
    }


//Sandwiches don't have Rustic olive oil
recipes.remove(<culinaryconstruct:sandwich>);
