public with sharing class VotingClass2 {
  @AuraEnabled
    public static Id saveDataToServer(Decimal P1,Decimal P2,Decimal P3,Decimal P4,Decimal P5,Decimal P6,Decimal P7,Decimal P8,Decimal P9,Decimal P10,Decimal P11,Decimal P12,Decimal P13,Decimal P14,Decimal P15,Decimal P16,Decimal P17,Decimal P18,Decimal P19,Decimal P20,Decimal P21,Decimal P22) {
        // create a new custom object record or update an existing one
        // use the input values to set the fields on the record
        Voting_Count__c customRecord = new Voting_Count__c();
        customRecord.Rohan_Voting_Count__c = P1;
        customRecord.Snehdeep_Voting_Count__c = P2;
        customRecord.Anil_Voting_Count__c =P3; 
        customRecord.Praneeth_Voting_Count__c=P4;
        customRecord.Swati_Voting_Count__c=P5;
        customRecord.Shweta_Voting_Count__c=P6;
        customRecord.Asifa_Voting_Count__c=P7;
        customRecord.Tarun_Voting_Count__c=P8;
        customRecord.Ranjith_Voting_Count__c=P9;
        customRecord.Shikha_Voting_Count__c=P10;
        customRecord.Amrutha_Voting_Count__c=P11;
        customRecord.Pavani_Voting_Count__c=P12;
        customRecord.Bhavani_Voting_Count__c=P13;
        customRecord.Sukanya_Voting_Count__c=P14;
        customRecord.Naresh_Voting_Count__c=P15;
        customRecord.Swami_Voting_Count__c=P16;
        customRecord.Lavanya_Voting_Count__c=P17;
        customRecord.Durga_Voting_Count__c=P18;
        customRecord.Haritha_Voting_Count__c=P19;
        customRecord.Nikhilesh_Voting_Count__c=P20;
        customRecord.Rajitha_Voting_Count__c=P21;
        customRecord.Sravani_Voting_Count__c=P22;
        
       // customRecord.Name = recordName;
        insert customRecord;
        return customRecord.Id;
    }
}