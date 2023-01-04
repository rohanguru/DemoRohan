@RestResource(urlMapping='/PutWebService/*')
global class PutWebService {
   @HttpPut
    global static String doPut(String name){
        RestRequest req=RestContext.request;
        String accountId=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account account =new Account(Id=accountId);
        account.Name=name;
        update account;
        return account.Id;
    }
}