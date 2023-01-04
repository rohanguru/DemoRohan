@RestResource(urlMapping='/Account/*')
global with sharing class RestWebService {
@HttpGet
    global static Account doGet(){
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        String accountId=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        system.debug('account id1= '+accountId);
       Account result=[SELECT Id,Name,Phone,website FROM Account WHERE Id= :accountId];
        return result;
    }
}