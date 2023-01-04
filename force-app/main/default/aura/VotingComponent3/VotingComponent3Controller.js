({
	handle : function(component, event, helper) {
		 var action = component.get('c.getVamriTechEmployeeValue');
        action.setParams({
        });
        action.setCallback(this, function(response){
            var responseValue = response.getReturnValue();
            console.log('responseValue ', responseValue);
            component.set('v.employeeList', responseValue);
        });
        $A.enqueueAction(action, false);
		
	},
    Submit : function(component, event, helper) {
    component.set("v.isSubmit");
    },
    increment: function(component, event, helper){ 
        var count = parseInt(component.get("v.num1")+1);
       component.set("v.num1", count); 
        recordId:count;
      }
})