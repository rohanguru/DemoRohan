Trigger simpleTrigger on Account (after insert) {
   for (Account a : Trigger.new) {
       
   Contact[] cons = [SELECT LastName FROM Contact
                     WHERE AccountId IN :Trigger.new];
}
}