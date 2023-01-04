public class ContactController {
@AuraEnabled
    public static List<Contact> getContacts(){
        List<Contact> cntList = new List<Contact>();
        
        cntList = [SELECT Id, Name, Phone FROM Contact LIMIT 10];
        
        return cntList;
    }
}