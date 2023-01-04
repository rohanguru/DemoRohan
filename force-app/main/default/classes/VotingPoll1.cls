public class VotingPoll1 {
  @AuraEnabled
    public static List<VamriTech_Employees__c> getVamriTechEmploye(){
        List<VamriTech_Employees__c> voteList = new List<VamriTech_Employees__c>([select id,Name,Vote__c from VamriTech_Employees__c]);
        return voteList;
    }
    @AuraEnabled
    public static VamriTech_Employees__c saveRecord(VamriTech_Employees__c recordDetail){
        upsert recordDetail;
        return recordDetail;
    }
    @AuraEnabled
    public static List<ContentVersion> getContents(string employeeId) {
        Set<Id> contentIds = new Set<Id>();
        //SOQL query to get pictures from VamriTechEmployee object
        for (ContentDocumentLink cont :[SELECT ContentDocumentId, LinkedEntityId FROM ContentDocumentLink where
                                        LinkedEntityId in ( SELECT Id FROM VamriTech_Employees__c where Id =: employeeId)]) {
               contentIds.add(cont.ContentDocumentId);
           }
        //Below Query will return the latest image Id uploaded in files
        return [SELECT Id,Title FROM ContentVersion WHERE ContentDocumentId IN :contentIds LIMIT 1];
    }
}