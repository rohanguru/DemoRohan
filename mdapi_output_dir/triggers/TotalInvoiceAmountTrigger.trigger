trigger TotalInvoiceAmountTrigger on Invoice__c  (after insert,after update) {
  
        if((Trigger.isInsert && Trigger.isAfter)||(Trigger.isUpdate && Trigger.isAfter)){
            InvoiceAmountHandler.demoHandlerMethod(Trigger.new);
        }{
  
        if((Trigger.isInsert && Trigger.isAfter)||(Trigger.isUpdate && Trigger.isAfter)){
         InvoiceAmountHandler.handlerMethod(Trigger.new);
        }
       
    }
       
    }