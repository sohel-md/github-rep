public with sharing class LWCAccountsController {
    @AuraEnabled(Cacheable = true)
    public static list<Account> retriveAccs(String strAccName) {
        if(String.isEmpty(strAccName)){
            strAccName = '%' + strAccName + '%';
        list<Account> lstAccs = [SELECT  Id, Name, Industry, Phone, Type From Account WHERE Name LIKE :strAccName];
        return lstAccs; 
        }
        else {
            return [SELECT  Id, Name, Industry, Phone, Type From Account];
        }
        
        
        
    }
}