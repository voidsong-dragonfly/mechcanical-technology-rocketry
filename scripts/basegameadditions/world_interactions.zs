//Import
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import crafttweaker.block.IBlockPattern;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerInteractBlockEvent;

       

//Flint interactions
//Blocks we can't use to flake
function isNotInteractableFlint(block as IBlock) as bool {
	if(! isNull(block)) {
	    var material = block.definition.defaultState.material;
		return !(material.matches(IMaterial.anvil()) || material.matches(IMaterial.iron()) || material.matches(IMaterial.rock()));
    }
    return true;
}
//We're not holding flint
function isNotInteractingFlint(player as IPlayer) as bool {
	return isNull(player) || isNull(player.currentItem) || !(<ore:itemFlint> has player.currentItem);
}
//Both Combined
function playerCannotInteractFlint(evt as PlayerInteractBlockEvent) as bool {
	if (isNull(evt) || isNull(evt.world) || evt.canceled || evt.useItem == "DENY")
		return true;
	return isNotInteractingFlint(evt.player) || isNotInteractableFlint(evt.block);
}
//Did we actually do it?
events.onPlayerInteractBlock(function(evt as PlayerInteractBlockEvent) as void {
	if (playerCannotInteractFlint(evt))
		return;

    if (dropItemFlint(evt, <flintmod:tool_part_flint>)) {
        evt.cancellationResult = "SUCCESS";
        evt.cancel();
	}
});
//Dropping items
function dropItemFlint(evt as PlayerInteractBlockEvent, stack as IItemStack) as bool {
    if (evt.world.remote)
        return true;

    // dummy entity to drop the item with
    val dummy = <entity:minecraft:arrow>.createEntity(evt.world);
    dummy.posX = evt.x as double + 0.5;
    dummy.posY = evt.y as double + 1.5;
    dummy.posZ = evt.z as double + 0.5;

    evt.player.dropItem(false).setDead();
    dummy.dropItem(stack);
}



//Log interactions
//Logs that can be converted to debarked variants, and their debarked variants
static logDuals  as IBlockState[][string] = {"oak": [<blockstate:debark:debarked_log_minecraft_log:variant=0> as IBlockState, <blockstate:minecraft:log:variant=oak> as IBlockState],
                                             "spruce": [<blockstate:debark:debarked_log_minecraft_log:variant=1> as IBlockState, <blockstate:minecraft:log:variant=spruce> as IBlockState],
                                             "birch": [<blockstate:debark:debarked_log_minecraft_log:variant=2> as IBlockState, <blockstate:minecraft:log:variant=birch> as IBlockState],
                                             "jungle": [<blockstate:debark:debarked_log_minecraft_log:variant=3> as IBlockState, <blockstate:minecraft:log:variant=jungle> as IBlockState],
                                             "acacia": [<blockstate:debark:debarked_log_minecraft_log2:variant=0> as IBlockState, <blockstate:minecraft:log2:variant=acacia> as IBlockState],
                                             "darkOak": [<blockstate:debark:debarked_log_minecraft_log2:variant=1> as IBlockState, <blockstate:minecraft:log2:variant=dark_oak> as IBlockState],
                                             "fir": [<blockstate:debark:debarked_log_biomesoplenty_log_0:variant=3> as IBlockState, <blockstate:biomesoplenty:log_0:variant=fir> as IBlockState],
                                             "mangrove": [<blockstate:debark:debarked_log_biomesoplenty_log_1:variant=2> as IBlockState, <blockstate:biomesoplenty:log_1:variant=mangrove> as IBlockState],
                                             "palm": [<blockstate:debark:debarked_log_biomesoplenty_log_1:variant=3> as IBlockState, <blockstate:biomesoplenty:log_1:variant=palm> as IBlockState],
                                             "cypress": [<blockstate:debark:debarked_log_biomesoplenty_log_2:variant=1> as IBlockState, <blockstate:biomesoplenty:log_2:variant=willow> as IBlockState],
                                             "pine": [<blockstate:debark:debarked_log_biomesoplenty_log_2:variant=2> as IBlockState, <blockstate:biomesoplenty:log_2:variant=pine> as IBlockState],
                                             "hellbark": [<blockstate:debark:debarked_log_biomesoplenty_log_2:variant=3> as IBlockState, <blockstate:biomesoplenty:log_2:variant=hellbark> as IBlockState],
                                             "jacaranda": [<blockstate:debark:debarked_log_biomesoplenty_log_3:variant=0> as IBlockState, <blockstate:biomesoplenty:log_3:variant=jacaranda> as IBlockState],
                                             "mahogany": [<blockstate:debark:debarked_log_biomesoplenty_log_3:variant=1> as IBlockState, <blockstate:biomesoplenty:log_3:variant=mahogany> as IBlockState],
                                             "ebony": [<blockstate:debark:debarked_log_biomesoplenty_log_3:variant=2> as IBlockState, <blockstate:biomesoplenty:log_3:variant=ebony> as IBlockState],
                                             "dead": [<blockstate:debark:debarked_log_biomesoplenty_log_4:variant=1> as IBlockState, <blockstate:biomesoplenty:log_4:variant=dead> as IBlockState],
                                             "aspen": [<blockstate:debark:debarked_log_pvj_log_aspen:variant=0> as IBlockState, <blockstate:pvj:log_aspen> as IBlockState],
                                             "baobab": [<blockstate:debark:debarked_log_pvj_log_baobab:variant=0> as IBlockState, <blockstate:pvj:log_baobab> as IBlockState],
                                             "cherryBlossom": [<blockstate:debark:debarked_log_pvj_log_cherry_blossom:variant=0> as IBlockState, <blockstate:pvj:log_cherry_blossom> as IBlockState],
                                             "cottonwood": [<blockstate:debark:debarked_log_pvj_log_cottonwood:variant=0> as IBlockState, <blockstate:pvj:log_cottonwood> as IBlockState],
                                             "firPVJ": [<blockstate:debark:debarked_log_pvj_log_fir:variant=0> as IBlockState, <blockstate:pvj:log_fir> as IBlockState],
                                             "jacarandaPVJ": [<blockstate:debark:debarked_log_pvj_log_jacaranda:variant=0> as IBlockState, <blockstate:pvj:log_jacaranda> as IBlockState],
                                             "juniper": [<blockstate:debark:debarked_log_pvj_log_juniper:variant=0> as IBlockState, <blockstate:pvj:log_juniper> as IBlockState],
                                             "mangrovePVJ": [<blockstate:debark:debarked_log_pvj_log_mangrove:variant=0> as IBlockState, <blockstate:pvj:log_mangrove> as IBlockState],
                                             "maple": [<blockstate:debark:debarked_log_pvj_log_maple:variant=0> as IBlockState, <blockstate:pvj:log_maple> as IBlockState],
                                             "palmPVJ": [<blockstate:debark:debarked_log_pvj_log_palm:variant=0> as IBlockState, <blockstate:pvj:log_palm> as IBlockState],
                                             "pinePVJ": [<blockstate:debark:debarked_log_pvj_log_pine:variant=0> as IBlockState, <blockstate:pvj:log_pine> as IBlockState],
                                             "redwood": [<blockstate:debark:debarked_log_pvj_log_redwood:variant=0> as IBlockState, <blockstate:pvj:log_redwood> as IBlockState],
                                             "willow": [<blockstate:debark:debarked_log_pvj_log_willow:variant=0> as IBlockState, <blockstate:pvj:log_willow> as IBlockState],
                                             "olive": [<blockstate:debark:debarked_log_rustic_log:variant=0> as IBlockState, <blockstate:rustic:log:variant=olive> as IBlockState],
                                             "ironwood": [<blockstate:debark:debarked_log_rustic_log:variant=1> as IBlockState, <blockstate:rustic:log:variant=ironwood> as IBlockState]
                                             };
function isNotInteractableWood(block as IBlock) as bool {
	if(!isNull(block)) {
	    var log as IBlockPattern = block;
	    for log2, blockArray in logDuals {
	        if(log has blockArray[1].block)
	            return false;
	    }
    }
    return true;
}
//We're not holding a blade
function isNotInteractingWood(player as IPlayer) as bool {
	return isNull(player) || isNull(player.currentItem) || !(player.currentItem.tag has {"sword/blade": "sword/short_blade"} as IData);
}
//Both Combined
function playerCannotInteractWood(evt as PlayerInteractBlockEvent) as bool {
	if (isNull(evt) || isNull(evt.world) || evt.canceled || evt.useItem == "DENY")
		return true;
	return isNotInteractingWood(evt.player) || isNotInteractableWood(evt.block);
}
//Did we actually do it?
events.onPlayerInteractBlock(function(evt as PlayerInteractBlockEvent) as void {
	if (playerCannotInteractWood(evt))
		return;

    if (dropItemWood(evt, <leatherworks:bark_oak> * 3)) {
        evt.cancellationResult = "SUCCESS";
        evt.cancel();
	}
});
//Dropping items
function dropItemWood(evt as PlayerInteractBlockEvent, stack as IItemStack) as bool {
    if (evt.world.remote)
        return true;

    // dummy entity to drop the item with
    val dummy = <entity:minecraft:arrow>.createEntity(evt.world);
    dummy.posX = evt.x as double + 0.5;
    dummy.posY = evt.y as double + 1.5;
    dummy.posZ = evt.z as double + 0.5;

    var log as IBlockPattern = evt.block;
    for log2, blockArray in logDuals {
        if(log has blockArray[1].block)
            evt.world.setBlockState(blockArray[0], crafttweaker.util.Position3f.create(evt.x, evt.y, evt.z).asBlockPos());
    }
    evt.damageItem(1);
    dummy.dropItem(stack);
}


