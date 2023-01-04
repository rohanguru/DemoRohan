({
   doInit : function(cmp){
       var action = cmp.get("c.getContents");
         var picId = cmp.get("v.pictureList");
         action.setParams({
             employeeId : picId.Id
         })
       action.setCallback(this, function(response) {
           var state = response.getState();
           if(cmp.isValid() && state === 'SUCCESS') {
               cmp.set("v.contents", response.getReturnValue());
           }
       });
        $A.enqueueAction(action);
    },
    handleVote : function(component, event, helper) {
        component.set("v.count", component.get("v.count")+1);
    },
    decreaseVote : function(component, event, helper) {
        component.set("v.count", component.get("v.count")-1);
    }
})