//Import
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import crafttweaker.block.IBlockPattern;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerLeftClickBlockEvent;
import crafttweaker.event.PlayerInteractEvent;
import crafttweaker.event.EntityLivingEquipmentChangeEvent;
import crafttweaker.entity.IEntityEquipmentSlot;

       

//Log interactions
//Logs that can be converted to debarked variants, and their debarked variants
static logDuals  as IBlockState[][string] = {"oakx": [<blockstate:debark:debarked_log_minecraft_log:variant=0,axis=x> as IBlockState, <blockstate:minecraft:log:variant=oak,axis=x> as IBlockState],
                                             "oaky": [<blockstate:debark:debarked_log_minecraft_log:variant=0,axis=y> as IBlockState, <blockstate:minecraft:log:variant=oak,axis=y> as IBlockState],
                                             "oakz": [<blockstate:debark:debarked_log_minecraft_log:variant=0,axis=z> as IBlockState, <blockstate:minecraft:log:variant=oak,axis=x> as IBlockState],
                                             "sprucex": [<blockstate:debark:debarked_log_minecraft_log:variant=1,axis=x> as IBlockState, <blockstate:minecraft:log:variant=spruce,axis=x> as IBlockState],
                                             "sprucey": [<blockstate:debark:debarked_log_minecraft_log:variant=1,axis=y> as IBlockState, <blockstate:minecraft:log:variant=spruce,axis=y> as IBlockState],
                                             "sprucez": [<blockstate:debark:debarked_log_minecraft_log:variant=1,axis=z> as IBlockState, <blockstate:minecraft:log:variant=spruce,axis=z> as IBlockState],
                                             "birchx": [<blockstate:debark:debarked_log_minecraft_log:variant=2,axis=x> as IBlockState, <blockstate:minecraft:log:variant=birch,axis=x> as IBlockState],
                                             "birchy": [<blockstate:debark:debarked_log_minecraft_log:variant=2,axis=y> as IBlockState, <blockstate:minecraft:log:variant=birch,axis=y> as IBlockState],
                                             "birchz": [<blockstate:debark:debarked_log_minecraft_log:variant=2,axis=z> as IBlockState, <blockstate:minecraft:log:variant=birch,axis=z> as IBlockState],
                                             "junglex": [<blockstate:debark:debarked_log_minecraft_log:variant=3,axis=x> as IBlockState, <blockstate:minecraft:log:variant=jungle,axis=x> as IBlockState],
                                             "jungley": [<blockstate:debark:debarked_log_minecraft_log:variant=3,axis=y> as IBlockState, <blockstate:minecraft:log:variant=jungle,axis=y> as IBlockState],
                                             "junglez": [<blockstate:debark:debarked_log_minecraft_log:variant=3,axis=z> as IBlockState, <blockstate:minecraft:log:variant=jungle,axis=z> as IBlockState],
                                             "acaciax": [<blockstate:debark:debarked_log_minecraft_log2:variant=0,axis=x> as IBlockState, <blockstate:minecraft:log2:variant=acacia,axis=x> as IBlockState],
                                             "acaciay": [<blockstate:debark:debarked_log_minecraft_log2:variant=0,axis=y> as IBlockState, <blockstate:minecraft:log2:variant=acacia,axis=y> as IBlockState],
                                             "acaciaz": [<blockstate:debark:debarked_log_minecraft_log2:variant=0,axis=z> as IBlockState, <blockstate:minecraft:log2:variant=acacia,axis=z> as IBlockState],
                                             "darkOakx": [<blockstate:debark:debarked_log_minecraft_log2:variant=1,axis=x> as IBlockState, <blockstate:minecraft:log2:variant=dark_oak,axis=x> as IBlockState],
                                             "darkOaky": [<blockstate:debark:debarked_log_minecraft_log2:variant=1,axis=y> as IBlockState, <blockstate:minecraft:log2:variant=dark_oak,axis=y> as IBlockState],
                                             "darkOakz": [<blockstate:debark:debarked_log_minecraft_log2:variant=1,axis=z> as IBlockState, <blockstate:minecraft:log2:variant=dark_oak,axis=z> as IBlockState],
                                             "firx": [<blockstate:debark:debarked_log_biomesoplenty_log_0:variant=3,axis=x> as IBlockState, <blockstate:biomesoplenty:log_0:variant=fir,axis=x> as IBlockState],
                                             "firy": [<blockstate:debark:debarked_log_biomesoplenty_log_0:variant=3,axis=y> as IBlockState, <blockstate:biomesoplenty:log_0:variant=fir,axis=y> as IBlockState],
                                             "firz": [<blockstate:debark:debarked_log_biomesoplenty_log_0:variant=3,axis=z> as IBlockState, <blockstate:biomesoplenty:log_0:variant=fir,axis=z> as IBlockState],
                                             "mangrovex": [<blockstate:debark:debarked_log_biomesoplenty_log_1:variant=2,axis=x> as IBlockState, <blockstate:biomesoplenty:log_1:variant=mangrove,axis=x> as IBlockState],
                                             "mangrovey": [<blockstate:debark:debarked_log_biomesoplenty_log_1:variant=2,axis=y> as IBlockState, <blockstate:biomesoplenty:log_1:variant=mangrove,axis=y> as IBlockState],
                                             "mangrovez": [<blockstate:debark:debarked_log_biomesoplenty_log_1:variant=2,axis=z> as IBlockState, <blockstate:biomesoplenty:log_1:variant=mangrove,axis=z> as IBlockState],
                                             "palmx": [<blockstate:debark:debarked_log_biomesoplenty_log_1:variant=3,axis=x> as IBlockState, <blockstate:biomesoplenty:log_1:variant=palm,axis=x> as IBlockState],
                                             "palmy": [<blockstate:debark:debarked_log_biomesoplenty_log_1:variant=3,axis=y> as IBlockState, <blockstate:biomesoplenty:log_1:variant=palm,axis=y> as IBlockState],
                                             "palmz": [<blockstate:debark:debarked_log_biomesoplenty_log_1:variant=3,axis=z> as IBlockState, <blockstate:biomesoplenty:log_1:variant=palm,axis=z> as IBlockState],
                                             "cypressx": [<blockstate:debark:debarked_log_biomesoplenty_log_2:variant=1,axis=x> as IBlockState, <blockstate:biomesoplenty:log_2:variant=willow,axis=x> as IBlockState],
                                             "cypressy": [<blockstate:debark:debarked_log_biomesoplenty_log_2:variant=1,axis=y> as IBlockState, <blockstate:biomesoplenty:log_2:variant=willow,axis=y> as IBlockState],
                                             "cypressz": [<blockstate:debark:debarked_log_biomesoplenty_log_2:variant=1,axis=z> as IBlockState, <blockstate:biomesoplenty:log_2:variant=willow,axis=z> as IBlockState],
                                             "pinex": [<blockstate:debark:debarked_log_biomesoplenty_log_2:variant=2,axis=x> as IBlockState, <blockstate:biomesoplenty:log_2:variant=pine,axis=x> as IBlockState],
                                             "piney": [<blockstate:debark:debarked_log_biomesoplenty_log_2:variant=2,axis=y> as IBlockState, <blockstate:biomesoplenty:log_2:variant=pine,axis=y> as IBlockState],
                                             "pinez": [<blockstate:debark:debarked_log_biomesoplenty_log_2:variant=2,axis=z> as IBlockState, <blockstate:biomesoplenty:log_2:variant=pine,axis=z> as IBlockState],
                                             "hellbarkx": [<blockstate:debark:debarked_log_biomesoplenty_log_2:variant=3,axis=x> as IBlockState, <blockstate:biomesoplenty:log_2:variant=hellbark,axis=x> as IBlockState],
                                             "hellbarky": [<blockstate:debark:debarked_log_biomesoplenty_log_2:variant=3,axis=y> as IBlockState, <blockstate:biomesoplenty:log_2:variant=hellbark,axis=y> as IBlockState],
                                             "hellbarkz": [<blockstate:debark:debarked_log_biomesoplenty_log_2:variant=3,axis=z> as IBlockState, <blockstate:biomesoplenty:log_2:variant=hellbark,axis=z> as IBlockState],
                                             "jacarandax": [<blockstate:debark:debarked_log_biomesoplenty_log_3:variant=0,axis=x> as IBlockState, <blockstate:biomesoplenty:log_3:variant=jacaranda,axis=x> as IBlockState],
                                             "jacaranday": [<blockstate:debark:debarked_log_biomesoplenty_log_3:variant=0,axis=y> as IBlockState, <blockstate:biomesoplenty:log_3:variant=jacaranda,axis=y> as IBlockState],
                                             "jacarandaz": [<blockstate:debark:debarked_log_biomesoplenty_log_3:variant=0,axis=z> as IBlockState, <blockstate:biomesoplenty:log_3:variant=jacaranda,axis=z> as IBlockState],
                                             "mahoganyx": [<blockstate:debark:debarked_log_biomesoplenty_log_3:variant=1,axis=x> as IBlockState, <blockstate:biomesoplenty:log_3:variant=mahogany,axis=x> as IBlockState],
                                             "mahoganyy": [<blockstate:debark:debarked_log_biomesoplenty_log_3:variant=1,axis=y> as IBlockState, <blockstate:biomesoplenty:log_3:variant=mahogany,axis=y> as IBlockState],
                                             "mahoganyx": [<blockstate:debark:debarked_log_biomesoplenty_log_3:variant=1,axis=z> as IBlockState, <blockstate:biomesoplenty:log_3:variant=mahogany,axis=z> as IBlockState],
                                             "ebonyx": [<blockstate:debark:debarked_log_biomesoplenty_log_3:variant=2,axis=x> as IBlockState, <blockstate:biomesoplenty:log_3:variant=ebony,axis=x> as IBlockState],
                                             "ebonyy": [<blockstate:debark:debarked_log_biomesoplenty_log_3:variant=2,axis=y> as IBlockState, <blockstate:biomesoplenty:log_3:variant=ebony,axis=y> as IBlockState],
                                             "ebonyz": [<blockstate:debark:debarked_log_biomesoplenty_log_3:variant=2,axis=z> as IBlockState, <blockstate:biomesoplenty:log_3:variant=ebony,axis=z> as IBlockState],
                                             "deadx": [<blockstate:debark:debarked_log_biomesoplenty_log_4:variant=1,axis=x> as IBlockState, <blockstate:biomesoplenty:log_4:variant=dead,axis=x> as IBlockState],
                                             "deady": [<blockstate:debark:debarked_log_biomesoplenty_log_4:variant=1,axis=y> as IBlockState, <blockstate:biomesoplenty:log_4:variant=dead,axis=y> as IBlockState],
                                             "deadz": [<blockstate:debark:debarked_log_biomesoplenty_log_4:variant=1,axis=z> as IBlockState, <blockstate:biomesoplenty:log_4:variant=dead,axis=z> as IBlockState],
                                             "aspenx": [<blockstate:debark:debarked_log_pvj_log_aspen:variant=0,axis=x> as IBlockState, <blockstate:pvj:log_aspen:axis=x> as IBlockState],
                                             "aspeny": [<blockstate:debark:debarked_log_pvj_log_aspen:variant=0,axis=y> as IBlockState, <blockstate:pvj:log_aspen:axis=y> as IBlockState],
                                             "aspenz": [<blockstate:debark:debarked_log_pvj_log_aspen:variant=0,axis=z> as IBlockState, <blockstate:pvj:log_aspen:axis=z> as IBlockState],
                                             "baobabx": [<blockstate:debark:debarked_log_pvj_log_baobab:variant=0,axis=x> as IBlockState, <blockstate:pvj:log_baobab:axis=x> as IBlockState],
                                             "baobaby": [<blockstate:debark:debarked_log_pvj_log_baobab:variant=0,axis=y> as IBlockState, <blockstate:pvj:log_baobab:axis=y> as IBlockState],
                                             "baobabz": [<blockstate:debark:debarked_log_pvj_log_baobab:variant=0,axis=z> as IBlockState, <blockstate:pvj:log_baobab:axis=z> as IBlockState],
                                             "cherryBlossomx": [<blockstate:debark:debarked_log_pvj_log_cherry_blossom:variant=0,axis=x> as IBlockState, <blockstate:pvj:log_cherry_blossom:axis=x> as IBlockState],
                                             "cherryBlossomy": [<blockstate:debark:debarked_log_pvj_log_cherry_blossom:variant=0,axis=y> as IBlockState, <blockstate:pvj:log_cherry_blossom:axis=y> as IBlockState],
                                             "cherryBlossomz": [<blockstate:debark:debarked_log_pvj_log_cherry_blossom:variant=0,axis=z> as IBlockState, <blockstate:pvj:log_cherry_blossom:axis=z> as IBlockState],
                                             "cottonwoodx": [<blockstate:debark:debarked_log_pvj_log_cottonwood:variant=0,axis=x> as IBlockState, <blockstate:pvj:log_cottonwood:axis=x> as IBlockState],
                                             "cottonwoody": [<blockstate:debark:debarked_log_pvj_log_cottonwood:variant=0,axis=y> as IBlockState, <blockstate:pvj:log_cottonwood:axis=y> as IBlockState],
                                             "cottonwoodz": [<blockstate:debark:debarked_log_pvj_log_cottonwood:variant=0,axis=z> as IBlockState, <blockstate:pvj:log_cottonwood:axis=z> as IBlockState],
                                             "firPVJx": [<blockstate:debark:debarked_log_pvj_log_fir:variant=0,axis=x> as IBlockState, <blockstate:pvj:log_fir:axis=x> as IBlockState],
                                             "firPVJy": [<blockstate:debark:debarked_log_pvj_log_fir:variant=0,axis=y> as IBlockState, <blockstate:pvj:log_fir:axis=y> as IBlockState],
                                             "firPVJz": [<blockstate:debark:debarked_log_pvj_log_fir:variant=0,axis=z> as IBlockState, <blockstate:pvj:log_fir:axis=z> as IBlockState],
                                             "jacarandaPVJx": [<blockstate:debark:debarked_log_pvj_log_jacaranda:variant=0,axis=x> as IBlockState, <blockstate:pvj:log_jacaranda:axis=x> as IBlockState],
                                             "jacarandaPVJy": [<blockstate:debark:debarked_log_pvj_log_jacaranda:variant=0,axis=y> as IBlockState, <blockstate:pvj:log_jacaranda:axis=y> as IBlockState],
                                             "jacarandaPVJz": [<blockstate:debark:debarked_log_pvj_log_jacaranda:variant=0,axis=z> as IBlockState, <blockstate:pvj:log_jacaranda:axis=z> as IBlockState],
                                             "juniperx": [<blockstate:debark:debarked_log_pvj_log_juniper:variant=0,axis=x> as IBlockState, <blockstate:pvj:log_juniper:axis=x> as IBlockState],
                                             "junipery": [<blockstate:debark:debarked_log_pvj_log_juniper:variant=0,axis=y> as IBlockState, <blockstate:pvj:log_juniper:axis=y> as IBlockState],
                                             "juniperz": [<blockstate:debark:debarked_log_pvj_log_juniper:variant=0,axis=z> as IBlockState, <blockstate:pvj:log_juniper:axis=z> as IBlockState],
                                             "mangrovePVJx": [<blockstate:debark:debarked_log_pvj_log_mangrove:variant=0,axis=x> as IBlockState, <blockstate:pvj:log_mangrove:axis=x> as IBlockState],
                                             "mangrovePVJy": [<blockstate:debark:debarked_log_pvj_log_mangrove:variant=0,axis=y> as IBlockState, <blockstate:pvj:log_mangrove:axis=y> as IBlockState],
                                             "mangrovePVJz": [<blockstate:debark:debarked_log_pvj_log_mangrove:variant=0,axis=z> as IBlockState, <blockstate:pvj:log_mangrove:axis=z> as IBlockState],
                                             "maplex": [<blockstate:debark:debarked_log_pvj_log_maple:variant=0,axis=x> as IBlockState, <blockstate:pvj:log_maple:axis=x> as IBlockState],
                                             "mapley": [<blockstate:debark:debarked_log_pvj_log_maple:variant=0,axis=y> as IBlockState, <blockstate:pvj:log_maple:axis=y> as IBlockState],
                                             "maplez": [<blockstate:debark:debarked_log_pvj_log_maple:variant=0,axis=z> as IBlockState, <blockstate:pvj:log_maple:axis=z> as IBlockState],
                                             "palmPVJx": [<blockstate:debark:debarked_log_pvj_log_palm:variant=0,axis=x> as IBlockState, <blockstate:pvj:log_palm:axis=x> as IBlockState],
                                             "palmPVJy": [<blockstate:debark:debarked_log_pvj_log_palm:variant=0,axis=y> as IBlockState, <blockstate:pvj:log_palm:axis=y> as IBlockState],
                                             "palmPVJz": [<blockstate:debark:debarked_log_pvj_log_palm:variant=0,axis=z> as IBlockState, <blockstate:pvj:log_palm:axis=z> as IBlockState],
                                             "pinePVJx": [<blockstate:debark:debarked_log_pvj_log_pine:variant=0,axis=x> as IBlockState, <blockstate:pvj:log_pine:axis=x> as IBlockState],
                                             "pinePVJy": [<blockstate:debark:debarked_log_pvj_log_pine:variant=0,axis=y> as IBlockState, <blockstate:pvj:log_pine:axis=y> as IBlockState],
                                             "pinePVJz": [<blockstate:debark:debarked_log_pvj_log_pine:variant=0,axis=z> as IBlockState, <blockstate:pvj:log_pine:axis=z> as IBlockState],
                                             "redwoodx": [<blockstate:debark:debarked_log_pvj_log_redwood:variant=0,axis=x> as IBlockState, <blockstate:pvj:log_redwood:axis=x> as IBlockState],
                                             "redwoody": [<blockstate:debark:debarked_log_pvj_log_redwood:variant=0,axis=y> as IBlockState, <blockstate:pvj:log_redwood:axis=y> as IBlockState],
                                             "redwoodz": [<blockstate:debark:debarked_log_pvj_log_redwood:variant=0,axis=z> as IBlockState, <blockstate:pvj:log_redwood:axis=z> as IBlockState],
                                             "willowx": [<blockstate:debark:debarked_log_pvj_log_willow:variant=0,axis=x> as IBlockState, <blockstate:pvj:log_willow:axis=x> as IBlockState],
                                             "willowy": [<blockstate:debark:debarked_log_pvj_log_willow:variant=0,axis=y> as IBlockState, <blockstate:pvj:log_willow:axis=y> as IBlockState],
                                             "willowz": [<blockstate:debark:debarked_log_pvj_log_willow:variant=0,axis=z> as IBlockState, <blockstate:pvj:log_willow:axis=z> as IBlockState],
                                             "olivex": [<blockstate:debark:debarked_log_rustic_log:variant=0,axis=x> as IBlockState, <blockstate:rustic:log:variant=olive,axis=x> as IBlockState],
                                             "olivey": [<blockstate:debark:debarked_log_rustic_log:variant=0,axis=y> as IBlockState, <blockstate:rustic:log:variant=olive,axis=y> as IBlockState],
                                             "olivez": [<blockstate:debark:debarked_log_rustic_log:variant=0,axis=z> as IBlockState, <blockstate:rustic:log:variant=olive,axis=z> as IBlockState],
                                             "ironwoodx": [<blockstate:debark:debarked_log_rustic_log:variant=1,axis=x> as IBlockState, <blockstate:rustic:log:variant=ironwood,axis=x> as IBlockState],
                                             "ironwoody": [<blockstate:debark:debarked_log_rustic_log:variant=1,axis=y> as IBlockState, <blockstate:rustic:log:variant=ironwood,axis=y> as IBlockState],
                                             "ironwoodz": [<blockstate:debark:debarked_log_rustic_log:variant=1,axis=z> as IBlockState, <blockstate:rustic:log:variant=ironwood,axis=z> as IBlockState]
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



//Fire!
//We're not holding a stick
function isNotMakingFire(player as IPlayer) as bool {
	return isNull(player) || isNull(player.currentItem) || (((player.currentItem.amount < 2) && !(player.currentItem.withAmount(1).matches(<minecraft:stick>.withAmount(1)))) && !(player.currentItem.withAmount(1).matches(<realistictorches:torch_lit>.withAmount(1))));
}
//Both Combined
function playerCannotMakeFire(evt as PlayerLeftClickBlockEvent) as bool {
	if (isNull(evt) || isNull(evt.world) || evt.canceled || evt.useItem == "DENY")
		return true;
	return isNotMakingFire(evt.player);
}
//Did we actually do it?
events.onPlayerLeftClickBlock(function(evt as PlayerLeftClickBlockEvent) as void {
	if (playerCannotMakeFire(evt))
		return;

    if (lightFire(evt)) {
        evt.cancellationResult = "SUCCESS";
        evt.cancel();
	}
});
//Dropping items
function lightFire(evt as PlayerLeftClickBlockEvent) as bool {
    if (evt.world.remote)
        return true;

    if(evt.world.getBlockState(crafttweaker.util.Position3f.create(evt.x, evt.y+1, evt.z).asBlockPos()) has <blockstate:minecraft:air>) {
        evt.world.setBlockState(<blockstate:minecraft:fire>, crafttweaker.util.Position3f.create(evt.x, evt.y+1, evt.z).asBlockPos());
        if((evt.player.currentItem.withAmount(1).matches(<realistictorches:torch_lit>.withAmount(1)))) {
            if (evt.item.amount > 1)
                evt.player.setItemToSlot(IEntityEquipmentSlot.mainHand(), evt.item.withAmount(evt.item.amount - 1));
            else
                evt.player.setItemToSlot(IEntityEquipmentSlot.mainHand(), null);
        } else {
            if (evt.item.amount > 2)
                evt.player.setItemToSlot(IEntityEquipmentSlot.mainHand(), evt.item.withAmount(evt.item.amount - 2));
            else
                evt.player.setItemToSlot(IEntityEquipmentSlot.mainHand(), null);
        }
        return true;
    }
    return false;
}


//Deal with diamond-scaled armor stuff
events.onEntityLivingEquipmentChange(function(evt as EntityLivingEquipmentChangeEvent) as void {
    if(isNull(evt.oldItem) || !isNull(evt.newItem)) 
        return;
    //Stacks from the event
    var oldStack = evt.oldItem.anyDamage();
    
    //Booleans for checks
    var stackCheck = evt.oldItem.isEmpty || isNull(evt.slot);
	if (evt.slot == IEntityEquipmentSlot.mainHand() || evt.slot == IEntityEquipmentSlot.offhand() || stackCheck)
		return;
		
    print(oldStack.matches(<minecraft:diamond_helmet>));
    //Place the correct armor in there
    if(oldStack.matches(<minecraft:diamond_helmet>)) 
        evt.entityLivingBase.setItemToSlot(IEntityEquipmentSlot.head(), <immersiveengineering:steel_armor_head>);
    if(oldStack.matches(<minecraft:diamond_chestplate>))
        evt.entityLivingBase.setItemToSlot(IEntityEquipmentSlot.chest(), <immersiveengineering:steel_armor_chest>);
    if(oldStack.matches(<minecraft:diamond_leggings>))
        evt.entityLivingBase.setItemToSlot(IEntityEquipmentSlot.legs(), <immersiveengineering:steel_armor_legs>);
    if(oldStack.matches(<minecraft:diamond_boots>))
        evt.entityLivingBase.setItemToSlot(IEntityEquipmentSlot.feet(), <immersiveengineering:steel_armor_feet>);
});
