public class VotingPoll {
  @AuraEnabled
    public static List<VamriTech_Employees__c> getVamriTechEmployeeValue(String recordId){
        List<VamriTech_Employees__c> voteList = new List<VamriTech_Employees__c>([select id,Name,Capture_Image__c from VamriTech_Employees__c]);
        return voteList;
    } 
 
  /*
    @AuraEnabled
    public static void createEmp(VamriTech_Employees__c emp) {
        insert emp;
    }
    @AuraEnabled
    public static List<VamriTech_Employees__c> displayEmp() {
        return [SELECT Id,name,Vote__c from VamriTech_Employees__c];
    }   */
}