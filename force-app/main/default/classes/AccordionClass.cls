public class AccordionClass {
 @AuraEnabled
    public static List<Contact> getContacts(){
        List<Contact> contactList = new List<Contact>();
        contactList = [SELECT Id, Name, Email, Phone, MailingStreet, MailingCity, MailingState, MailingPostalCode, MailingCountry From Contact LIMIT 10];
        return contactList;
    }
}