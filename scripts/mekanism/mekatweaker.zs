#loader mekatweaker
//Import
import mods.mekatweaker.GasFactory;
import mods.mekatweaker.Gas;
import mods.contenttweaker.Color;

//Nitrogen and Nitrogen Dioxide
var nitrogengas = GasFactory.createGas("nitrogengas");
nitrogengas.setColor(Color.fromHex("DFE5FE").getIntColor());
nitrogengas.setColorize(true);
nitrogengas.setIcon("blocks/gas");
nitrogengas.setNeedFluid(true);
nitrogengas.register();

//Stygian Acid Gas
var stygianacid = GasFactory.createGas("endacid");
stygianacid.setColor(Color.fromHex("B90EB9").getIntColor());
stygianacid.setColorize(false);
stygianacid.setIcon("blocks/endacid_still");
stygianacid.setIconFlowing("blocks/endacid_flow");
stygianacid.setNeedFluid(true);
stygianacid.register();

//Refined Obsidian 
var impurerefinedobsidian = GasFactory.createGas("impurerefinedobsidian");
impurerefinedobsidian.setColor(Color.fromHex("3B3F6A").getIntColor());
impurerefinedobsidian.setColorize(true);
impurerefinedobsidian.setIcon("blocks/gas");
impurerefinedobsidian.register();
var refinedobsidian = GasFactory.createGas("refinedobsidian");
refinedobsidian.setColor(Color.fromHex("51416B").getIntColor());
refinedobsidian.setColorize(true);
refinedobsidian.setIcon("blocks/gas");
refinedobsidian.register();
var impurerefinedglowstone = GasFactory.createGas("impurerefinedglowstone");
impurerefinedglowstone.setColor(Color.fromHex("E8C23A").getIntColor());
impurerefinedglowstone.setColorize(true);
impurerefinedglowstone.setIcon("blocks/gas");
impurerefinedglowstone.register();
var refinedglowstone = GasFactory.createGas("refinedglowstone");
refinedglowstone.setColor(Color.fromHex("FAC70C").getIntColor());
refinedglowstone.setColorize(true);
refinedglowstone.setIcon("blocks/gas");
refinedglowstone.register();
