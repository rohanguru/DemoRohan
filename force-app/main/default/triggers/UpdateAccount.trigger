trigger UpdateAccount on Account (Before Update) {
     
    if(Trigger.isBefore){
    
        if(Trigger.isUpdate){
        
            User UserDetails = [select Id,Username from User where Id= :userinfo.getUserId()];
           String uName = UserDetails.Username;
            
            for(Account acc: Trigger.new){
                system.debug(acc.Description = uName);
            }
        }
    }    
}