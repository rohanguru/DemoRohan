public class AccToContact {
  @Auraenabled
    public static string createContact(Contact contObj){
        system.debug('Contact::'+contObj.firstName);
        insert contObj;
        return contObj.Id;
    }
   @AuraEnabled
    public static List<Account> createContact2(string recordId){
  List<Account> contactList= [select id,Name,Phone from Account Where Id =: recordId];
      return contactList;
    } 
     
}