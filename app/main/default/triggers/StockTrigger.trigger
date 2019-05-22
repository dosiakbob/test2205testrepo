trigger StockTrigger on Stock__c (before insert, before delete) {
    
    //This is the original trigger called Trigger.trigger
//We are calling the trigger fact framework byusing the handler class and not writing any logic in the trigger itself.
//Instantiate StockItemHandler

//Before Insert Handling
if(Trigger.isInsert && Trigger.isBefore) {
    InsertTriggerHandlerClass.InsertTriggerHandlerMethod();
}

//Before Delete Handling
if(Trigger.isDelete && Trigger.isBefore) {
    DeleteTriggerHandlerClass.DeleteTriggerHandlerMethod();
}

}