//Import
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.Blueprint;

//Hide some useless LibVulpes and Advanced Rocketry blocks
removeAndHide(<libvulpes:blockphantom>);
removeAndHide(<libvulpes:placeholder>);
removeAndHide(<advancedrocketry:unlittorch>);
removeAndHide(<advancedrocketry:astrobed>);
removeAndHide(<advancedrocketry:lightsource>);
removeAndHide(<advancedrocketry:airlock_door>);

//Remove AR block tanks because IE barrels fill this with a more balanced fluid storage amount
removeAndHide(<advancedrocketry:liquidtank>);

//Remove planet selector because holo works just fine
removeAndHide(<advancedrocketry:planetselector>);

//Remove LibVulpes coal generators because this doesn't work IRL
removeAndHide(<libvulpes:coalgenerator>);

//Remove Advanced Rocketry circuits for Mekanism ones, which have a new crafting setup
removeAndHide(<advancedrocketry:ic:0>);
removeAndHide(<advancedrocketry:ic:2>);
removeAndHide(<advancedrocketry:wafer>);
removeAndHide(<advancedrocketry:itemcircuitplate:*>);

//Remove unused Advanced Rocketry multiblocks
removeAndHide(<advancedrocketry:blockpump>);
removeAndHide(<advancedrocketry:electrolyser>);
removeAndHide(<advancedrocketry:terraformer>);
removeAndHide(<advancedrocketry:platepress>);
removeAndHide(<advancedrocketry:arcfurnace>);
removeAndHide(<advancedrocketry:blastbrick>);

//Remove some unused Advanced Rocketry items
removeAndHide(<advancedrocketry:lens>);
