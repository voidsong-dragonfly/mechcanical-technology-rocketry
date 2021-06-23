/*
//Import
import crafttweaker.event.EntityLivingDamageEvent;

  
  
//Robits should not be able to get electrical damage
events.onEntityLivingDamage(function(evt as EntityLivingDamageEvent) as void {
    if (evt.entityLivingBase.definition.id == <entity:mekanism:robit>.id) {
        if (evt.damageSource.getDamageType() == <damageSource:ieWireShock>.getDamageType() || evt.damageSource.getDamageType() == <damageSource:ieRazorWire>.getDamageType() || evt.damageSource.getDamageType() == <damageSource:ieRazorShock>.getDamageType()) {
            evt.amount = 0;
            evt.cancel();
            return;
        }
    }
});
*/
