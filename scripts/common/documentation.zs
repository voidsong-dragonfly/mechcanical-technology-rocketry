//Imports
import mods.jei.JEI.addDescription;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

//Rocket fuels description
var fluids = [<liquid:liquid_hydrogen> * 1000,
              <liquid:liquid_methane> * 1000,
              <liquid:rp1> * 1000,
              <liquid:liquid_oxygen> * 1000,
              <liquid:hydrogenperoxide> * 1000,
              <liquid:hydrazine> * 1000,
                    ] as ILiquidStack[];
for fluid in fluids {
    addDescription(fluid, [
        "------Bipropellants------",
        "Liquid Hydrogen      220mB/s",
        "Liquid Methane        60mB/s",
        "RP-1                    40mB/s",
        "Liquid Oxygen         80mB/s",
        "",
        "-----Monopropellants-----",
        "Hydrogen Peroxide  1000mB/s",
        "Hydrazine              500mB/s",
        "---Nuclear Propellants---",
        "Liquid Hydrogen      20mB/s"]);
}

<liquid:air>.addTooltip("Made via crafting an IE metal barrel");
