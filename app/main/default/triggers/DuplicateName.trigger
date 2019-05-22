trigger DuplicateName on Stock__c (before insert) {
 
  
  // Inserting name with appending "Duplicate Name" at the end
  /*List<Stock__c > CurrentStockList = [Select id,Name from Stock__c ];  
  for (Stock__c newStock : Trigger.new) {
      for(Stock__c stc: CurrentStockList){ 
          if(stc.name == newStock.name) {
               newStock.Name = newStock.Name + 'Duplicate Name';        
          }
      }
  } */
  
  // Giving error when duplicate name found
  
  List<Stock__c > CurrentStockList = [Select id,Name from Stock__c ];  
  for (Stock__c newStock : Trigger.new) {
      for(Stock__c stc: CurrentStockList){ 
          if(stc.name == newStock.name) {
               newStock.Name.addError('Duplicate record on this User Name');        
          }
      }
  }
  
}