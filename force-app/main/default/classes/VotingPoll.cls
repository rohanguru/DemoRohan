public class VotingPoll {
  @AuraEnabled
  /*  public static List<VamriTech_Employees__c> getVamriTechEmployeeValue(String recordId){
        List<VamriTech_Employees__c> voteList = new List<VamriTech_Employees__c>([select id,Name,Capture_Image__c from VamriTech_Employees__c]);
        return voteList;
    } */
 
  /*
    @AuraEnabled
    public static void createEmp(VamriTech_Employees__c emp) {
        insert emp;
    }
    @AuraEnabled
    public static List<VamriTech_Employees__c> displayEmp() {
        return [SELECT Id,name,Vote__c from VamriTech_Employees__c];
    }   */
 /*   Public static void createRecord(Voting_Count__c fieldobj){
        try{
            
            insert fieldobj; 
             
        }catch(Exception e){
            System.debug(e.getMessage());
            System.debug(e.getLineNumber());
        }
        
    }*/
     public static void saveAllEmployee(string allEmployees){ 
        System.debug('allEmployees '+allEmployees); 
        //Sine all Employee is strigified for its array of object, hence needs deserialize into object form 
        List<Voting_Count__c> employeeDetails = (List<Voting_Count__c>)JSON.deserialize(allEmployees,List<Voting_Count__c>.class);
     System.debug('employeeDetails '+employeeDetails); 
        upsert employeeDetails; 
    //     Voting_Count__c v = new Voting_Count__c(); 
    //      for(Voting_Count__c vm :  [select id, from VamriTech_Employee__c WHERE Id =:employeeDetails])
    } 
}