//Import
import crafttweaker.item.IItemStack;
import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hide;
import mods.jei.JEI.addItem;


//Remove LogisticsPipes uncraftable items, power suppliers & fluid pipes (make no SENSE), random interdimensional connection mess (use EIO and Dew of the Void, which makes sense... the capabilites of these otherwise do not), & similar
var logiPipesRemoval = [<logisticspipes:upgrade_fluid_crafting>,
                        <logisticspipes:upgrade_power_transportation>,
                        <logisticspipes:upgrade_power_supplier_mj>,
                        <logisticspipes:upgrade_power_supplier_rf>,
                        <logisticspipes:upgrade_power_supplier_eu_lv>,
                        <logisticspipes:upgrade_power_supplier_eu_mv>,
                        <logisticspipes:upgrade_power_supplier_eu_hv>,
                        <logisticspipes:upgrade_power_supplier_eu_ev>,
                        <logisticspipes:upgrade_cc_remote_control>,
                        <logisticspipes:pipe_fluid_basic>,
                        <logisticspipes:pipe_fluid_supplier>,
                        <logisticspipes:pipe_fluid_insertion>,
                        <logisticspipes:pipe_fluid_provider>,
                        <logisticspipes:pipe_fluid_request>,
                        <logisticspipes:pipe_fluid_extractor>,
                        <logisticspipes:pipe_fluid_satellite>,
                        <logisticspipes:pipe_fluid_supplier_mk2>,
                        <logisticspipes:pipe_fluid_terminus>,
                        <logisticspipes:hud_glasses>,
                        <logisticspipes:parts:*>,
                        <logisticspipes:disk>,
                        <logisticspipes:guide_book>,
                        <logisticspipes:program_compiler>,
                        <logisticspipes:power_provider_rf>,
                        <logisticspipes:power_provider_eu>,
                        <logisticspipes:power_provider_mj>,
                        <logisticspipes:pipe_provider>,
                        <logisticspipes:pipe_crafting>,
                        <logisticspipes:pipe_supplier>,
                        <logisticspipes:upgrade_logic_controller>,
                        <logisticspipes:chip_basic_raw>,
                        <logisticspipes:chip_advanced_raw>,
                        <logisticspipes:chip_fpga_raw>,
                        <logisticspipes:pipe_inventory_system_connector>,
                        <logisticspipes:pipe_remote_orderer>,
                        <logisticspipes:remote_orderer>
                        ] as IItemStack[];
for item in logiPipesRemoval{
    removeAndHide(item);
    }
    
//Clear tooltip
<logisticspipes:logistics_programmer>.clearTooltip();

//Remove LP recipes we don't want
recipes.removeByRegex("logisticspipes:(?!(remote_orderer_[0-9][0-9]?|pipe\/pipe_hs.*)).*");
furnace.remove(<logisticspipes:chip_fpga>);
furnace.remove(<logisticspipes:chip_basic>);
furnace.remove(<logisticspipes:chip_advanced>);

//LogisticsPipes blocks
recipes.addShaped(<logisticspipes:frame>,
 [[<mekanism:polyethene:2>, <logisticspipes:chip_basic>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:scaffoldingSteel>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <logisticspipes:chip_basic>, <mekanism:polyethene:2>]]);
recipes.addShaped(<logisticspipes:power_junction>,
 [[<immersiveengineering:wirecoil>, <logisticspipes:chip_basic>, <immersiveengineering:wirecoil>],
 [<libvulpes:battery:1>, <logisticspipes:frame>, <libvulpes:battery:1>],
 [<libvulpes:battery:1>, <logisticspipes:chip_basic>, <libvulpes:battery:1>]]);
recipes.addShaped(<logisticspipes:security_station>, 
 [[<logisticspipes:chip_advanced>],
 [<logisticspipes:frame>],
 [<ore:paneGlassColorless>]]);
recipes.addShaped(<logisticspipes:statistics_table>, 
 [[<ore:paneGlassColorless>],
 [<logisticspipes:frame>],
 [<logisticspipes:chip_advanced>]]);
recipes.addShaped(<logisticspipes:crafting_table>,
 [[null, <minecraft:crafting_table>, null],
 [<logisticspipes:chip_fpga>, <logisticspipes:frame>, <logisticspipes:chip_fpga>],
 [null, <ore:chestWood>, null]]);
recipes.addShaped(<logisticspipes:crafting_table_fuzzy>, 
 [[<logisticspipes:chip_basic>],
 [<logisticspipes:crafting_table>]]);
recipes.addShaped(<logisticspipes:pipe_request_table>,
 [[null, <minecraft:crafting_table>, null],
 [<logisticspipes:chip_advanced>, <logisticspipes:frame>, <logisticspipes:chip_advanced>],
 [<logisticspipes:pipe_request_mk2>, <ore:chestWood>, <logisticspipes:pipe_satellite>]]);

//LogisticsPipes pipes
//Basic
recipes.addShaped(<logisticspipes:pipe_transport_basic>,
 [[<ore:stickCopper>, <ore:paneGlass>, <ore:stickCopper>],
 [<ore:paneGlass>, null, <ore:paneGlass>],
 [<ore:stickCopper>, <ore:paneGlass>, <ore:stickCopper>]]);
recipes.addShaped(<logisticspipes:pipe_transport_basic>,
 [[<ore:stickAluminum>, <ore:paneGlass>, <ore:stickAluminum>],
 [<ore:paneGlass>, null, <ore:paneGlass>],
 [<ore:stickAluminum>, <ore:paneGlass>, <ore:stickAluminum>]]);
recipes.addShaped(<logisticspipes:pipe_basic>,
 [[<logisticspipes:chip_basic>],
 [<logisticspipes:pipe_transport_basic>],
 [<immersiveengineering:wirecoil:5>]]);
//Chassis
recipes.addShaped(<logisticspipes:pipe_chassis_mk1>,
 [[<immersiveengineering:material:27>],
 [<logisticspipes:pipe_basic>],
 [<logisticspipes:chip_fpga>]]);
recipes.addShaped(<logisticspipes:pipe_chassis_mk2>,
 [[<ore:circuitBasic>],
 [<logisticspipes:pipe_basic>],
 [<logisticspipes:chip_fpga>]]);
recipes.addShaped(<logisticspipes:pipe_chassis_mk3>,
 [[<ore:circuitAdvanced>],
 [<logisticspipes:pipe_basic>],
 [<logisticspipes:chip_fpga>]]);
recipes.addShaped(<logisticspipes:pipe_chassis_mk4>,
 [[<ore:circuitElite>],
 [<logisticspipes:pipe_basic>],
 [<logisticspipes:chip_fpga>]]);
recipes.addShaped(<logisticspipes:pipe_chassis_mk5>,
 [[<ore:circuitUltimate>],
 [<logisticspipes:pipe_basic>],
 [<logisticspipes:chip_fpga>]]);
//Specialty
recipes.addShaped(<logisticspipes:pipe_request>,
 [[<logisticspipes:chip_basic>],
 [<logisticspipes:pipe_basic>]]);
recipes.addShaped(<logisticspipes:pipe_request_mk2>,
 [[<logisticspipes:chip_advanced>],
 [<logisticspipes:pipe_request>]]);
recipes.addShaped(<logisticspipes:pipe_satellite>,
 [[<logisticspipes:chip_fpga>],
 [<logisticspipes:pipe_basic>]]);
recipes.addShaped(<logisticspipes:pipe_system_entrance>,
 [[<logisticspipes:chip_advanced>],
 [<logisticspipes:pipe_basic>],
 [<logisticspipes:chip_fpga>]]);
recipes.addShaped(<logisticspipes:pipe_system_destination>,
 [[<logisticspipes:chip_fpga>],
 [<logisticspipes:pipe_basic>],
 [<logisticspipes:chip_advanced>]]);
recipes.addShaped(<logisticspipes:pipe_firewall>,
 [[<logisticspipes:chip_advanced>],
 [<logisticspipes:pipe_basic>]]);
 
//Item recipes
//Modules
recipes.addShaped(<logisticspipes:module_blank>,
 [[<ore:circuitBoardPlastic>, <ore:wireElectrum>],
 [<ore:wireElectrum>, <immersiveengineering:wirecoil:5>]]);
recipes.addShaped(<logisticspipes:module_item_sink>,
 [[<logisticspipes:module_blank>, <immersiveengineering:wirecoil:5>, <logisticspipes:logistics_programmer>],
 [<immersiveengineering:wirecoil:5>, <logisticspipes:chip_fpga>, null],
 [null, null, null]]);
recipes.addShaped(<logisticspipes:module_passive_supplier>,
 [[<logisticspipes:module_blank>, <immersiveengineering:wirecoil:5>, null],
 [<immersiveengineering:wirecoil:5>, <logisticspipes:chip_fpga>, <logisticspipes:logistics_programmer>],
 [null, null, null]]);
recipes.addShaped(<logisticspipes:module_terminus>,
 [[<logisticspipes:module_blank>, <immersiveengineering:wirecoil:5>, null],
 [<immersiveengineering:wirecoil:5>, <logisticspipes:chip_fpga>, null],
 [null, null, <logisticspipes:logistics_programmer>]]);
recipes.addShaped(<logisticspipes:module_item_sink_polymorphic>,
 [[<logisticspipes:module_blank>, <immersiveengineering:wirecoil:5>, null],
 [<immersiveengineering:wirecoil:5>, <logisticspipes:chip_fpga>, null],
 [null, <logisticspipes:logistics_programmer>, null]]);
recipes.addShaped(<logisticspipes:module_item_sink_mod>,
 [[<logisticspipes:module_blank>, <logisticspipes:chip_fpga>, <logisticspipes:logistics_programmer>],
 [<logisticspipes:chip_fpga>, <immersiveengineering:wirecoil:5>, null],
 [null, null, null]]);
recipes.addShaped(<logisticspipes:module_item_sink_oredict>,
 [[<logisticspipes:module_blank>, <logisticspipes:chip_fpga>, null],
 [<logisticspipes:chip_fpga>, <immersiveengineering:wirecoil:5>, <logisticspipes:logistics_programmer>],
 [null, null, null]]);
recipes.addShaped(<logisticspipes:module_item_sink_creativetab>,
 [[<logisticspipes:module_blank>, <logisticspipes:chip_fpga>, null],
 [<logisticspipes:chip_fpga>, <immersiveengineering:wirecoil:5>, null],
 [null, null, <logisticspipes:logistics_programmer>]]);
recipes.addShaped(<logisticspipes:module_provider>,
 [[<logisticspipes:module_blank>, <logisticspipes:chip_fpga>, <logisticspipes:logistics_programmer>],
 [<logisticspipes:chip_fpga>, <logisticspipes:chip_basic>, null],
 [null, null, null]]);
recipes.addShaped(<logisticspipes:module_extractor>,
 [[<logisticspipes:module_blank>, <logisticspipes:chip_fpga>, null],
 [<logisticspipes:chip_fpga>, <logisticspipes:chip_basic>, <logisticspipes:logistics_programmer>],
 [null, null, null]]);
recipes.addShaped(<logisticspipes:module_crafter>,
 [[<logisticspipes:module_blank>, <logisticspipes:chip_fpga>, null],
 [<logisticspipes:chip_fpga>, <logisticspipes:chip_basic>, null],
 [null, null, <logisticspipes:logistics_programmer>]]);
recipes.addShaped(<logisticspipes:module_quick_sort>,
 [[<logisticspipes:module_blank>, <logisticspipes:chip_fpga>, <logisticspipes:logistics_programmer>],
 [<logisticspipes:chip_fpga>, <logisticspipes:chip_advanced>, null],
 [null, null, null]]);
recipes.addShaped(<logisticspipes:module_active_supplier>,
 [[<logisticspipes:module_blank>, <logisticspipes:chip_basic>, <logisticspipes:logistics_programmer>],
 [<logisticspipes:chip_basic>, <logisticspipes:chip_advanced>, null],
 [null, null, null]]);
recipes.addShaped(<logisticspipes:module_enchantment_sink>,
 [[<logisticspipes:module_blank>, <logisticspipes:chip_basic>, <logisticspipes:logistics_programmer>],
 [<logisticspipes:chip_basic>, <logisticspipes:chip_fpga>, null],
 [null, null, null]]);
recipes.addShaped(<logisticspipes:module_enchantment_sink_mk2>,
 [[<logisticspipes:chip_fpga>],
 [<logisticspipes:module_enchantment_sink>]]);
recipes.addShaped(<logisticspipes:module_extractor_advanced>,
 [[<logisticspipes:chip_fpga>],
 [<logisticspipes:module_extractor>]]);
//Upgrades
recipes.addShaped(<logisticspipes:upgrade_speed>,
 [[<ore:circuitBoardPlastic>, <logisticspipes:chip_fpga>, <logisticspipes:logistics_programmer>],
 [null, null, null],
 [null, null, null]]);
recipes.addShaped(<logisticspipes:upgrade_item_extraction>,
 [[<ore:circuitBoardPlastic>, <logisticspipes:chip_basic>, <logisticspipes:logistics_programmer>],
 [null, null, null],
 [null, null, null]]);
recipes.addShaped(<logisticspipes:upgrade_action_speed>,
 [[<ore:circuitBoardPlastic>, <logisticspipes:chip_basic>, null],
 [null, null, <logisticspipes:logistics_programmer>],
 [null, null, null]]);
recipes.addShaped(<logisticspipes:upgrade_fuzzy>,
 [[<ore:circuitBoardPlastic>, <logisticspipes:chip_basic>, null],
 [null, null, null],
 [null, null, <logisticspipes:logistics_programmer>]]);
recipes.addShaped(<logisticspipes:upgrade_crafting_byproduct>,
 [[<ore:circuitBoardPlastic>, <logisticspipes:chip_basic>, null],
 [null, null, null],
 [null, <logisticspipes:logistics_programmer>, null]]);
recipes.addShaped(<logisticspipes:upgrade_sneaky>,
 [[<ore:circuitBoardPlastic>, <logisticspipes:chip_basic>, null],
 [null, null, null],
 [<logisticspipes:logistics_programmer>, null, null]]);
recipes.addShaped(<logisticspipes:upgrade_item_stack_extraction>,
 [[<ore:circuitBoardPlastic>, <logisticspipes:chip_advanced>, <logisticspipes:logistics_programmer>],
 [null, null, null],
 [null, null, null]]);
recipes.addShaped(<logisticspipes:upgrade_module_upgrade>,
 [[<ore:circuitBoardPlastic>, <logisticspipes:chip_advanced>, null],
 [null, null, <logisticspipes:logistics_programmer>],
 [null, null, null]]);
recipes.addShaped(<logisticspipes:upgrade_crafting_monitoring>,
 [[<ore:circuitBoardPlastic>, <logisticspipes:chip_advanced>, null],
 [null, null, null],
 [null, null, <logisticspipes:logistics_programmer>]]);
recipes.addShaped(<logisticspipes:upgrade_pattern>,
 [[<ore:circuitBoardPlastic>, <logisticspipes:chip_advanced>, null],
 [null, null, null],
 [null, <logisticspipes:logistics_programmer>, null]]);
recipes.addShaped(<logisticspipes:upgrade_satellite_advanced>,
 [[<ore:circuitBoardPlastic>, <logisticspipes:chip_advanced>, null],
 [null, null, null],
 [<logisticspipes:logistics_programmer>, null, null]]);
recipes.addShaped(<logisticspipes:upgrade_crafting_cleanup>,
 [[<logisticspipes:chip_advanced>],
 [<logisticspipes:upgrade_crafting_byproduct>]]);
recipes.addShaped(<logisticspipes:upgrade_sneaky_combination>,
 [[<logisticspipes:chip_advanced>],
 [<logisticspipes:upgrade_sneaky>]]);
recipes.addShaped(<logisticspipes:upgrade_disconnection>,
 [[<ore:sheetIron>, <ore:wireSteel>],
 [<ore:wireSteel>, null]]);
recipes.addShaped(<logisticspipes:upgrade_opaque>,
 [[<mekanism:polyethene:2>, <ore:wireSteel>],
 [<ore:wireSteel>, null]]);
 
//LogisticsPipes tools
recipes.addShaped(<logisticspipes:logistics_programmer>,
 [[<mekanism:polyethene:2>, <ore:dyeBlue>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:paneGlassColorless>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:circuitBasic>, <mekanism:polyethene:2>]]);
recipes.addShaped(<logisticspipes:pipe_manager>,
 [[<mekanism:polyethene:2>, <ore:dyeYellow>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:paneGlassColorless>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:circuitBasic>, <mekanism:polyethene:2>]]);
recipes.addShaped(<logisticspipes:pipe_controller>,
 [[<mekanism:polyethene:2>, <ore:dyeRed>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:paneGlassColorless>, <mekanism:polyethene:2>],
 [<mekanism:polyethene:2>, <ore:circuitBasic>, <mekanism:polyethene:2>]]);
recipes.addShaped(<logisticspipes:sign_creator>,
 [[<mekanism:polyethene:2>, <logisticspipes:chip_fpga>, <mekanism:polyethene:2>],
 [<logisticspipes:chip_advanced>, <ore:paneGlassColorless>, <logisticspipes:chip_advanced>],
 [<mekanism:polyethene:2>, <ore:circuitAdvanced>, <mekanism:polyethene:2>]]);
