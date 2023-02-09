({
    Savecont : function(component, event, helper) {
        var action=component.get("c.createContact");
       
        action.setParams({'contObj':component.get('v.contactObj')});
        
        
        action.setCallback(this,function(data){
            component.set('v.contactId',data.getReturnValue())
        });
        
        $A.enqueueAction(action);
    },
    doInit : function(component, event, helper) {
        var action = component.get('c.createContact2');
        action.setParams({
            AccountId : component.get('v.recordId'),
        });
        action.setCallback(this, function(response){
            var responseValue = response.getReturnValue();
            console.log('responseValue ', responseValue);
            component.set('v.contactList', responseValue);
        });
        $A.enqueueAction(action, false);
		
	},
    doRedirect : function(component, event, helper) {
       alert('Hi');
        var eve = event.getSource();//calling event.getSource() gets us a reference to the specific <lightning:button> that was clicked.
        var id = eve.get('v.name');
        var navEvt = $A.get("e.force:navigateToSObject"); //Navigates to an sObject record specified by recordId
        navEvt.setParams({
            "recordId": id,
            "slideDevName": "related"
        });
        navEvt.fire();
    },
})