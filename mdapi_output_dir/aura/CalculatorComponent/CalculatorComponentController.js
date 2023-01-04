({
    Add : function(component, event, helper) {
        var a = component.get("v.num1");
        var b = component.get("v.num2");
        var total = parseInt(a) + parseInt(b);
        component.set("v.total",total);
        component.set("v.isAdd",true);
        component.set("v.isSub",false);
        component.set("v.isMul",false);
        component.set("v.isDiv",false);
    },
    
    Sub : function(component, event, helper) {
        var a = component.get("v.num1");
        var b = component.get("v.num2");
        var total = parseInt(a) - parseInt(b);
        component.set("v.total",total);
        component.set("v.isAdd",false);
        component.set("v.isSub",true);
        component.set("v.isMul",false);
        component.set("v.isDiv",false);
    },
    
    Mul : function(component, event, helper) {
        var a = component.get("v.num1");
        var b = component.get("v.num2");
        var total = parseInt(a) * parseInt(b);
        component.set("v.total",total);
        component.set("v.isAdd",false);
        component.set("v.isSub",false);
        component.set("v.isMul",true);
        component.set("v.isDiv",false);
    },
    
    Divi : function(component, event, helper) {
        var a = component.get("v.num1");
        var b = component.get("v.num2");
        var total = parseInt(a) / parseInt(b);
        component.set("v.total",total);
        component.set("v.isAdd",false);
        component.set("v.isSub",false);
        component.set("v.isMul",false);
        component.set("v.isDiv",true);
    },

    
    Clear : function(component, event, helper) {
        component.set("v.total",0);
        component.set("v.num1",0);
        component.set("v.num2",0);
        component.set("v.isAdd",false);
        component.set("v.isSub",false);
        component.set("v.isMul",false);
         component.set("v.isDiv",false);
    }
})