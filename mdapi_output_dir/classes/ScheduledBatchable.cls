global class ScheduledBatchable implements schedulable {
    global void execute (SchedulableContext SC){
       BatchApexExample b=new BatchApexExample();
        Database.executeBatch(b);
    }
}