trigger OneMoreTrigger on Stock__c (before insert, before update, after delete) {

    if(Trigger.isinsert && Trigger.isbefore) {
         OneMoreTriggerHandler.OneMoreTriggerHandlerMethod();
         //other statements 
    }
    
    // my testing my world
    
    if(Trigger.isupdate && Trigger.isAfter) {
        /// OneMoreTriggerHandler.OneMoreTriggerHandlerUpdateMethod();
    }
    
    if(Trigger.isdelete && Trigger.isAfter) {
        // call your method for delete operation
        OneMoreTriggerHandler.DeleteHandlerMethod();
    }
   
}