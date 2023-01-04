global class BatchApexExample implements Database.Batchable<SObject>{
    global Database.QueryLocator Start(Database.BatchableContext BC){
        String query='SELECT Id,Name FROM Account';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext BC, List<Account> accList)
    {
        for(Account acc:accList)
        {
            acc.Name=acc.Name + 'Vamritech';
        }
        try{
            update accList;
        }catch(Exception e){
            System.debug(e);
        }
    }
    global void finish(Database.BatchableContext BC){
        
    }
}