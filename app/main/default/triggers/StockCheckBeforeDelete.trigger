trigger StockCheckBeforeDelete on Stock__c (before Delete) {

    
    // before deleting the stock, case to be created.
    List<Case> cases = new List<Case>();
    List<Stock__c> stc = new List<Stock__c>();
    system.debug('before delete block');
    for(Stock__c stcToDelete:trigger.old){
        system.debug('inside delete block');
        stc.add(stcToDelete);
        if(stcToDelete.Stock_in_Hand__c > 0) {
            system.debug('Has more then zero stocks in hand');
            //stcToDelete.adderror('Stock Cannot be deleted');
            Case c = new Case();
            c.Subject = 'Deleting Stock with more then 0 quantity in hand';
            c.Stock__c = stcToDelete.Id;
            c.Status = 'New';
            c.Origin = 'Phone';
            cases.add(c);
        }
        system.debug('case records lenght'+cases.size());
        insert cases;
        //delete stc;
        
    }
}