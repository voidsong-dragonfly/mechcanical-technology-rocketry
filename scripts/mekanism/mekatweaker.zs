#loader mekatweaker
//Import
import mods.mekatweaker.GasFactory;
import mods.mekatweaker.Gas;
import mods.contenttweaker.Color;

//Nitrogen and Nitrogen Dioxide
var nitrogengas = GasFactory.createGas("nitrogen");
nitrogengas.setColor(Color.fromHex("DFE5FE").getIntColor());
nitrogengas.setColorize(true);
nitrogengas.setIcon("blocks/gas");
nitrogengas.setNeedFluid(false);
nitrogengas.register();

//Stygian Acid Gas
var stygianacid = GasFactory.createGas("endacid");
stygianacid.setColor(Color.fromHex("B90EB9").getIntColor());
stygianacid.setColorize(false);
stygianacid.setIcon("blocks/endacid_still");
stygianacid.setIconFlowing("blocks/endacid_flow");
stygianacid.setNeedFluid(false);
stygianacid.register();
