trigger OpportunityTrigger on Opportunity (before Update) {


if(Trigger.isBefore && Trigger.isUpdate) {

OpportunityHandler.Opportunity(Trigger.new,Trigger.old);
  

}
}