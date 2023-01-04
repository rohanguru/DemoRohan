trigger OpportunityAmount on Opportunity (before update) {
    for (Opportunity oldOpp:Trigger.old){
        for(Opportunity newOpp:Trigger.new)
        {
            if(oldOpp.Id == newOpp.Id && oldOpp.Amount !=newOpp.Amount)
                newOpp.addError('Opportunnity Amount Cant be Modified');
        }
    }
}