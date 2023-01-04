trigger ChangingName on Account (before update,After Update) {

    if(Trigger.isUpdate && Trigger.isBefore){
        for(Account acc:Trigger.new){
            system.debug('new name is' +acc.name);
        system.debug('new name is' +Trigger.oldMap.get(acc.Id).name);
        }
    }
}