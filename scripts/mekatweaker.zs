#loader mekatweaker
//Import
import mods.mekatweaker.GasFactory;
import mods.mekatweaker.Gas;
import mods.contenttweaker.Color;

//Air gasses
var argon = GasFactory.createGas("argon");
argon.setColor(Color.fromHex("97D8DF").getIntColor());
argon.setColorize(true);
argon.setIcon("blocks/gas");
argon.setNeedFluid(true);
argon.register();
var air = GasFactory.createGas("air");
air.setColor(Color.fromHex("C1E6FF").getIntColor());
air.setColorize(true);
air.setIcon("blocks/gas");
air.setNeedFluid(true);
air.register();
var carbon_dioxide = GasFactory.createGas("carbondioxide");
carbon_dioxide.setColor(Color.fromHex("FFFFFF").getIntColor());
carbon_dioxide.setColorize(true);
carbon_dioxide.setIcon("blocks/gas");
carbon_dioxide.setNeedFluid(true);
carbon_dioxide.register();
var heatedair = GasFactory.createGas("heatedair");
heatedair.setColor(Color.fromHex("FFCEB7").getIntColor());
heatedair.setColorize(true);
heatedair.setIcon("blocks/gas");
heatedair.setNeedFluid(true);
heatedair.register();

//Hydrogen Sulfide Gas
var hydrogensulfide = GasFactory.createGas("hydrogensulfide");
hydrogensulfide.setColor(Color.fromHex("F9F0D8").getIntColor());
hydrogensulfide.setColorize(true);
hydrogensulfide.setIcon("blocks/gas");
hydrogensulfide.setNeedFluid(true);
hydrogensulfide.register();

//Helium and Helium - 3
var helium3 = GasFactory.createGas("helium3");
var helium = GasFactory.createGas("helium");
helium3.setColor(Color.fromHex("E3FFFE").getIntColor());
helium.setColor(Color.fromHex("E3FFFE").getIntColor());
helium3.setColorize(true);
helium.setColorize(true);
helium3.setIcon("blocks/gas");
helium.setIcon("blocks/gas");
helium3.setNeedFluid(true);
helium.setNeedFluid(true);
helium3.register();
helium.register();

//TiCl4 & ZrCl4
var titanium_tetrachloride = GasFactory.createGas("titaniumtetrachloride");
titanium_tetrachloride.setColor(Color.fromHex("E7EBC8").getIntColor());
titanium_tetrachloride.setColorize(true);
titanium_tetrachloride.setIcon("blocks/gas");
titanium_tetrachloride.register();
var zirconium_tetrachloride = GasFactory.createGas("zirconiumtetrachloride");
zirconium_tetrachloride.setColor(Color.fromHex("E7EBC8").getIntColor());
zirconium_tetrachloride.setColorize(true);
zirconium_tetrachloride.setIcon("blocks/gas");
zirconium_tetrachloride.register();

//Ammonia
var ammonia = GasFactory.createGas("ammonia");
ammonia.setColor(Color.fromHex("B3CDE2").getIntColor());
ammonia.setColorize(true);
ammonia.setIcon("blocks/gas");
ammonia.setNeedFluid(true);
ammonia.register();

//Fluorine
var fluorine = GasFactory.createGas("fluorine");
fluorine.setColor(Color.fromHex("CEBD89").getIntColor());
fluorine.setColorize(true);
fluorine.setIcon("blocks/gas");
fluorine.setNeedFluid(true);
fluorine.register();

//Nitrogen and Nitrogen Dioxide
var nitrogengas = GasFactory.createGas("nitrogengas");
nitrogengas.setColor(Color.fromHex("DFE5FE").getIntColor());
nitrogengas.setColorize(true);
nitrogengas.setIcon("blocks/gas");
nitrogengas.setNeedFluid(true);
nitrogengas.register();
var nitrogendioxide = GasFactory.createGas("nitrogendioxide");
nitrogendioxide.setColor(Color.fromHex("D95E4C").getIntColor());
nitrogendioxide.setColorize(true);
nitrogendioxide.setIcon("blocks/gas");
nitrogendioxide.setNeedFluid(true);
nitrogendioxide.register();

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
